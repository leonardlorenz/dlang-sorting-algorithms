import SortingAlgorithmINTF;
import std.stdio;

class Bubblesort : SortingAlgorithm{
    void sort(int[] array){
        for(int x = cast(int) array.length - 1; x > 0; x--){
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
