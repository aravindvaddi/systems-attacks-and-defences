giftcardreader: giftcardreader.c giftcard.h
	gcc -g -o giftcardreader giftcardreader.c giftcard.h

all: giftcardreader test

test: test0 test1 test2 test3 test4 test5 test6 test7 test8

test0: giftcardreader
	./giftcardreader 1 examplefile.gft

test1: giftcardreader
	./giftcardreader 1 part2/crash1.gft

test2: giftcardreader
	./giftcardreader 1 part2/crash2.gft

test3: giftcardreader
	./giftcardreader 1 part2/hang.gft

test4: giftcardreader
	./giftcardreader 1 part3/cov1.gft

test5: giftcardreader
	./giftcardreader 1 part3/cov2.gft

test6: giftcardreader
	./giftcardreader 2 part3/cov1.gft

test7:
	./giftcardreader 1 part3/fuzzer1.gft

test8:
	./giftcardreader 1 part3/fuzzer2.gft

clean:
	rm -rf giftcardreader giftcardreader.gcno giftcardreader.gcda giftcardreader.info giftcardreader_report
