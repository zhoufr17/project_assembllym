import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.util.ProgramSelection;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

public class assembllym extends GhidraScript {
    private JTextArea outputArea;
    private JButton printButton;
    private JButton addCommentButton;
    private JButton askChatGPTButton;
    private ArrayList<String> instructions = new ArrayList<>();
    private HashMap<String, String> instructionDetails = new HashMap<String, String>();
    private String apiKey = "INSERT API KEY";

    @Override
    public void run() throws Exception {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                createAndShowGUI();
            }
        });
    }

    private void createAndShowGUI() {
        JFrame frame = new JFrame("Project Assembllym");
        frame.setSize(700, 700);  
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        outputArea = new JTextArea();
        outputArea.setEditable(false);
	    outputArea.setLineWrap(true);       
        outputArea.setWrapStyleWord(true);   
        JScrollPane scrollPane = new JScrollPane(outputArea);
        frame.add(scrollPane, BorderLayout.CENTER);

        printButton = new JButton("Get Assembllym Opinion");
        printButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                printSelectedInstructions();
            }
        });

        addCommentButton = new JButton("Apply EOL Comment");
        addCommentButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                addEOLComment();
            }
        });

        askChatGPTButton = new JButton("Ask ChatGPT");
        askChatGPTButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                askChatGPT();
            }
        });

        JPanel buttonPanel = new JPanel();
        buttonPanel.setLayout(new GridLayout(1, 3));
        buttonPanel.add(printButton);
        buttonPanel.add(askChatGPTButton); 
        buttonPanel.add(addCommentButton);

        frame.add(buttonPanel, BorderLayout.SOUTH);
        frame.setVisible(true);
    }

    private void printSelectedInstructions() {
        ProgramSelection selection = currentSelection;
        if (selection == null || selection.isEmpty()) {
            outputArea.setText("No instructions selected.\n");
            return;
        }

        outputArea.setText("Welcome to Project Assembllym! Why read assembly when you don't have to? \n --------------------- \n");
        Listing listing = currentProgram.getListing();
        Address minAddress = selection.getMinAddress();
        Address maxAddress = selection.getMaxAddress();
        Instruction instruction = listing.getInstructionAt(minAddress);

        instructions.clear();
       
        
        while (instruction != null && instruction.getAddress().compareTo(maxAddress) <= 0) {
            instructions.add(instruction.toString());
            instruction = listing.getInstructionAfter(instruction.getAddress());
            
        }

        outputArea.append("Getting Highlighted Instructions... \n ------------------- \n");

        for (String instr : instructions) {
            outputArea.append(instr + "\n");
        }

         outputArea.append("\n _____________________________________________________________________________ \n");

        outputArea.setCaretPosition(outputArea.getDocument().getLength());
    }

    private void addEOLComment() {
        ProgramSelection selection = currentSelection;
        if (selection == null || selection.isEmpty()) {
            outputArea.setText("No instructions selected for adding comments.\n");
            return;
        }

        Listing listing = currentProgram.getListing();
        int transactionID = currentProgram.startTransaction("Add EOL Comment");

        try {
            Address minAddress = selection.getMinAddress();
            Address maxAddress = selection.getMaxAddress();
            Instruction instruction = listing.getInstructionAt(minAddress);

            int tempCounter = 0;
            ArrayList<String> temp = new ArrayList<String>();
            if (instructions.size() > 1) {
                temp = HARDCODESAUCE;
            } else {
                temp = singleHARDCODESAUCE;
            }
            while (instruction != null && instruction.getAddress().compareTo(maxAddress) <= 0) {
                instruction.setComment(CodeUnit.EOL_COMMENT, temp.get(tempCounter));
                instruction = listing.getInstructionAfter(instruction.getAddress());
                tempCounter += 1;
            }
            outputArea.append("\n Applied suggested EOL comment to selected instructions! \n");
            outputArea.setCaretPosition(outputArea.getDocument().getLength());
        } finally {
            currentProgram.endTransaction(transactionID, true);
        }
    }

    private void askChatGPT() {
        if (instructions.isEmpty()) {
            outputArea.setText("No instructions available to send to ChatGPT.\n");
            return;
        }

	outputArea.append("\nGetting ChatGPT Response...................\n");

        HashMap<String, String> response = callChatGPTApi(String.join(" ", instructions));
        outputArea.setCaretPosition(outputArea.getDocument().getLength());

        outputArea.append("\nSuggestions on what it means..... \n -------------------------------------------------- \n");

        for (String instr : instructions) {
             outputArea.append(instr + " -> " + response.get(instr) + "\n");
        }
         outputArea.append("\n _____________________________________________________________________________ \n");
    }

private HashMap<String, String> callChatGPTApi(String prompt) {
    String model = "gpt-4o-mini";

    HashMap<String, String>  finalRes = new HashMap<String, String>();

    try {
        URL url = new URL("https://api.openai.com/v1/chat/completions");

        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("POST");
        connection.setRequestProperty("Content-Type", "application/json");
        connection.setRequestProperty("Authorization", "Bearer " + apiKey);
        connection.setDoOutput(true);
	
	String promptEngineered = "For each line of the following assembly code in one sentence add a precise and accurate comment into the x86 assembly code describing what each line is doing in a string with each instruction as a key followed by a brief summary on its overall purpose with summary as key value where first key is startjson with no value and last key is endjson also with no value all put together in a single string with no new line characters delimited with the @ character after each key pair value: " + prompt;

        String jsonInputString = "{\"model\": \"" + model + "\", \"messages\": [{\"role\": \"user\", \"content\": \"" + promptEngineered + "\"}]}";

        try (OutputStream os = connection.getOutputStream()) {
            byte[] input = jsonInputString.getBytes("utf-8");
            os.write(input, 0, input.length);
        }

        int responseCode = connection.getResponseCode();
        if (responseCode == HttpURLConnection.HTTP_OK) {
            try (BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"))) {
                StringBuilder response = new StringBuilder();
                String responseLine;
                while ((responseLine = br.readLine()) != null) {
                    response.append(responseLine.trim());
                }
		finalRes = extractMessageFromJSONResponse(response.toString());
                return finalRes;
            }
        } 

    } catch (IOException e) {
        e.printStackTrace();
    }

    return finalRes;
}
   public HashMap<String, String> extractMessageFromJSONResponse(String response) {
	
	response = response.trim();

        int startIndex =  response.indexOf("startjson");
        int endIndex = response.indexOf("endjson");


	String sauce = response.substring(startIndex + 10, endIndex - 3);

 	String[] pairs = sauce.split("@");
	HashMap<String,String> updatedInstructions = new HashMap<String,String>();

	for (int i = 0; i < pairs.length; i ++ ) {
	    String pair = "";
	    if (pairs.length != instructions.size()) {
		pair = pairs[i+1];
	    } else {
		pair = pairs[i];
	    }
	    
	    String instr = instructions.get(i);
            String[] keyValue = pair.split(":", 2);

	    if (keyValue.length == 2) {
            	String value = keyValue[1].replace("\"", "").replace("\\", "").trim();
            	updatedInstructions.put(instr, value);
	    }
    }

       return updatedInstructions;

   }
}


