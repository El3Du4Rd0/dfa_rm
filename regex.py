import re

def parse(string):
    """
    Check if the given string is a valid command using a regular expression.
    
    Args:
        string (str): The command string to be checked.
        
    Prints:
        A message indicating whether the string is a valid command.
    """
    pattern = (
        r'(\brm-f\b)|(\brm-i\b)|(\brm-r\b)|(\brm-d\b)|(\brm-v\b)|'
        r'(\brm--preserve-root\b)|(\brm--no-preserve-root\b)|'
        r'(\brm--one-file-system\b)|(\brm--help\b)|(\brm--version\b)'
    )
    match = re.match(pattern, string)
    if match:
        print(f"'{string}' is a valid command")
    else:
        print(f"'{string}' is an invalid command")

# List of valid commands
valid_commands = [
    "rm-f", "rm-i", "rm-r", "rm-d", "rm-v",
    "rm--preserve-root", "rm--no-preserve-root", 
    "rm--one-file-system", "rm--help", "rm--version"
]

# List of invalid commands
invalid_commands = [
    "rm-", "rm-file", "rm-file-system", "rm-heap", 
    "rm-vvvv", "tamales", "huevo", "frijoles", 
    "tortillas", "enchiladas", "rm--preserve", 
    "rm--one", "rm--no", "rm--pleh", "rm--sionver"
]

# Check each valid command
for command in valid_commands:
    parse(command)

# Check each invalid command
for command in invalid_commands:
    parse(command)