import SortingAlgorithmINTF;

class Bubblesort : SortingAlgorithm{
    void sort(int[] array){
        foreach(x; array){
            foreach(y; array){
                if (array[x] > array[y]){
                    int temp = array[y];
                    array[y] = array[x];
                    array[x] = temp;
                }
            }
        }
    }
}
