{-Implementation of Stacks using lists-}

type Stack a = [a]

empty :: Stack a
empty = []

isEmpty :: Stack a -> Bool
isEmpty = null

cons :: a -> Stack a -> Stack a
cons = (:)

stackHead :: Stack a -> a
stackHead = head

stackTail :: Stack a -> Stack a
stackTail = tail
