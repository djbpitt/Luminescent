#!/bin/sh

FILENAME=$1
<<<<<<< HEAD
CALABASH=/Applications/xmlcalabash-1.1.16-97/xmlcalabash-1.1.16-97.jar
PIPELINE=file:///Users/djb/Luminescent/LMNL-wf-check.xpl
=======
CALABASH=/home/wendell/xmlcalabash-1.1.16-97/xmlcalabash-1.1.16-97.jar
PIPELINE=file:///home/wendell/Documents/Luminescent/LMNL-wf-check.xpl
>>>>>>> upstream/master

echo LMNL syntax checking ... $FILENAME ...
java -Xmx1024m -jar $CALABASH -dtext/plain@$FILENAME $PIPELINE
