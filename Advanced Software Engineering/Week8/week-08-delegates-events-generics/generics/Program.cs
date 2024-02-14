// Using Box with an integer
List<int> intList = new List<int>();
intList.Add(123);

List<string> list = new List<string>();
list.Add("Hello Generics");

Box<int> intBox = new Box<int>(123);


intBox.DisplayContent();

// Using Box with a string
Box<string> stringBox = new Box<string>("Hello Generics");
stringBox.DisplayContent();