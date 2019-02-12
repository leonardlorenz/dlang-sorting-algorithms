import sortingAlgorithmINTF;
import std.string;
import std.stdio;

class MergeSort : SortingAlgorithm{

    public string name() { return "merge sort"; };

    void sort(int[] array) {
        int arraySize = cast(int) array.length;
        int midIndex = arraySize / 2;
        int[] newLeftArr = array[0 .. midIndex];
        int[] newRightArr = array[midIndex .. arraySize];
        array = mergeSort(newLeftArr, newRightArr);
        writeln(array);
    }

    int[] mergeSort(int[] leftArr, int[] rightArr) {
        /** save the array sizes in a temporary variable */
        int leftArrSize = cast(int) leftArr.length;
        int rightArrSize = cast(int) rightArr.length;

        if (leftArrSize > 2) {
            isBiggerThanTwo(leftArr);
        }

        if (rightArrSize > 2) {
            isBiggerThanTwo(rightArr);
        }

        if (leftArrSize == 2) {
            sortArr(leftArr);
        }

        if (leftArrSize == 2) {
            sortArr(rightArr);
        }

        return merge(leftArr, rightArr);
    }

    void isBiggerThanTwo(int[] array) {
        /** save the array sizes in a temporary variable */
        int arrSize = cast(int) array.length;
            int midIndex = arrSize / 2;
            int[] newLeftArr = array[0 .. midIndex];
            int[] newRightArr = array[midIndex .. arrSize];
            mergeSort(newLeftArr, newRightArr);
    }

    void sortArr(int[] array) {
        if(array[0] > array[1]){
            int swap = array[0];
            array[0] = array[1];
            array[1] = swap;
        }
    }

    int[] merge(int[] leftArr, int[] rightArr) {
        int leftArrSize = cast(int) leftArr.length;
        int rightArrSize = cast(int) rightArr.length;
        int[] returnArr = new int[leftArrSize + rightArrSize];

        int biggestArr = (leftArr.length > rightArr.length) ?
            cast(int) leftArr.length : cast(int) rightArr.length;

        /* TODO fix array being all zeroes */
        for (int i = 0; i < biggestArr; i++) {
            for (int j = 0; j < biggestArr; j += 2) {
                if (j > biggestArr) {
                    if (leftArr[i] >= rightArr[i]) {
                        returnArr[j] = rightArr[i];
                        returnArr[j+1] = leftArr[i+1];
                    } else {
                        returnArr[j+1] = rightArr[i+1];
                        returnArr[j] = leftArr[i];
                    }
                }
            }
        }
        return returnArr;
    }
}
