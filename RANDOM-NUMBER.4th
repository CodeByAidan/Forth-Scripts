VARIABLE RND \ seed

: *+ ( a b c -- d ) \ multiply and add
  \ Calculate d = (a * b + c) mod 2^17
  ROT ROT * ROT + 131071 AND
;

: ran ( -- n, a random number within 0 to 32420 )
  BEGIN
    RND @ 6927 31421 *+ 32421 MOD
    DUP RND @ 32420 > 0= \ Check if greater than or equal to 32420
    DUP 0= \ Check if negative
    OR \ Combine the two conditions
  UNTIL
  DUP RND ! \ Store the seed
;

: random-loop ( n -- )
  \ Generate and display n random numbers
  DUP 0 DO
    ran .
  LOOP DROP
;

DECIMAL
HERE RND !  \ Initialize seed

\ Debugging statement
10 random-loop
