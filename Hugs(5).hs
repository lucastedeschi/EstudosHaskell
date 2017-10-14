somaLista [] = 0
somaLista (a:x) = a + somaLista x
ver (a:x) = verAux (a:x) (somaLista (a:x)) a
verAux [] _ _ = 0
verAux (a:x) soma acum  | (soma - acum) == acum = acum
		  	| otherwise = verAux x soma a