##########################################################################
# Author: https://github.com/NTCA-developer
# Project: https://github.com/nav-gov-hu/Online-Invoice-XSLT
# Since: 1.0.2023.41
##########################################################################

import UI
import os
import xml.etree.ElementTree as eT
import subprocess
import threading

# Constants for path definitions. Be sure to update them locally as needed! (Windows syntax expected without "")
# Ensure the OS user running the code has sufficient access privileges!
saxon_path = r'' # noqa
fop_path = r'' # noqa
html_template_path = r'' # noqa
pdf_template_path = r'' # noqa

# Language constant. Edit for desired output localizations during the generator process.
languages = ['HU', 'EN', 'DE']


def check_well_formed(file_path):
    # XML file checker method for parser
    try:
        eT.parse(file_path)
        return True
    except eT.ParseError:
        return False


def load_test_data(folder_path):
    # Parsing method for file list
    # Check if folder path is invalid
    if not os.path.exists(folder_path) or not os.path.isdir(folder_path):
        print(f"Invalid folder path: '{folder_path}'")
        return []

    xml_file_list = []

    # Iterate through files in the given directory
    for filename in os.listdir(folder_path):
        file_path = os.path.join(folder_path, filename)
        # Check if it's a file and has a .xml extension
        if os.path.isfile(file_path) and filename.lower().endswith(".xml"):
            # Check if it's well-formed XML
            if check_well_formed(file_path):
                # Add file to list
                xml_file_list.append(filename)

    return xml_file_list


def generate_output(folder_name, filename, output_type):
    # Generator method for HTML and PDF outputs
    for i in languages:
        # HTML outputs
        if output_type in ['1', '3']:
            html_command = f'java -jar "{saxon_path}" -s:"{folder_name}\\{filename}" -xsl:"{html_template_path}" ' \
                           f'-o:"{folder_name}\\html\\{filename}_{i}.html" ?lang=\'{i}\''
            subprocess.run(html_command, shell=True)
        # PDF outputs
        if output_type in ['2', '3']:
            thread_name = threading.current_thread().name
            temp_fo = f'{folder_name}\\pdf\\temp_fo_{thread_name}.fo'
            fo_command = f'java -jar "{saxon_path}" -s:"{folder_name}\\{filename}" -xsl:"{pdf_template_path}" ' \
                         f'-o:"{temp_fo}" ?lang=\'{i}\''

            pdf_command = f'"{fop_path}" fop -q -fo "{temp_fo}" ' \
                          f'-pdf "{folder_name}\\pdf\\{filename}_{i}.pdf"'
            subprocess.run(fo_command, shell=True)
            subprocess.run(pdf_command, shell=True)


def validate_user_input(prompt, valid_choices):
    # User prompt sanitizer method
    user_input = input(prompt).lower()
    while user_input not in valid_choices:
        print('Please provide a valid choice!')
        user_input = input(prompt).lower()
    return user_input


def prepare_for_parallel(generator_input, test_folder_name, output_choice):
    # Split generator input for threading & instantiate threads
    num_threads = 4
    chunk_size = len(generator_input) // num_threads
    threads = []
    for i in range(num_threads):
        start_index = i * chunk_size
        end_index = start_index + chunk_size if i < num_threads - 1 else len(generator_input)
        thread = threading.Thread(target=execute_parallel,
                                  args=(generator_input[start_index:end_index], test_folder_name, output_choice))
        threads.append(thread)
        thread.start()
    for thread in threads:
        thread.join()


def execute_parallel(generator_input, test_folder_name, output_choice):
    # Execute threads in parallel
    thread_name = threading.current_thread().name
    for i in generator_input:
        print(f"\033[91mThread {thread_name}\033[0m: Processing input {i}")
        generate_output(folder_name=test_folder_name, filename=i, output_type=output_choice)


def main():
    # Initialize UI
    print(UI.logo)
    valid_directory = False

    while not valid_directory:
        test_folder_name = input("\nPlease provide a directory path where input XMLs are located!\n")

        # Load test data
        generator_input = load_test_data(test_folder_name)
        # Check list for suitable input
        if not generator_input:
            print('No valid XML files were found at the specified location.')
        else:
            # Prompt user
            valid_directory = True
            print(UI.menu)
            valid_user_prompt = False

            while not valid_user_prompt:
                output_choice = validate_user_input('Enter your choice: ', UI.valid_choices)

                # Generative prompt and generation cycle
                if output_choice in {'1', '2', '3'}:
                    valid_user_prompt = True
                    print(f'Generating files in {languages} localizations, using the following templates:\n'
                          f'{html_template_path}\n{pdf_template_path}\n')
                    prepare_for_parallel(generator_input, test_folder_name, output_choice)
                # Exit prompt
                elif output_choice == 'x':
                    valid_user_prompt = True
                    print(UI.goodbye)


if __name__ == '__main__':
    main()
