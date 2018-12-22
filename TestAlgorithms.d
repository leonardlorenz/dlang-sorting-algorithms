import std.stdio;
import std.random;
import BubbleSort;
import InsertionSort;

void main(){
    const int amount = 16;
    int[] array = new int[amount];

    SortingAlgoritm[] sortArr = new SortingAlgoritm[2];
    sortArr[0] = new BubbleSort.BubbleSort();
    sortArr[1] = new InsertionSort.InsertionSort();

    foreach(sortAlg; sortArr){
        writeln("\n--- " + sortAlg.name + " ---");
        generateRandomArr(array);
        writeln(array);
        sortAlg.sort(array);
        writeln(array);
    }
}

void generateRandomArr(int[] ret_array){
    for(int x = 0; x < ret_array.length; x++){
        ret_array[x] = uniform(0,9);
    }
}
