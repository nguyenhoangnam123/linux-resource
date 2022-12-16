#!/bin/bash

DATA=`cat <<EOF
    John Daggett, 341 King Road, Plymouth, Massachusetts
    Alice Ford, 22 East Broadway, Richmond VA
    Orville Thomas, 11345 Oak Bridge Road, Tulsa OK
    Terry Kalkas, 402 Lans Road, Beaver Falls PA
    Eric Adams, 20 Post Road, Sudbury, Massachusetts
    Hubert Sims, 328A Brook Road, Roanoke VA
    Amy Wilde, 334 Bayshore Pkwy, Mountain View CA
    Sal Carpenter, 73 6th Street, Boston, Massachusetts
EOF
`

echo $DATA | sed -e '
    s/ MA/, Massachusetts/
    s/ PA/, Pennsylvania/
    s/ CA/, California/
    s/ VA/, Virginia/
    s/ OK/, Oklahoma/
'
