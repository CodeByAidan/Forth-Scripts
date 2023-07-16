\ Works up to 7! :(
\ 8! is 40320, which is too big for a 32-bit integer (max is 
: factorial ( n -- result )
  1 swap 1 begin
    dup 1 + swap *
    dup rot 1 + <=
  while
    drop
  repeat ;

: print-factorial ( n -- )
  ." The factorial of " . ." is: " factorial . ;

: main
  ." Enter a number: "
  20 ACCEPT DROP \ Assuming input buffer size of 20 characters
  decimal
  print-factorial
  cr ;

main
