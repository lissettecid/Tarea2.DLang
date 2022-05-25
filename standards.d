import std;
import std.stdio;
import core.stdc.stdlib : malloc, free;
import std.conv : ConvException, to;
import std.file;

void main(string[] args)
{
    writeln("Hello World");
    writeln("Hello " ~ args[1]);

    writef("Enter your age: ");
    string age;
    age = readln();

    writeln("Great your age is " ~ age);

    int num = 11;
    enforce(num > 10, "The number must be higher than 10");

    File file = File("Test1.txt", "w");
    file.writeln("Hi, my name is Lissette.");
    file.writeln("This is a test.");
    file.writeln(".......");
    file.close();

    file = File("Test1.txt", "r");

    while(!file.eof())
    {
        string line = chomp(file.readln());
        writeln(line);
    }

    file.close();
}