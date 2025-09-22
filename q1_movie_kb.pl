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
%%%%% NAME:
%%%%% STUDENT ID:
%
% Add the required KB statements in the section below.
% Do NOT delete, edit, or add SECTION headers.
% If you put statements in the wrong section, you will lose marks.
%
% You may add additional comments as you choose but DO NOT MODIFY 
% the already included comment lines below

%%%%% SECTION: q1_kb
%%%%% You should put the atomic statements for your KB below

releaseInfo(inception, 2010, 148).
releaseInfo(titanic, 1997, 195).
releaseInfo(the_dark_knight, 2008, 152).
releaseInfo(the_godfather, 1972, 175).
releaseInfo(avengers_endgame, 2019, 181).
releaseInfo(gladiator, 2000, 155).
releaseInfo(pulp_fiction, 1994, 154).
releaseInfo(the_matrix, 1999, 136).
releaseInfo(parasite, 2019, 132).
releaseInfo(joker, 2019, 122).

directedBy(inception, christopher_nolan).
directedBy(titanic, james_cameron).
directedBy(the_godfather, francis_ford_coppola).
directedBy(avengers_endgame, anthony_russo).
directedBy(avengers_endgame, joe_russo).
directedBy(parasite, bong_joon_ho).
directedBy(joker, todd_phillips).
directedBy(the_dark_knight, christopher_nolan).
directedBy(gladiator, ridley_scott).
directedBy(pulp_fiction, quentin_tarantino).
directedBy(the_matrix, wachowski_sisters).

actedIn(leonardo_dicaprio, inception, dom_cobb).
actedIn(kate_winslet, titanic, rose_dewitt_bukater).
actedIn(marlon_brando, the_godfather, vito_corleone).
actedIn(robert_downey_jr, avengers_endgame, tony_stark).
actedIn(keanu_reeves, the_matrix, neo).
actedIn(song_kang_ho, parasite, kim_ki-taek).
actedIn(joaquin_phoenix, joker, arthur_fleck).
actedIn(christian_bale, the_dark_knight, bruce_wayne).
actedIn(russell_crowe, gladiator, maximus).
actedIn(john_travolta, pulp_fiction, vincent_vega).
actedIn(tom_hanks, inception, _).  % Added for testing
actedIn(tom_hanks, titanic, _).   % Added for testing

%%%%% END
% DO NOT PUT ANY ATOMIC PROPOSITIONS OR LINES BELOW