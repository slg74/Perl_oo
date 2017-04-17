#!/bin/bash

perltidy o.pl t/test_animal.pl t/test_automobile.pl
if [ $? != 0 ]; then
	echo "perltidy failed. Check `pwd` for error messages."
else
	echo "perltidy OK"
fi
