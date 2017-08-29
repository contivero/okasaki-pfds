data Stack a = Nil | Cons a (Stack a)

empty :: Stack a
empty = Nil

isEmpty :: Stack a -> Bool
isEmpty Nil = True
isEmpty _   = False

cons :: a -> Stack a -> Stack a
cons = Cons

stackHead :: Stack a -> a
stackHead (Cons x _) = x
stackHead _          = error "Can't get head from empty stack"

stackTail :: Stack a -> Stack a
stackTail (Cons _ xs) = error "Can't get tail from empty stack"

update :: Stack a -> Int -> a -> Stack a
update Nil _ = undefined
update (Cons x xs) 0 y = Cons y xs
update (Cons x xs) i y = Cons x (update xs (i-1) y)
