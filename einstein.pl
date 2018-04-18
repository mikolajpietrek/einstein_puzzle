obok(X, Y, List) :- obok_LR(X, Y, List).
obok(X, Y, List) :- obok_LR(Y, X, List).
obok_LR(L, R, [L | [R | _]]).
obok_LR(L, R, [_ | Rest]) :- obok_LR(L, R, Rest).

rybki(Problem,Kto) :-
	Problem = 
	[
		dom(1, _, _, _, _, _),
		dom(2, _, _, _, _, _),
		dom(3, _, _, _, _, _),
		dom(4, _, _, _, _, _),
		dom(5, _, _, _, _, _)
	],
	member( dom( 1, _,        norweg,  _,     _,       _),                                               Problem),
	member( dom( _, czerwony, anglik,  _,     _,       _),                                               Problem),
	obok_LR(dom( _, zielony,  _,       _,     _,       _),         dom(_, bialy,     _, _,    _, _),     Problem),
	member( dom( _, _,        dunczyk, _,     herbata, _),                                               Problem),
	obok(   dom( _, _,        _,       _,     _,       light),     dom(_, _,         _, koty, _, _),     Problem),
	member( dom( _, zolty,    _,       _,     _,       cygara),                                          Problem),
	member( dom( _, _,        niemiec, _,     _,       fajka),                                           Problem),
	member( dom( 3, _,        _,       _,              mleko, _),                                        Problem),
	obok(   dom( _, _,        _,       _,              woda, _),   dom(_, _,         _, _,    _, light), Problem),
	member( dom( _, _,        _,       ptaki, _,       bezfiltra),                                       Problem),
	member( dom( _, _,        szwed,   psy,   _,       _),                                               Problem),	
	obok(   dom( _, _,        norweg,  _,     _,       _),         dom(_, niebieski, _, _,    _, _),     Problem),
	obok(   dom( _, _,        _,       konie, _,       _),         dom(_, zolty,     _, _,    _, _),     Problem),
	member( dom( _, _,        _,       _,     piwo,    mentolowe),                                       Problem),	
	member( dom( _, zielony,  _,       _,     kawa,    _),                                               Problem),
	member( dom( _, _,        Kto,     rybki, _,       _),                                               Problem).
