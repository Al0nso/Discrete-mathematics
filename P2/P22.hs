raizC  a = if a > 0 
			then
				let b = ( sqrt (a) )
				in show  ( b ) ++ " es la raiz" 
			else 
				let b =  ( a * ( -1 ) )
				in show ( sqrt b ) ++ "i , es la raiz imaginaria "
