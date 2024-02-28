# XSLT output generator

This Python program is designed to generate HTML and PDF outputs from a set of XML files to faciliate testing. The program utilizes XSLT templates and relies on the same external tools of the repository such as Saxon for XSLT processing and Apache FOP for generating PDFs.

## Prerequisites

Before running the program, ensure that you have the following tools installed and the paths properly configured:

-   Saxon (min v11.3)
-   Apache FOP (min v2.6)

Additionally, update the constants in the code related to the paths of Saxon, FOP, HTML template, and PDF template according to your local environment.

```python
saxon_path = r'' # Path to Saxon (.jar)
fop_path = r''    # Path to Apache FOP (.bat)
html_template_path = r''  # Path to HTML XSLT template
pdf_template_path = r''   # Path to PDF XSLT template 
```

## Usage

1.  **Run the Program:**
    
    -   Execute the program by running the Python script in your preferred environment (e.g., PyCharm, command line).
2.  **Provide XML Directory:**
    
    -   You will be prompted to provide the path to the directory containing your XML files.
3.  **Choose Output Type:**
    
    -   The program will display a menu where you can choose the type of output to generate:
        -   `1`: Generate HTML files.
        -   `2`: Generate PDF files.
        -   `3`: Generate both HTML and PDF files.
        -   `x`: Exit the program.
4.  **Output Generation:**
    
    -   The program will then iterate through the XML files in the specified directory and generate the chosen output type in all languages for each file.
5.  **Generated Files:**
    
    -   The generated HTML files will be saved in the `html` directory, and the PDF files will be saved in the `pdf` directory within the specified XML directory.

6.  **Language Localization:**
    
    -   The program supports all languages of the XSLT templates. Edit the `languages` list in the code to specify the desired localizations. 

## Additional Notes

-   If either user input (directory or output selection) in invalid, you'll be prompted again. 
-   If no valid XML files are found in the specified directory, a message will be displayed, and the program will exit.
-   Make sure to test the generated files to ensure they meet your requirements
-   If you encounter any issues, check the console for error messages.
