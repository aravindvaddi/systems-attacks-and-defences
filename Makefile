giftcardreader: giftcardreader.c giftcard.h
	gcc -g -o giftcardreader giftcardreader.c giftcard.h

all: giftcardreader test

test: test0 test1 test2 test3 test4 test5 test6 test7 test8 test9

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

test9: giftcardreader
	./giftcardreader 1 testcases/id:000006,src:000000,op:flip1,pos:68,+cov
	./giftcardreader 1 testcases/id:000007,src:000000,op:flip1,pos:68,+cov
	./giftcardreader 1 testcases/id:000009,src:000000,op:flip1,pos:68
	./giftcardreader 1 testcases/id:000012,src:000000,op:flip1,pos:68,+cov
	./giftcardreader 1 testcases/id:000016,src:000000,op:flip2,pos:0,+cov
	./giftcardreader 1 testcases/id:000020,src:000000,op:flip2,pos:68,+cov
	./giftcardreader 1 testcases/id:000025,src:000000,op:flip4,pos:68,+cov
	./giftcardreader 1 testcases/id:000026,src:000000,op:arith8,pos:68,val:+3,+cov
	./giftcardreader 1 testcases/id:000030,src:000000,op:arith8,pos:68,val:+33,+cov
	./giftcardreader 1 testcases/id:000033,src:000000,op:int8,pos:68,val:+64
	./giftcardreader 1 testcases/id:000038,src:000000,op:havoc,rep:64,+cov
	./giftcardreader 1 testcases/id:000044,src:000000,op:havoc,rep:8
	./giftcardreader 1 testcases/id:000047,src:000000,op:havoc,rep:16
	./giftcardreader 1 testcases/id:000049,src:000000,op:havoc,rep:128
	./giftcardreader 1 testcases/id:000052,src:000015,op:arith8,pos:68,val:+7
	./giftcardreader 1 testcases/id:000057,src:000046,op:havoc,rep:32
	./giftcardreader 1 testcases/id:000058,src:000051,op:flip1,pos:0
	./giftcardreader 1 testcases/id:000061,src:000053,op:havoc,rep:64
	./giftcardreader 1 testcases/id:000063,src:000053,op:havoc,rep:16
	./giftcardreader 1 testcases/id:000072,src:000067,op:arith8,pos:68,val:-3
	./giftcardreader 1 testcases/id:000073,src:000067,op:havoc,rep:8
	./giftcardreader 1 testcases/id:000076,src:000067,op:havoc,rep:4
	./giftcardreader 1 testcases/id:000077,src:000067,op:havoc,rep:16
	./giftcardreader 1 testcases/id:000079,src:000067,op:havoc,rep:16
	./giftcardreader 1 testcases/id:000085,src:000069,op:havoc,rep:16
	./giftcardreader 1 testcases/id:000087,src:000075,op:havoc,rep:64
	./giftcardreader 1 testcases/id:000088,src:000077,op:havoc,rep:8
	./giftcardreader 1 testcases/id:000100,src:000097,op:havoc,rep:64
	./giftcardreader 1 testcases/id:000101,src:000097,op:havoc,rep:128
	./giftcardreader 1 testcases/id:000102,src:000006,op:havoc,rep:32
	./giftcardreader 1 testcases/id:000103,src:000007,op:havoc,rep:32
	./giftcardreader 1 testcases/id:000105,src:000054,op:havoc,rep:128
	./giftcardreader 1 testcases/id:000107,src:000056,op:havoc,rep:32,+cov
	./giftcardreader 1 testcases/id:000108,src:000056,op:havoc,rep:32
	./giftcardreader 1 testcases/id:000111,src:000056,op:havoc,rep:32
	./giftcardreader 1 testcases/id:000112,src:000107,op:havoc,rep:64
	./giftcardreader 1 testcases/id:000113,src:000057,op:havoc,rep:2
	./giftcardreader 1 testcases/id:000116,src:000057,op:havoc,rep:64
	./giftcardreader 1 testcases/id:000117,src:000057,op:havoc,rep:16
	./giftcardreader 1 testcases/id:000118,src:000097,op:havoc,rep:64
	./giftcardreader 1 testcases/id:000121,src:000110,op:havoc,rep:32
	./giftcardreader 1 testcases/id:000122,src:000110,op:havoc,rep:16
	./giftcardreader 1 testcases/id:000123,src:000111,op:havoc,rep:16
	./giftcardreader 1 testcases/id:000125,src:000120,op:havoc,rep:64
	./giftcardreader 1 testcases/id:000126,src:000120,op:havoc,rep:128
	./giftcardreader 1 testcases/id:000128,src:000120,op:havoc,rep:64
	./giftcardreader 1 testcases/id:000129,src:000120,op:havoc,rep:128
	./giftcardreader 1 testcases/id:000130,src:000120,op:havoc,rep:128
	./giftcardreader 1 testcases/id:000131,src:000129,op:flip1,pos:1171
	./giftcardreader 1 testcases/id:000132,src:000082,op:havoc,rep:64
	./giftcardreader 1 testcases/id:000134,src:000116,op:havoc,rep:16
	./giftcardreader 1 testcases/id:000135,src:000114,op:havoc,rep:64
	./giftcardreader 1 testcases/id:000136,src:000018+000099,op:splice,rep:32
	./giftcardreader 1 testcases/id:000137,src:000024+000134,op:splice,rep:16
	./giftcardreader 1 testcases/id:000138,src:000032+000081,op:splice,rep:128
	./giftcardreader 1 testcases/id:000139,src:000132,op:havoc,rep:4
	./giftcardreader 1 testcases/id:000140,src:000138,op:flip1,pos:192
	./giftcardreader 1 testcases/id:000142,src:000138,op:havoc,rep:16
	./giftcardreader 1 testcases/id:000143,src:000140,op:havoc,rep:8

clean:
	rm -rf giftcardreader giftcardreader.gcno giftcardreader.gcda giftcardreader.info giftcardreader_report
