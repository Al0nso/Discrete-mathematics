{--
	*Programa: Practica 2
	*Autor: Medina Amayo D. Alonso
	*Fecha: 23/08/18
	*Descripcion: Practica 2, punto 3
--}
ordena a b c =
	if a>c && a>b && b>c then
		show (a) ++ show (b) ++ show (c)
	else 
		if a>c && a>b && c>b then
			show (a) ++ show (c) ++ show (b)
			else
				if b>c && b>a && c>a then
						show (b) ++ show (c) ++ show (a)
					else
					if b>c && b>a && a>c then
						show (b) ++ show (a) ++ show (c)
					else
						if c>a && c>b && b>a then
								show (c) ++ show (b) ++ show (a)
							else
								if c>a && c>b && a>b then
								show (c) ++ show (a) ++ show (b)
								else
									"Valores Iguales"