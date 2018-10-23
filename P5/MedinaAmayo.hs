data Nat = Cero | Suc Nat deriving (Show) 
-- Create the data type 'Nat' defined as the next value of any value as long as we start  from 0 (0,1,2,3... = Cero, Suc(Cero), Suc(Suc(Cero))...)

suma :: Nat -> Nat -> Nat  --Recursive Function to add two data type Nat and return a Nat
suma n Cero = n --Create an exception for the identity element
suma n (Suc m) = Suc ( suma n m )

mult :: Nat -> Nat -> Nat --Recursive function to multiply two data type Nat and return a Nat
mult _ Cero = Cero --Create an exception for the cero multiply with anything
mult n ( Suc m ) = suma ( mult n m ) n

rest :: Nat -> Nat -> Nat --Resursive function to substract two data type Nat and return a Nat
rest n Cero = n --Create an exception for the identity element
rest Cero _ = error "No existe en los naturales" --Just in case we get negative numbers out of the natural numbers domain 
rest (Suc n) (Suc m) = rest n m

toNat :: Int -> Nat --Cast an int into a data type Nat
toNat 0 = Cero --Exception for the 0 
toNat n = Suc ( toNat (n - 1))

toInt :: Nat -> Int --Cast a Nat data into an interger data
toInt Cero = 0 --Exception for the Cero
toInt (Suc( Cero )) = 1 --Base Case
toInt (Suc( n )) = (1 + (toInt n))

factorial :: Nat -> Nat --Recursive function to get the factorial value of any Nat data
factorial Cero = (Suc(Cero)) --Exception for the 0
factorial ( Suc(Cero) ) = (Suc(Cero)) --Base case
factorial ( Suc n  ) = (mult (Suc n ) (factorial n ))

potencia :: Nat -> Nat -> Nat --Recursive fuction of a pow of n^m, n and m are Nat data
potencia ( Suc _ ) ( Cero ) = ( Suc Cero ) --Exception for the 0 as  m
potencia ( Cero ) (Suc _ ) = Cero --Exeption for the 0 as n
potencia ( Cero ) ( Cero ) = ( Suc( Cero  )) --Exception for pow 0,0
potencia ( Suc n ) ( Suc( Cero ) ) = ( Suc n ) --Base case
potencia ( Suc n ) ( Suc m ) = ( mult ( Suc n ) ( potencia (Suc n) ( m ) ) )
