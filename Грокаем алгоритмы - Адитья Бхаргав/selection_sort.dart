// O(n^2)

void main(){
  SelectionSortOptimization sort = new SelectionSortOptimization();
  List<int> myArr = [1,3,4,6,1,23,1,5,8,3,5,2,1,2,3,5,7,9];
  print(sort.selectionSort(myArr));
}

// Из учебника
class SelectionSort{
  List<int> selectionSort(List<int> arr){
    List<int> newArr = [];
    while (arr.isNotEmpty){
      int newElement = findSmallest(arr);
      newArr.add(newElement);
      arr.remove(newElement);
    }
    return newArr;
  }


  int findSmallest(List<int> arr){
    int smallest = arr[0];
    for (int num in arr){
      if (num < smallest){
        smallest = num;
      }
    }
    return smallest;
  }

}

// После доп. серчинга
class SelectionSortOptimization{
  List<int> selectionSort(List<int> arr){
    for (int i = 0; i < arr.length - 1; i++){
      int minIndex = i;
      for (int j = i+1; j < arr.length; j++){
        if (arr[j] < arr[minIndex]){
          minIndex = j;
        }
      }
      int temp = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = temp;
    }
    return arr;
  }

}