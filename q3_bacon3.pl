% Enter the names of ID of your group members below.
% For STUDENT ID, use your 9-digit ONECARD number.
% If you have 2 group members, leave the last entry blank.
%
%%%%%
%%%%% NAME: Abdulrehman Saleh
%%%%% STUDENT ID: 501269110
%%%%%
%%%%% NAME: Hamed Bakkar
%%%%% STUDENT ID: 501226875
%%%%%
%%%%% NAME: Mujtaba Chaudhry
%%%%% STUDENT ID: 501192713
%
% Add the required statements in the q3c_can_reach_through_2_movies section below.
% Any helper predicates should also be added to that section.
% Do NOT delete, edit, or add SECTION headers.
% If you put statements in the wrong section, you will lose marks.
%
% You may add additional comments as you choose but DO NOT MODIFY 
% the already included comment lines below
%

%%%%% SECTION: q3c_kb_import
% The following line will import your movie KB. You can feel free to
% edit this line if you want to import and test on different KBs.
% We will ignore this section when testing your code, and instead test
% on our own KBs.
:- [q1_movie_kb].

%%%%% SECTION: q3c_can_reach_through_2_movies
% You define canReachThrough2Movies and any helper predicates below.
% Do NOT use an import statement to reuse q3b code.

% Base case: Reach target only if both movies are included (Passed1=1 and Passed2=1)
path2(A, A, _, _, Rem, 1, 1) :-
    Rem >= 0.

% Recursive case: Move to next actor via a movie, update flags
path2(Current, Target, Mov1, Mov2, Rem, Passed1, Passed2) :-
    Rem > 0,
    actedIn(Current, Mov, _),
    find_coactors(Current, Mov, Next),
    not(Current = Next),
    update_flags(Passed1, Passed2, Mov, Mov1, Mov2, NewPassed1, NewPassed2),
    path2(Next, Target, Mov1, Mov2, Rem - 1, NewPassed1, NewPassed2).

% Update flags without using ->
update_flags(1, 1, _, _, _, 1, 1).

update_flags(1, 0, Mov, Mov1, Mov2, 1, NewPassed2) :-
    (Mov = Mov2, NewPassed2 is 1 ; not(Mov = Mov2), NewPassed2 is 0).

update_flags(0, 1, Mov, Mov1, Mov2, NewPassed1, 1) :-
    (Mov = Mov1, NewPassed1 is 1 ; not(Mov = Mov1), NewPassed1 is 0).

update_flags(0, 0, Mov, Mov1, Mov2, NewPassed1, NewPassed2) :-
    (Mov = Mov1, NewPassed1 is 1 ; not(Mov = Mov1), NewPassed1 is 0),
    (Mov = Mov2, NewPassed2 is 1 ; not(Mov = Mov2), NewPassed2 is 0).

find_coactors(A1, Mov, A3) :-
    actedIn(A3, Mov, _),
    not(A1 = A3).

% Main predicate: Start with both flags unset (0,0)
canReachThrough2Movies(A1, A2, Mov1, Mov2, M) :-
    path2(A1, A2, Mov1, Mov2, M, 0, 0).

%%%%% END
% DO NOT PUT ANY ATOMIC PROPOSITIONS OR LINES BELOW