
using System;
using System.Collections.Generic;
using System.Linq;

class Program
{
    static void Main()
    {
        // Create a list of books.
        List<Book> books = new List<Book>
        {
            new Book { Title = "The Great Gatsby", Author = "F. Scott Fitzgerald", Year = 1925 },
            new Book { Title = "To Kill a Mockingbird", Author = "Harper Lee", Year = 1960 },
            new Book { Title = "1984", Author = "George Orwell", Year = 1949 },
            new Book { Title = "Pride and Prejudice", Author = "Jane Austen", Year = 1813 },
            new Book { Title = "The Catcher in the Rye", Author = "J.D. Salinger", Year = 1951 },
            new Book { Title = "The Hobbit", Author = "J.R.R. Tolkien", Year = 1937 },
            new Book { Title = "The Alchemist", Author = "Paulo Coelho", Year = 1988 }
        };

        Console.WriteLine("Welcome to the Book Query System!");
        Console.WriteLine("---------------------------------");

        // Query Syntax: Find books published after 1950.
        var recentBooks = from book in books
                          where book.Year > 1950
                          select book;

        Console.WriteLine("\nRecent Books (Query Syntax):");
        DisplayBooks(recentBooks);

        // Method Syntax: Find books authored by George Orwell.
        var orwellBooks = books.Where(book => book.Author == "George Orwell");

        Console.WriteLine("\nGeorge Orwell's Books (Method Syntax):");
        DisplayBooks(orwellBooks);

        // Query Syntax: Find the earliest published book.
        var earliestBook = (from book in books
                            orderby book.Year ascending
                            select book).FirstOrDefault();

        Console.WriteLine("\nEarliest Published Book (Query Syntax):");
        DisplayBook(earliestBook);

        Console.WriteLine("\nThank you for using the Book Query System!");
    }

    static void DisplayBooks(IEnumerable<Book> books)
    {
        foreach (var book in books)
        {
            Console.WriteLine($"Title: {book.Title}, Author: {book.Author}, Year: {book.Year}");
        }
    }

    static void DisplayBook(Book book)
    {
        if (book != null)
        {
            Console.WriteLine($"Title: {book.Title}, Author: {book.Author}, Year: {book.Year}");
        }
        else
        {
            Console.WriteLine("No book found.");
        }
    }
}

class Book
{
    public string Title { get; set; }
    public string Author { get; set; }
    public int Year { get; set; }
}


/*
List<int> numbers = new List<int> { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
var filteredNumbers = numbers.Where(n => n % 2 == 0);

Console.WriteLine("Filtered numbers:");
foreach (var num in filteredNumbers)
{
    Console.WriteLine(num);
}

var filteredNumbers2 = from num in numbers
                       where num > 5
                       select num;

Console.WriteLine("Filtered numbers 2:");
foreach (var num in filteredNumbers2)
{
    Console.WriteLine(num);
}
*/