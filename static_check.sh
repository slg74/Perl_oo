#!/bin/bash

STATUS=$(perltidy o.pl t/test_animal.pl t/test_automobile.pl >/dev/null 2>&1; echo $?)
echo $STATUS

if [ $STATUS == 1 ]; then
	echo "perltidy OK"
else
	echo "perltidy FAILED. Check `pwd` for ERR file."
fi
