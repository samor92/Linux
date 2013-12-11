#!/bin/bash

CreateScript (){

printf '#!/bin/bash\nFibonacci(){\n  case $1 in\n    0|1) printf "$1 " ;;\n    *) printf "$(( $(Fibonacci $(($1-2)) )+$(Fibonacci $(($1-1)) ) )) ";;\n  esac\n}\n\nfor (( i=0; i <= $1; i++ ))\ndo\n  Fibonacci $i\ndone\necho' > $1;
}

CreateScript $1
chmod +x $1
./$1 $2
rm -fr $1

