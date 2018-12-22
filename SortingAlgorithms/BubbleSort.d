import SortingAlgorithmINTF;

class BubbleSort : SortingAlgorithm{
    void sort(int[] array){
        int arraySize = cast(int) array.length;
        for(int x = arraySize - 1; x > 0; x--){
            for(int y = 0; x > y; y++){
                if(array[y] > array[y + 1]){
                    int temp = array[y];
                    array[y] = array[y + 1];
                    array[y + 1] = temp;
                }
            }
        }
    }
}
