CREATE ABUF 80 ALLOT

: ACCEPT-TEST
     CR ." PLEASE TYPE UP TO 80 CHARACTERS:" CR
     ABUF 80 ACCEPT
     CR ." RECEIVED: " 34 EMIT
     ABUF SWAP TYPE 34 EMIT CR
;

ACCEPT-TEST