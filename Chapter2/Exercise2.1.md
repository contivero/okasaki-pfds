```Haskell
suffixes a@(x:xs) = a : suffixes xs
suffixes [] = []
```
A more convoluted alternative with `scanr` (just for the sake of it):
```Haskell
suffixes = tail $ scanr (:) []
```

TODO: O(n) proofs
