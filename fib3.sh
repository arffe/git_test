#!/bin/bash
if [ $1 -lt 1 ]; then 
	echo please enter a number greater than zero
else
	num1=0
	num2=0
	COUNTER=1
	until [ $COUNTER -gt $1 ]; do
		if [ $COUNTER -eq 2 ]; then
			let fib=1
		else
			let fib=num1+num2
		fi
			let num1=num2
			let num2=fib
			let COUNTER=COUNTER+1
	done
	echo fibonacci for n=$1 is $fib
fi
