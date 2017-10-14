-- Empty module to serve as the default current module.
module Hugs where

rld[] = []
rld ((c,n):x) = (daux c n)++ rld x
daux _ 0 = 	[]
daux c n = 	c:daux c (n-1)

rle [] = []
rle (c:x) = 	eaux x c 1 

eaux [] _ _ = []
eaux (c:x) n k =	c==n	eaux x n k+1
otherwise = 	eaux x c k