{--
	*Programa: Practica 2
	*Autor: Medina Amayo D. Alonso
	*Fecha: 23/08/18
	*Descripcion: punto 1
--}

distanciaEnCaida a =
				(4.59+ (a**2))


{--
	*Programa: Practica 2
	*Autor: Medina Amayo D. Alonso
	*Fecha: 23/08/18
	*Descripcion: punto 2
--}
				
raizC  a = if a > 0 
			then
				let b = ( sqrt (a) )
				in show  ( b ) ++ " es la raiz" 
			else 
				let b =  ( a * ( -1 ) )
				in show ( sqrt b ) ++ "i , es la raiz imaginaria "
		
				
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

									
{--
	*Programa: Practica 2
	*Autor: Medina Amayo D. Alonso
	*Fecha: 23/08/18
	*Descripcion: Practica 2, punto 4
--}
enciende a b c = 
	if a == True && b == True 
	then
		"Prendido"
	else 
		if a == True && c == True 
		then
			"Prendido"
			else
					if b == True && c == True 
					then
						"Prendido"
					else
						"Apagado"


				