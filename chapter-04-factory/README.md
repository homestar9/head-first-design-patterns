# Chapter 4: Factory Pattern

## Two Types of Factory Patterns

There are two different approaches to the factory pattern, **Factory Methods** and **Abstract Factories**.

## Factory Method Pattern

### Factory Method Definition from Wikipedia

In class-based programming, the factory method pattern is a creational pattern that uses factory methods to deal with the problem of creating objects without having to specify the exact class of the object that will be created. This is done by creating objects by calling a factory method—either specified in an interface and implemented by child classes, or implemented in a base class and optionally overridden by derived classes—rather than by calling a constructor.

![UML Diagram Showing Factory Method Patern][uml_diagram]

[uml_diagram]: https://upload.wikimedia.org/wikipedia/commons/4/43/W3sDesign_Factory_Method_Design_Pattern_UML.jpg "UML Diagram Showing Factory Method Patern"

### Factory Method Definition from the Book

Defines an interface for creating an object, but let subclasses decide which class to instantiate.  Factory Method lets a class defer instantiation to the subclasses.

### Factory Method In Plain Enlgish

The factory method pattern defines an interface for creating an object, usually through an abstract class, and lets subclasses decide which class to instantiate.

In our example example, the PizzaStore has the factory method `cretePizza()`. This method only returns one type of product, pizzas. The fact that it only returns one "type" of product is important when deciding whether to use the factory method pattern or the abstract factory.

### Bonus! Dependency Inversion Principal

This chapter also demonstrates that the factory pattern also helps to implement the dependency inversion principal, which is the "D" in SOLID programming principals.  The inversion occurs because our pizza store only depends on pizza, which is an abstract class, and not the concrete classes themselves.

## Abstract Factory Pattern

### Abstract Factory Definition from Wikipedia

The abstract factory pattern provides a way to encapsulate a group of individual factories that have a common theme without specifying their concrete classes. In normal usage, the client software creates a concrete implementation of the abstract factory and then uses the generic interface of the factory to create the concrete objects that are part of the theme. The client does not know (or care) which concrete objects it gets from each of these internal factories, since it uses only the generic interfaces of their products. This pattern separates the details of implementation of a set of objects from their general usage and relies on object composition, as object creation is implemented in methods exposed in the factory interface.

![UML Diagram Showing Abstract Factory Patern][uml_diagram2]

[uml_diagram2]: https://upload.wikimedia.org/wikipedia/commons/a/aa/W3sDesign_Abstract_Factory_Design_Pattern_UML.jpg "UML Diagram Showing Abstract Factory Patern"

### Abstract Factory Definition from the Book

Provides an interface for creating families of realated or dependent objects without specifying their concrete classes.

### Abstract Factory In Plain Enlgish

The abstract factory pattern allows you to return a **family of products** as opposed to a single product.

In our example, we created `PizzaIngredientFactory` which is an abstract factory which has methods to create our different products like `createChese()`, `createSauce()`, etc...   The actual concrete implementations of the methods is handled by subclasses like `NYPizzaIngredientFactory`. What is interesting is that the methods in each concrete method like `createSauce()` are commonly implemented with factory methods.

## Adding an Ingredient Factory

The book complicated things a little by adding ingredient factories to offload the creation of regional ingredients. It introduced a problem where we could no longer specify different ways to `cut()` the pizza for different regions. I decided to break away from the example a little by moving the prepration methods to the store classes (e.g.`NyPizzaStore`) instead of inside the pizza classes, which makes better sends to me anyway since pizzas don't really cut themselves.

## The Bottom Line

No matter which factory pattern you prefer, the main reason why we want to use a pattern like this in OOP is because **it is better to depend on abstractions as opposed to concrete classes**.
