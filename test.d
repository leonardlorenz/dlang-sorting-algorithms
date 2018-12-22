import std.stdio;
import std.random;
import BubbleSort;
import InsertionSort;

void main(){
    const int amount = 16;
    int[] array = new int[amount];

    writeln("\n--- bubble sort ---");
    generateRandomArr(array);
    writeln(array);
    BubbleSort bubble = new BubbleSort.BubbleSort();
    bubble.sort(array);
    writeln(array);

    writeln("\n--- insertion sort ---");
    generateRandomArr(array);
    writeln(array);
    InsertionSort insertion = new InsertionSort.InsertionSort();
    insertion.sort(array);
    writeln(array);

}

void generateRandomArr(int[] ret_array){
    for(int x = 0; x < ret_array.length; x++){
        ret_array[x] = uniform(0,9);
    }
}
