# Chapter 4: Factory Pattern

Definition from Wikipedia:

In class-based programming, the factory method pattern is a creational pattern that uses factory methods to deal with the problem of creating objects without having to specify the exact class of the object that will be created. This is done by creating objects by calling a factory method—either specified in an interface and implemented by child classes, or implemented in a base class and optionally overridden by derived classes—rather than by calling a constructor.

In Plain Enlgish:

The factory method pattern defines an interface for creating an object, usually through an abstract class, and lets subclasses decide which class to instantiate.

## Dependency Inversion Principal

This chapter also demonstrates that the factory pattern also helps to implement the dependency inversion principal, which is the "D" in SOLID programming principals.  The inversion occurs because our pizza store only depends on pizza, which is an abstract class, and not the concrete classes themselves.

![UML Diagram Showing Factory Patern][uml_diagram]

[uml_diagram]: https://upload.wikimedia.org/wikipedia/commons/4/43/W3sDesign_Factory_Method_Design_Pattern_UML.jpg "UML Diagram Showing Factory Patern"



