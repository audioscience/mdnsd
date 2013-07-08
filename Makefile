all: mquery mhttp

mhttp: mhttp.c
	$(CC) -Os -g -o mhttp mhttp.c mdnsd.c 1035.c sdtxt.c xht.c

mquery: mquery.c
	$(CC) -Os -g -o mquery mquery.c mdnsd.c 1035.c

clean:
	rm -f mquery mhttp
