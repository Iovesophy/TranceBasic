# makefile for tranceBasic metaprocessor.
mastermake: trancebasicmaker.rb main.c
	ruby trancebasicmaker.rb & cc main.c -o led 
