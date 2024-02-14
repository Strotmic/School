//Create array of 3 integers
int[] array = new int[3] { 1, 2, 3 };

//Get value at index 0
Console.WriteLine(GetOrDefault(array, 0)); // Output: 1

//Get value at index 3
Console.WriteLine(GetOrDefault(array, 3)); // Output: 0, because default(int) is 0

T GetOrDefault<T>(T[] array, int index)
{
    if (index < 0 || index >= array.Length)
        return default(T); // Safe default
    return array[index];
}







