//TODO write a description for this script
//@author 
//@category _NEW_
//@keybinding 
//@menupath 
//@toolbar 

import ghidra.app.script.GhidraScript;
import ghidra.program.model.lang.protorules.*;
import ghidra.program.model.mem.*;
import ghidra.program.model.lang.*;
import ghidra.program.model.pcode.*;
import ghidra.program.model.data.ISF.*;
import ghidra.program.model.util.*;
import ghidra.program.model.reloc.*;
import ghidra.program.model.data.*;
import ghidra.program.model.block.*;
import ghidra.program.model.symbol.*;
import ghidra.program.model.scalar.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import ghidra.util.exception.*;
import ghidra.program.util.ProgramSelection;

public class test2 extends GhidraScript {
        private JTextArea outputArea;
    private JButton printButton;

    @Override
    public void run() throws Exception {
        // Ensure GUI creation happens on the Event Dispatch Thread (EDT)
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                createAndShowGUI();
            }
        });
    }

    // Create and show the GUI window
    private void createAndShowGUI() {
        // Create and configure the GUI window
        JFrame frame = new JFrame("Highlighted Instruction Printer");
        frame.setSize(400, 200);
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);  // Ensure Ghidra does not exit when the window is closed
        frame.setLayout(new BorderLayout());

        // Create an output area (text area) to display selected instructions
        outputArea = new JTextArea();
        outputArea.setEditable(false);  // Set text area to be non-editable
        JScrollPane scrollPane = new JScrollPane(outputArea);
        frame.add(scrollPane, BorderLayout.CENTER);

        // Create a button to print the highlighted instructions when clicked
        printButton = new JButton("Print Highlighted Instructions");
        printButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                printSelectedInstructions();
            }
        });

        frame.add(printButton, BorderLayout.SOUTH);

        // Make the frame visible
        frame.setVisible(true);
    }

    // Method to print the currently highlighted instructions when the button is clicked
    private void printSelectedInstructions() {
        // Dynamically fetch the current selection (highlighted region) from the GUI context
        ProgramSelection selection = getCurrentSelection();

        // Check if the selection is null or empty
        if (selection == null || selection.isEmpty()) {
            println("No instructions selected.");
            outputArea.setText("No instructions selected.\n");  // Message if no selection
            return;
        }

        // Clear previous output before printing updated instructions
        outputArea.setText("");  // Clear previous content in output area

        println("Processing selected instructions...");

        // Get the listing of the program
        Listing listing = currentProgram.getListing();
        
        // Iterate through the selected addresses and print the corresponding instructions
        Address minAddress = selection.getMinAddress();
        Address maxAddress = selection.getMaxAddress();
        Instruction instruction = listing.getInstructionAt(minAddress);

        // Iterate through the selected range
        while (instruction != null && instruction.getAddress().compareTo(maxAddress) <= 0) {
            outputArea.append(instruction.toString() + "\n");  // Append each instruction to the output area
            println("Instruction: " + instruction.toString());  // Log each instruction printed
            instruction = listing.getInstructionAfter(instruction.getAddress());
        }

        // Optionally, scroll to the bottom to show the most recent output
        outputArea.setCaretPosition(outputArea.getDocument().getLength());
        println("Instruction printing complete.");
    }

    // Helper method to get the current selection dynamically
    private ProgramSelection getCurrentSelection() {
        // Get the current selection from the program's current selection
        return currentSelection;  // currentSelection is a built-in property of GhidraScript
    }
}


sudo apt install virtualbox-guest-x11
pkill 'VBoxClient --clipboard' -f & sleep 1 && VBoxClient --clipboard