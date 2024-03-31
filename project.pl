
:- discontiguous state/1, move/3, initial/1.

% Definitions of the DFA states
state(q0). % initial state
state(r). % "r" has been input
state(m). % "m" has been input
state(r0). % "-" has been input

state(r1). % "f" has been input
state(r2). % "i" has been input
state(r3). % "r" has been input
state(r4). % "d" has been input
state(r5). % "v" has been input

state(m0). % "-" has been input

% preserve-root case
state(p1). % "p" has been input
state(p2). % "r" has been input
state(p3). % "e" has been input
state(p4). % "s" has been input
state(p5). % "e" has been input
state(p6). % "r" has been input
state(p7). % "v" has been input
state(p8). % "e" has been input
state(p9). % "-" has been input
state(p10). % "r" has been input
state(p11). % "o" has been input
state(p12). % "o" has been input
state(p13). % "t" has been input

% no-preserve-root case
state(n1). % "n" has been input
state(n2). % "o" has been input
state(n3). % "-" has been input
state(n4). % "p" has been input
state(n5). % "r" has been input
state(n6). % "e" has been input
state(n7). % "s" has been input
state(n8). % "e" has been input
state(n9). % "r" has been input
state(n10). % "v" has been input
state(n11). % "e" has been input
state(n12). % "-" has been input
state(n13). % "r" has been input
state(n14). % "o" has been input
state(n15). % "o" has been input
state(n16). % "t" has been input

% one-file-system case
state(o1). % "o" has been input
state(o2). % "n" has been input
state(o3). % "e" has been input
state(o4). % "-" has been input
state(o5). % "f" has been input
state(o6). % "i" has been input
state(o7). % "l" has been input
state(o8). % "e" has been input
state(o9). % "-" has been input
state(o10). % "s" has been input
state(o11). % "y" has been input
state(o12). % "s" has been input
state(o13). % "t" has been input
state(o14). % "e" has been input
state(o15). % "m" has been input

% help case
state(h1). % "h" has been input
state(h2). % "e" has been input
state(h3). % "l" has been input
state(h4). % "p" has been input

% version case
state(v1). % "v" has been input
state(v2). % "e" has been input
state(v3). % "r" has been input
state(v4). % "s" has been input
state(v5). % "i" has been input
state(v6). % "o" has been input
state(v7). % "n" has been input

move(q0,r,X):-X=='r'.
move(r,m,X):-X=='m'.
move(m,r0,X):-X=='-'.

% "-f" "-i" "-r" "-d" "-v" set of movements
move(r0,r1,X):-X=='f'.
move(r0,r2,X):-X=='i'.
move(r0,r3,X):-X=='r'.
move(r0,r4,X):-X=='d'.
move(r0,r5,X):-X=='v'.

move(r0,m0,X):-X=='-'.

% preserve-root set of movements
move(m0,p1,X):-X=='p'.
move(p1,p2,X):-X=='r'.
move(p2,p3,X):-X=='e'.
move(p3,p4,X):-X=='s'.
move(p4,p5,X):-X=='e'.
move(p5,p6,X):-X=='r'.
move(p6,p7,X):-X=='v'.
move(p7,p8,X):-X=='e'.
move(p8,p9,X):-X=='-'.
move(p9,p10,X):-X=='r'.
move(p10,p11,X):-X=='o'.
move(p11,p12,X):-X=='o'.
move(p12,p13,X):-X=='t'.

% no-preserve-root set of movements
move(m0,n1,X):-X=='n'.
move(n1,n2,X):-X=='o'.
move(n2,n3,X):-X=='-'.
move(n3,n4,X):-X=='p'.
move(n4,n5,X):-X=='r'.
move(n5,n6,X):-X=='e'.
move(n6,n7,X):-X=='s'.
move(n7,n8,X):-X=='e'.
move(n8,n9,X):-X=='r'.
move(n9,n10,X):-X=='v'.
move(n10,n11,X):-X=='e'.
move(n11,n12,X):-X=='-'.
move(n12,n13,X):-X=='r'.
move(n13,n14,X):-X=='o'.
move(n14,n15,X):-X=='o'.
move(n15,n16,X):-X=='t'.

% one-file-system set of movements
move(m0,o1,X):-X=='o'.
move(o1,o2,X):-X=='n'.
move(o2,o3,X):-X=='e'.
move(o3,o4,X):-X=='-'.
move(o4,o5,X):-X=='f'.
move(o5,o6,X):-X=='i'.
move(o6,o7,X):-X=='l'.
move(o7,o8,X):-X=='e'.
move(o8,o9,X):-X=='-'.
move(o9,o10,X):-X=='s'.
move(o10,o11,X):-X=='y'.
move(o11,o12,X):-X=='s'.
move(o12,o13,X):-X=='t'.
move(o13,o14,X):-X=='e'.
move(o14,o15,X):-X=='m'.

% help set of movements
move(m0,h1,X):-X=='h'.
move(h1,h2,X):-X=='e'.
move(h2,h3,X):-X=='l'.
move(h3,h4,X):-X=='p'.

% version set of movements
move(m0,v1,X):-X=='v'.
move(v1,v2,X):-X=='e'.
move(v2,v3,X):-X=='r'.
move(v3,v4,X):-X=='s'.
move(v4,v5,X):-X=='i'.
move(v5,v6,X):-X=='o'.
move(v6,v7,X):-X=='n'.

accepting(r1).
accepting(r2).
accepting(r3).
accepting(r4).
accepting(r5).
accepting(p13).
accepting(n16).
accepting(o15).
accepting(h4).
accepting(v7).

accepts(State, []):-
	accepting(State),
	write("Accepted command").

accepts(State, [H|T]):-
	move(State,NextState,H),
	accepts(NextState,T).

check(Input):-
	accepts(q0, Input).

dfa(String):-
	atom_chars(String,Chars),
	check(Chars),!.
	
