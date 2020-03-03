/* rang_pair arité 2 :
	rang_pair(L1,L2) vrai si L2 est la liste des éléments de rang pair de L1 */

liste([]).
liste([_X|L]) :- liste(L).

rang_pair([],[]).
rang_pair([_],[]).
rang_pair([_X,Y|L1],[Y|L2]) :- rang_pair(L1|L2).

/* membre arité 3 :
	membre(X,L) vrai si X est un élément de L */

membre(X,[X|_]).
membre(X,[_|L]) :- membre(X,L).

/* insertion arité 3 :
	insertion(L1,X,L2) vrai si L2 est insertion (n'importe où) de X dans L1 */

% insertion([],X,[X]).
insertion(L1,X,[X|L1]).
insertion([Y|L1],X,[Y|L2]) :- insertion(L1,X,L2).

/* prefixe arité 2 :
	prefixe(L,LL_) et vrai si L est préfixe de LL */

prefixe([],_L).
prefixe([Y|L],[Y|LL_]) :- prefixe(L,LL_).

/* suffixe arité 2 :
	suffixe(L,LL_) et vrai si L est suffixe de LL */

suffixe(L,L).
suffixe(L,[_|LL_]) :- suffixe(L,LL_).

/* permute arité 2 :
	permute(L,P) vrai si P est permutation de L */

permute([],[]).
permute([X|L],P) :- permute(L,P),

























