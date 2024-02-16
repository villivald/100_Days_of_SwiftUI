- Integers can not be used in a string with a + sign as it is

```swift
    let number = 5
    let badString = "The number is " + number // Error

    let goodString = "The number is \(number)" // Correct
    let goodString2 = "The number is " + String(number) // Also correct
```