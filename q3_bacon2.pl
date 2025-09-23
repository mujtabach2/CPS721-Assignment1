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
% Add the required statements in the q3b_can_reach_through_movie section below.
% Any helper predicates should also be added to that section.
% Do NOT delete, edit, or add SECTION headers.
% If you put statements in the wrong section, you will lose marks.
%
% You may add additional comments as you choose but DO NOT MODIFY 
% the already included comment lines below
%

%%%%% SECTION: q3b_kb_import
% The following line will import your movie KB. You can feel free to
% edit this line if you want to import and test on different KBs.
% We will ignore this section when testing your code, and instead test
% on our own KBs.
:- [q1_movie_kb].

%%%%% SECTION: q3b_can_reach_through_movie
% You define canReachThroughMovie and any helper predicates below.
% Do NOT use an import statement to reuse q3a code.

% Base case: Reach target only if the required movie has been used (Passed=1)
pathMovie(A, A, _, Rem, 1) :-
    Rem >= 0.

% Recursive case: Move to next actor via a movie, update flag if required movie is used
pathMovie(Current, Target, RequiredMovie, Rem, Passed) :-
    Rem > 0,
    actedIn(Current, Mov, _),
    find_coactors(Current, Mov, Next),
    not(Current = Next),
    update_movie_flag(Passed, Mov, RequiredMovie, NewPassed),
    NewRem is Rem - 1,
    pathMovie(Next, Target, RequiredMovie, NewRem, NewPassed).

% Update flag: if already passed (1), stay 1; if not passed (0), check if current movie matches
update_movie_flag(1, _, _, 1).
update_movie_flag(0, Mov, RequiredMovie, 1) :-
    Mov = RequiredMovie.
update_movie_flag(0, Mov, RequiredMovie, 0) :-
    not(Mov = RequiredMovie).

% Find co-actors in the same movie
find_coactors(A1, Mov, A3) :-
    actedIn(A3, Mov, _),
    not(A1 = A3).

% Main predicate: Start with flag unset (0)
canReachThroughMovie(A1, A2, Movie, M) :-
    pathMovie(A1, A2, Movie, M, 0).

%%%%% END
% DO NOT PUT ANY ATOMIC PROPOSITIONS OR LINES BELOW