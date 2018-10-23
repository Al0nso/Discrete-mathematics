data Nat = Cero | Suc Nat deriving (Show) --Declaramos tipo Nat

suma :: Nat -> Nat -> Nat
suma n Cero = n
suma n (Suc m) = Suc ( suma n m )

mult :: Nat -> Nat -> Nat
mult _ Cero = Cero
mult n ( Suc m ) = suma ( mult n m ) n

fig :: Nat -> Nat
fig Cero = Cero
fig ( Suc Cero ) = Suc Cero
fig (Suc ( Suc x)) = suma (fig (Suc x)) (fig x)

