import re

def parse(string):
    pattern = r'(\brm-f\b)|(\brm-i\b)|(\brm-r\b)|(\brm-d\b)|(\brm-v\b)|(\brm--preserve-root\b)|(\brm--no-preserve-root\b)|(\brm--one-file-system\b)|(\brm--help\b)|(\brm--version\b)'
    match = re.match(pattern, string)
    if match:
        print(f"'{string}' is a valid command")
    else:
        print(f"'{string}' is an invalid command")


valid_commands = ["rm-f","rm-i","rm-r","rm-d","rm-v","rm--preserve-root","rm--no-preserve-root","rm--one-file-system","rm--help","rm--version"]
invalid_commands = ["rm-","rm-file","rm-file-system","rm-heap","rm-vvvv","tamales","huevo","frijoles","tortillas","enchiladas","rm--preserve","rm--one","rm--no","rm--pleh","rm--sionver"]

for command in valid_commands:
    parse(command)

for command in invalid_commands:
    parse(command)