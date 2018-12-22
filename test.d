import std.stdio;
import std.random;
import bubblesort;

void main(){
    int amount = 16;
    int[] array;
    generateRandomArr(array, amount);
    bubblesort.sort(array);
    writeln(array);
    object.destroy(array);
}

int[] generateRandomArr(int[] array, int amount){
    foreach (x; array){
        array[x] = uniform(0,9);
    }
    return array;
}
