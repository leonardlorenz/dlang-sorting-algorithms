import std.stdio;
import std.random;
import Bubblesort;

void main(){
    const int amount = 16;
    int[] array = new int[amount];

    generateRandomArr(array);
    writeln(array);
    Bubblesort bubble = new Bubblesort.Bubblesort();
    bubble.sort(array);
    writeln(array);
}

void generateRandomArr(int[] ret_array){
    for(int x = 0; x < ret_array.length; x++){
        ret_array[x] = uniform(0,9);
    }
}
