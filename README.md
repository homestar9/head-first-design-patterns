# Head First Design Patterns

[Head First Design Patterns](https://www.amazon.com/Head-First-Design-Patterns-Brain-Friendly/dp/0596007124) is a book published by Eric Freeman and Elisabeth Robson.  It is published by O'Reilly.  The book attempts to explain commonly used OOP (Object Oriented Programming) design patterns in easy to understand examples.

Since the book mostly uses Java code examples, the goal of this repository is to translate each pattern into modern CFML.

## How is this repository organized?

Each subfolder represents a chapter in the book.  Additionally, each subfolder exists as its own web application with a distinct `Application.cfc` file.

Whenever possible objects should exist in a `models` folder within the application to better reflect a true MVC (model view controller) application.

To run and test the code within this repository, I set up an default `server.json` file which you can use with Commandbox to quickly start up a CFML server using the engine of your choice.

Many of the examples output debug information to the CFML console. I recommend following the server's log using the Commandbox command `server log --follow` so you can watch the console as it updates.
