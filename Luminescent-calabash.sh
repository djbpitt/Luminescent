#!/bin/sh

# For example, >Luminescent-calabash LMNL-process-example lmnl/frost-quote.lmnl
 
<<<<<<< HEAD
CALABASH=/Applications/xmlcalabash-1.1.16-97/xmlcalabash-1.1.16-97.jar
=======
CALABASH=/home/wendell/xmlcalabash-1.1.16-97/xmlcalabash-1.1.16-97.jar
>>>>>>> upstream/master
PIPELINE=$1.xpl
FILENAME=$2

echo Luminescent processing ... $FILENAME ...
java -Xmx1024m -jar $CALABASH -dtext/plain@$FILE $PIPELINE
