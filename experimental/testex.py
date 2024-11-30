from javax.swing import JFrame, JPanel, JButton, JTextArea, JScrollPane
from java.awt import BorderLayout
from java.awt.event import ActionListener

class HighlightedInstructionViewer(JFrame):
    def __init__(self):
        # Initialize the main frame
        super(HighlightedInstructionViewer, self).__init__("Highlighted Instructions Viewer")
        self.setSize(500, 400)
        self.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE)

        # Main panel with a text area and scroll pane
        panel = JPanel(BorderLayout())
        self.text_area = JTextArea()
        self.text_area.setLineWrap(True)
        self.text_area.setWrapStyleWord(True)
        scroll_pane = JScrollPane(self.text_area)

        # Button to fetch and display the highlighted instructions
        print_button = JButton("Print Highlighted Instructions")
        print_button.addActionListener(self.PrintButtonListener(self))

        # Add components to the panel
        panel.add(scroll_pane, BorderLayout.CENTER)
        panel.add(print_button, BorderLayout.SOUTH)
        
        # Add panel to the main frame
        self.add(panel)

    # ActionListener class for the button click
    class PrintButtonListener(ActionListener):
        def __init__(self, parent):
            self.parent = parent
            
        def actionPerformed(self, event):
            # Fetch and display the highlighted instructions when button is clicked
            self.parent.display_highlighted_instructions()

    # Method to fetch and display highlighted instructions
    def display_highlighted_instructions(self):
        # Clear previous text in the text area
        self.text_area.setText("")

        # Access the program's listing and current selection
        listing = currentProgram.getListing()
        selection = currentSelection  # The currently highlighted selection

        # Check if there is a valid selection
        if selection and not selection.isEmpty():
            for address_range in selection:
                start_address = address_range.getMinAddress()
                end_address = address_range.getMaxAddress()

                # Iterate through each instruction in the selected range
                instruction = listing.getInstructionAt(start_address)
                while instruction and instruction.getAddress() <= end_address:
                    # Append each instruction to the text area
                    self.text_area.append("{}: {}\n".format(instruction.getAddress(), instruction))
                    instruction = instruction.getNext()
        else:
            self.text_area.append("No instructions selected.\n")

# Create and show the GUI
gui = HighlightedInstructionViewer()
gui.setVisible(True)