default:
	@cd tools && gcc -O3 -fomit-frame-pointer build.c -o build
	@cd source && ../tools/build retro
	@cd source && ../tools/build retro-nocurses
	@mv source/retro .
	@mv source/retro-nocurses .

clean:
	@rm -f source/*.o
	@rm -f tools/build
	@rm -f retro
