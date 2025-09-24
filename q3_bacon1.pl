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
% Add the required statements in the q3a_can_reach section below.
% Any helper predicates should also be added to that section.
% Do NOT delete, edit, or add SECTION headers.
% If you put statements in the wrong section, you will lose marks.
%
% You may add additional comments as you choose but DO NOT MODIFY 
% the already included comment lines below
%

%%%%% SECTION: q3a_movie_kb_import
% The following line will import your movie KB. You can feel free to
% edit this line if you want to import and test on different KBs.
% We will ignore this section when testing your code, and instead test
% on our own KBs.
:- [q3_kb].

%%%%% SECTION: q3a_can_reach
% You define canReach and any helper predicates below.

canReach(A, A, M) :-
    M >= 0,
    actedIn(A, _, _).

canReach(A1, A2, M) :-
    M > 0,
    actedIn(A1, Mov, _),
    actedIn(A3, Mov, _),
    not(A1 = A3),
    canReach(A3, A2, M-1).

%%%%% END
% DO NOT PUT ANY ATOMIC PROPOSITIONS OR LINES BELOW