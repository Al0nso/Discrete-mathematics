--Author: Medina Amayo D. Alonso
--Github name: Al0nso
--Date: 15/11/18
--Version: 1
--Description: Program made to operate with list and tree

data Tree = Void | T Tree Int Tree deriving Show

rev :: [Int] -> [Int] --Haskell already knows the list
rev [] = []
rev (x:xs) = (rev (xs)) ++ [x]

mist :: [Int] -> [Int] -> [Int]
mist [] ys = ys
mist (x:xs) ys = mist xs (x:ys)

long :: [Int] -> Int
long [] = 0
long (x:xs) = 1 + (long xs)

ultimo :: [Int] -> Int
ultimo [] = error ":c"
ultimo [x] = x
ultimo (x:xs) = ultimo xs

suma :: [Int] -> Int
suma [] = 0
suma (x:xs) = x + (suma xs) 

toma :: Int -> [Int] -> [Int]
toma 0 _ = []
toma n [] = error "Insuficientes elementos"
toma n (x:xs) = x:(toma (n-1) xs)


nNodos :: Tree -> Int
nNodos Void = 0
nNodos (T t1 c t2) = 1 + (nNodos t1) + (nNodos t2)

nHojas :: Tree -> Int
nHojas Void = 0
nHojas (T Void c Void) = 1
nHojas (T t1 c t2) = ( nHojas t1 ) + ( nHojas t2 )

aplana :: Tree -> [Int]
aplana Void = []
aplana (T t1 c t2) = c:(aplana(t1) ++ aplana(t2))

replica :: Int -> Int -> [Int]
replica _ 0 = []
replica n m = [n] ++ replica n (m-1)

rota :: [Int] -> Int -> [Int]
rota [] _ = []
rota (x:xs) 1   = xs ++ [x]
rota (x:xs) n = rota (xs ++ [x]) ( n-1)

nInternos :: Tree ->Int
nIntentos Void = error "No tengo elementos"
nInternos (T Void a Void) = 0
nInternos (T t1 c t2) = 1 + nInternos (t1) + nInternos (t2)

sumaT :: Tree -> Tree -> Tree
sumaT (T Void c Void) (T Void a Void ) = (T Void (c+a) Void)
sumaT (T t1 c t2) (T t3 a t4) = (T (sumaT t1 t3) (c+a) (sumaT t2 t4))
sumaT (T t1 c t2) Void = (T t1 c t2)
