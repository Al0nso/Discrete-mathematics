data Nat = Cero | Suc Nat deriving (Show) --Declaramos tipo Nat

suma :: Nat -> Nat -> Nat
suma n Cero = n
suma n (Suc m) = Suc ( suma n m )

mult :: Nat -> Nat -> Nat
mult _ Cero = Cero
mult n ( Suc m ) = suma ( mult n m ) n

rest :: Nat -> Nat -> Nat
rest n Cero = n
rest Cero _ = error "No existe en los naturales"
rest (Suc n) (Suc m) = rest n m

toNat :: Int -> Nat
toNat 0 = Cero
toNat n = Suc ( toNat (n - 1))

toInt :: Nat -> Int
toInt Cero = 0
toInt (Suc( Cero )) = 1
toInt (Suc( n )) = (1 + (toInt n))

factorial :: Nat -> Nat
factorial Cero = (Suc(Cero))
factorial ( Suc(Cero) ) = (Suc(Cero))
factorial ( Suc n  ) = (mult (Suc n ) (factorial n ))

potencia :: Nat -> Nat -> Nat
potencia ( Suc _ ) ( Cero ) = ( Suc Cero )
potencia ( Suc n ) ( Suc m ) = ( mult ( potencia (n) ( m ) ) ( Suc m )  )
