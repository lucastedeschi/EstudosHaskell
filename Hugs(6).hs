rld[] = []
rld ((c,n):x) = (daux c n)++ rld x
daux _ 0 = []
daux c n = c:daux c (n-1)