
int[] ints = { 1, 2, 3, 4, 5 };
var result = AddOneToArrayElements(ints);
Console.WriteLine(string.Join(", ", result));

ints = new int[] { 1, 2, 3, 4, 5 };
result = SubtrachtOneToArrayElements(ints);
Console.WriteLine(string.Join(", ", result));

int[] AddOneToArrayElements(int[] numbers)
{
    int[] result = new int[numbers.Length];
    for (int index = 0; index < result.Length; index++)
        result[index] = numbers[index] + 1;
    return result;
}
 int[] SubtrachtOneToArrayElements(int[] numbers)
{
    int[] result = new int[numbers.Length];
    for (int index = 0; index < result.Length; index++)
        result[index] = numbers[index] + 1;
    return result;
}
 