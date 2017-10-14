module Hugs where

tam [] = 0
tam (_:x) = 1 + tam x

s2l lst [] = lst
s2l [] lst = lst
s2l (a:x) (b:y) = (a+b): s2l x y