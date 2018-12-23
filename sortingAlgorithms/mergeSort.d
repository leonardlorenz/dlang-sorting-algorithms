import sortingAlgorithmINTF;
import std.string;

class MergeSort : SortingAlgorithm{

    public string name() { return "merge sort";};

    void sort(int[] array){
        int arraySize = cast(int) array.length;
        int leftIndex = 0;
        int midIndex = arraySize / 2;

    }

    void mergeSort(int[] leftArr, int[] rightArr){
        int leftArrSize = cast(int) leftArr.length;
        int rightArrSize = cast(int) rightArr.length;
        if (leftArrSize > 2) {
            int midIndex = leftArrSize / 2;
            int[] newLeftArr = leftArr[0 .. midIndex];
            int[] newRightArr = leftArr[midIndex .. arraySize];
            mergeSort()
        }

        if (rightArrSize > 2) {
            int midIndex = rightArrSize / 2;
            int[] newLeftArr = leftArr[0 .. midIndex];
            int[] newRightArr = leftArr[midIndex .. arraySize];
            mergeSort()
        }

        if (leftArrSize == 2 && rightArrSize == 2) {
            if (leftArr[0] > leftArr[1]) {
                // swap
            }

            if (rightArr[0] > rightArr[1]) {
                // swap
            }

            int midIndex = leftArrSize / 2;
            int[] newLeftArr = leftArr[0 .. midIndex];
            int[] newRightArr = leftArr[midIndex .. arraySize];
            mergeSort()
        }

        if (leftArrSize == 2) {
        }

        if (rightArrSize == 2) {
        }
    }
}
