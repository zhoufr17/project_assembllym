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
import java.util.HashMap; // import the HashMap class
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.io.*;

public class test2 extends GhidraScript {
    private JTextArea outputArea;
    private JButton printButton;
    private JButton addCommentButton;
    private JButton askChatGPTButton; // New button to call ChatGPT
    ArrayList<String> instructions = new ArrayList<>();
    ArrayList<String> singleHARDCODESAUCE = new ArrayList<>(Arrays.asList("Move and sign-extend a 32-bit integer from memory address 0x00603130 to 64-bit register RDI"));
    ArrayList<String> HARDCODESAUCE = new ArrayList<>(Arrays.asList("Allocate 8 bytes on the stack by adjusting the stack pointer (RSP)", "Move the address 0x402050 into register EDX, likely as a parameter for the upcoming function call", "Move the address 0x4023b1 into register ESI, likely as another parameter", "Move the value 1 into register EDI, possibly indicating a flag or argument", "Clear the EAX register by XORing it with itself, setting it to zero", "Call the function at address 0x00400c30 with parameters set in EDX, ESI, and EDI", "Move the address 0x402310 into register ESI as an argument for another function call","Move the value 1 into register EDI, possibly reused as a flag or argument", "Clear the EAX register again, setting it to zero", "Call the function at address 0x00400c30 again, this time with different parameters", "Clear the EDI register by XORing it with itself, setting it to zero", "Call the function at address 0x00400fc0, possibly using the zeroed EDI as an argument", "Move the value 1 into register EDI for the next function call", "Move the address 0x402330 into register ESI, likely as another parameter", "Clear the EAX register again by XORing it with itself", "Call the function at address 0x00400c30 with the updated parameters", "Move the value 8 into register EDI, possibly as an exit status or argument", "Call the function at address 0x00400c60 with EDI set to 8", "Perform a no-operation (NOP) on the memory location pointed to by RAX, effectively a placeholder or alignment instruction"));
    HashMap<String, String> instructionDetails = new HashMap<String, String>();
    private String apiKey = "<insert api key here>";

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
        frame.setSize(700, 700);  // Increase size to fit the new button
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        outputArea = new JTextArea();
        outputArea.setEditable(false);
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
                addHelloWorldComment();
            }
        });

        // New button for ChatGPT API call
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
        buttonPanel.add(askChatGPTButton);  // Add the new button to the panel
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
            // instructionDetails.put(instruction.toString(), HARDCODESAUCE.get(counter));
            instruction = listing.getInstructionAfter(instruction.getAddress());
            
        }

        if (instructions.size() > 1) {
            int counter = 0;
            for (String instr : instructions) {
                instructionDetails.put(instr, HARDCODESAUCE.get(counter));
                counter += 1;
            }
        } else {
	       for (String instr : instructions) {
                instructionDetails.put(instr, singleHARDCODESAUCE.get(0));
            }
        }
       

        outputArea.append("Getting Highlighted Instructions... \n ------------------- \n");

        for (String instr : instructions) {
            outputArea.append(instr + "\n");
        }

         outputArea.append("\n _____________________________________________________________________________ \n");

        outputArea.setCaretPosition(outputArea.getDocument().getLength());
    }

    private void addHelloWorldComment() {
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


        // String response = callChatGPTApi(String.join("\n", instructions));
        // outputArea.append("\nChatGPT Response:\n" + response + "\n");
        // outputArea.setCaretPosition(outputArea.getDocument().getLength());

        outputArea.append("\n Suggestions on what it means... \n ------------------- \n");

        for (String instr : instructions) {
            outputArea.append(instr + " -> " + instructionDetails.get(instr) + "\n");
        }

        outputArea.append("\n Summary guess on overall purpose.... \n ------------------- \n");

        if (instructions.size() > 1) {
            outputArea.append("\n This function performs a series of actions: it prints two formatted strings using printf, prints two more strings using puts, calls a notify function with a null argument, and finally terminates the program using exit with an exit status of 8. It appears to handle some type of notification and clean-up process before exiting. \n");
        } else {
            outputArea.append("\n The instruction MOVSXD reads a 32-bit signed integer from the memory location 0x00603130, sign-extends it to 64 bits, and stores the result in the RDI register. It is used to load a 32-bit signed integer from memory into a 64-bit register, making sure the sign is preserved, typically preparing the value for further 64-bit operations. \n");
        }

         outputArea.append("\n _____________________________________________________________________________ \n");
    }

    private String callChatGPTApi(String prompt) {
    try {
        URL url = new URL("https://api.openai.com/v1/chat/completions");
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setRequestProperty("Authorization", "Bearer " + apiKey); // Replace with your OpenAI API key
        conn.setRequestProperty("Content-Type", "application/json");
        conn.setDoOutput(true);

        // Escape JSON-special characters in `prompt` to avoid formatting issues
        String escapedPrompt = prompt.replace("\\", "\\\\").replace("\"", "\\\"");

        // JSON payload with properly escaped prompt
        String jsonInputString = String.format(
            "{" +
            "\"model\": \"gpt-4o-mini\"," +
            "\"messages\": [{\"role\": \"user\", \"content\": \"%s\"}]," +
            "\"temperature\": 0.7" +
            "}", escapedPrompt);

    
        String model = "gpt-4o-mini";
        String prompt2 = "[{\"role\": \"user\", \"content\": prompt}]";
        int maxTokens = 50;
        
        String body = "{\"model\": \"" + model + "\", \"messages\": " + prompt2 + ", \"max_tokens\": " + maxTokens + "}";
        
        OutputStreamWriter writer = new OutputStreamWriter(conn.getOutputStream());
        writer.write(body);
        writer.flush();
        
        System.out.println(body);

        //Read the response
        BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        String inputLine;
        StringBuffer response = new StringBuffer();
        while ((inputLine = in.readLine()) != null) {
          response.append(inputLine);
        }
        in.close();

        System.out.println(response.toString());
        return response.toString(); 
    } catch (Exception e) {
        return "Error: " + e.getMessage();
    }
 }
 
   public static String extractMessageFromJSONResponse(String response) {
       int start = response.indexOf("content")+ 11;

       int end = response.indexOf("\"", start);

       return response.substring(start, end);

   }
}
