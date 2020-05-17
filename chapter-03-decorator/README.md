# Chapter 3: Decorator Pattern

Definition from Wikipedia:

The decorator pattern is a design pattern that allows behavior to be added to an individual object, dynamically, without affecting the behavior of other objects from the same class. The decorator pattern is often useful for adhering to the Single Responsibility Principle, as it allows functionality to be divided between classes with unique areas of concern.

![UML Diagram Showing Decorator Patern][uml_diagram]

## My Implementation

I chose to have my abstract base classes' implicit methods throw errors if their concrete counterparts don't implement required methods properly. I also have each abstrat base class run an `onInit()` method which throws an error. This helps prevent trying to instantiate an abstract class.  Additionally, this means all of my concrete implementations should use `onInit()` as its constructor.

I don't care for the fact that condiments have their individual addon price included in the `cost()` function.  What if you want to get the price individually for some reason.  I would probably want to have this as a property within the class.

## Problems with the Decorator Pattern

I see a few problems with this pattern that smell funny to me.  First of all, I don't like the idea of wrapping other classes and simulating their type. In other words a `condiment` is not a `beverage`.  I also don't like that each decorator has to implement every method that the wrapped class has.  This means if there's a method called `drink()` in the `beverage` class, the `condiment` decorator needs to have a `drink()` method also (even if it just returns `beverage.drink()`).

[uml_diagram]: https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Decorator_UML_class_diagram.svg/600px-Decorator_UML_class_diagram.svg.png "UML Diagram Showing Decorator Patern"
