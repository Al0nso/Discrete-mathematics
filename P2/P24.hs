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
