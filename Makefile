compile:
	ldc testAlgorithms.d SortingAlgorithms/*.d

run:
	./testAlgorithms

clean:
	rm testAlgorithms testAlgorithms.o
