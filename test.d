import std.stdio;
import std.random;
import sortingalgorithms.bubblesort;

void main(){
    int amount = 16;
    int[] array;
    generateRandomArr(array, amount);
    bubblesort(array);
    writeln(array);
    object.destroy(array);
}

int[] generateRandomArr(int[] array, int amount){
    foreach (x; array){
        array[x] = uniform(0,9);
    }
    return array;
}
