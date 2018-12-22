void sort(int[] array){
    foreach(x; array.length){
        foreach(y; array.length){
            if (array[x] > array[y]){
                int temp = array[y];
                array[y] = array[x];
                array[x] = temp;
            }
        }
    }
}
