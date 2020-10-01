giftcardreader: giftcardreader.c giftcard.h
	gcc -o giftcardreader giftcardreader.c giftcard.h

all: giftcardreader test

test: test0 test1 test2 test3

test0: giftcardreader
	./giftcardreader 1 examplefile.gft

test1: giftcardreader
	./giftcardreader 1 part2/crash1.gft

test2: giftcardreader
	./giftcardreader 1 part2/crash2.gft

test3: giftcardreader
	./giftcardreader 1 part2/hang.gft

clean:
	rm giftcardreader giftcardreader.gcno
