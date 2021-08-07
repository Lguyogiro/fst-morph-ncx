all:
	hfst-lexc ncx.lexc -o ncx-no-twol.hfst
	hfst-twolc ncx.twol -o ncx-twol.hfst
	hfst-compose-intersect -1 ncx-no-twol.hfst -2 ncx-twol.hfst -o ncx-down.hfst
	hfst-invert ncx-down.hfst -o ncx.hfst

	rm ncx-no-twol.hfst
	rm ncx-twol.hfst
	rm ncx-down.hfst
clean:
	rm *hfst