#!/bin/bash
num1=0
num2=1
if [ $1 -lt 1 ]; then
	echo please enter a number greater than zero
else
	if [ $1 -eq 1 ]; then
		let num3=num1
	else
		if [ $1 -eq 2 ]; then
			let num3=num2
		else
			COUNTER=2
			while [ $COUNTER -lt $1 ]; do
				let num3=num1+num2
				let num1=num2
				let num2=num3
				let COUNTER=COUNTER+1
			done
		fi
	fi
	echo fibonacci for n=$1 is $num3
fi
