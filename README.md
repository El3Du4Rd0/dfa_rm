# Description
My proyect consists of a dfa programmed in order to indentifies the valid options for the rm command in linux. Prolog don't accept strigs separated by a whitespace, so i use the commands without the wihitespace after the "rm". 

# Models
- q0 Is the initial state
- R & M are the sequential states after q0, "r" and "m" respectively
- r0 & m0 are the next states where the posibilities divides in each command

these commands are represented in the next diagram:

- rm-f
- rm-i
- rm-r
- rm-d 
- rm-v 

![Diagram1](Diagrama1.pdf)

these commands are represented in the next diagram:

- rm--preserve-root
- rm--no-preserve-root
- rm--one-file-system
- rm--help
- rm--version

![Diagram2](Diagrama2.pdf)

# Implementation

There is a `regex.py` file that test the regular expresion. The regular expresion represents the dfa.

`r'(\brm-f\b)|(\brm-i\b)|(\brm-r\b)|(\brm-d\b)|(\brm-v\b)|(\brm--preserve-root\b)|(\brm--no-preserve-root\b)|(\brm--one-file-system\b)|(\brm--help\b)|(\brm--version\b)'`

The `\b` represents that the word is a boundary, so it represents the valid commands. 

# Test
examples of valid commands:
```
rm-f
rm-i
rm-r
rm-d
rm-v
rm--preserve-root
rm--no-preserve-root
rm--one-file-system
rm--help
rm--version
```
examples of invalid commands:
```
rm-
rm-file
rm-file-system
rm-heap
rm-vvvv
tamales
huevo
tortillas
enchiladas
rm--preserve
rm--one
rm--no
rm--pleh
rm--sionver
```

To test the prolog program you can feed it with the `test.txt` only copying the entire txt in the prolog program.

Executing `regex.py` file, which will also test the cases.

# Analysis
The complexity of this is O(n), because the automaton runs char by char on all the posible cases

## References
GfG. (2022, September 15). rm command in Linux with examples. GeeksforGeeks. https://www.geeksforgeeks.org/rm-command-linux-examples/ 
