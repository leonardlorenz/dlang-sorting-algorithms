import std.stdio;
import std.random;
import sortingAlgorithmINTF;
import bubbleSort;
import insertionSort;
import mergeSort;

void main() {
    const int amount = 16;
    int[] array = new int[amount];

    SortingAlgorithm[] sortArr = new SortingAlgorithm[3];
    sortArr[0] = new bubbleSort.BubbleSort();
    sortArr[1] = new insertionSort.InsertionSort();
    sortArr[2] = new mergeSort.MergeSort();

    foreach (sortAlg; sortArr) {
        writeln("\n--- " ~ sortAlg.name ~ " ---");
        generateRandomArr(array);
        writeln(array);
        sortAlg.sort(array);
        writeln(array);
    }
}

void generateRandomArr(int[] ret_array) {
    for(int x = 0; x < ret_array.length; x++){
        ret_array[x] = uniform(0,9);
    }
}
