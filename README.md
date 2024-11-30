# project_assembllym

Setup Preqrequisites:
- Ghidra is installed and setup.
- Code samples are available.
- Assembly is in x86 format and is unpacked.
- Personal OpenAI account.
- Obtain API key from OpenAI and have credits funded.

Setup instructions:
1. Have Ghidra running locally.
2. Create a new local java script within Ghidra named "assembllym.java".
3. Take the code within this repo from the `assembllym.java` file and paste it into the script file.
4. Replace the code placeholder for API key with personal API key.
5. Save the file and execute the file to have extension GUI show up.

Usage Instructions:
1. Highlight block of text before running extension.
2. Select "Get Assembllym opinion" first to pull in the highlighted instructions.
3. Select "Get ChatGPT opinion" to generate the suggested comments on what the highlighted assembly instructions are doing.
4. Select "Apply EOL Comment" to take the suggestions that appear in the GUI and then apply them directly as comments line by line inside the disassembler.


Video of demo in action can be found [here](https://gtvault-my.sharepoint.com/personal/fzhou65_gatech_edu/_layouts/15/stream.aspx?id=%2Fpersonal%2Ffzhou65%5Fgatech%5Fedu%2FDocuments%2FRecording%2D20241110%5F224439%2Ewebm&referrer=StreamWebApp%2EWeb&referrerScenario=AddressBarCopied%2Eview%2E890ab58a%2D4e72%2D456d%2D89c7%2D14e65af07ac9) (Starting at 8:10 – 9:35)