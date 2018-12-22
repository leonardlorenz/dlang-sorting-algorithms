import SortingAlgorithmINTF;
import std.string;

class InsertionSort : SortingAlgorithm{

    public string name() { return "insertion sort";};

    void sort(int[] array){
        int arraySize = cast(int) array.length;
        int x;
        for(int y = 0; y < arraySize; y++){
            x = y;
            while(x > 0){
                if(array[x - 1] > array[x]){
                    int temp = array[x - 1];
                    array[x - 1] = array[x];
                    array[x] = temp;
                }
                x--;
            }
        }
    }
}
