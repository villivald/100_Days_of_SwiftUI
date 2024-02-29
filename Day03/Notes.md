## Useful array methods
- .append() # Adds an element to the end of the list
- .sorted() # Sorts the list
- .count() # Counts the number of times an element appears in the list
- .contains() # Checks if an element is in the list
- .remove(at: index) # Removes an element from the list
- .removeAll() # Removes all elements from the list

## Dictionary
- Dictionaries work almost the same as arrays, but instead of using an index to access an element, you use a key:
```swift
var myDictionary = ["name": "John", "age": 25]
print(myDictionary["name"]) // John
```

## Set
- A set is a collection of unique values, it can not contain duplicates.
- The order of the elements in a set is not guaranteed.
- ```insert()``` method is used to add an element to a set instead of ```append()``` method.
- The most important advantage - it works much faster than an array or a dictionary.

## Enum
- Enum is a powerful feature in Swift that allows you to define a type with a fixed number of possible values:
```swift
enum CompassPoint {
    case north
    case south
    case east
    case west
}
```
