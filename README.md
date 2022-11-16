# Swift Summary
## Variables
- `let` for constants
- `var` for variables
- `print()` to log variables
- `let name: String` or `var name: String` for type casting a variable
- Strings types are `String`
- Integers types are `Int`
- Boolean types are `Bool`
- Floats (32-bit floating-point nuner) `Float`
- Doubles (64-bit floating-point nuner) `Double`
- string interpolation `"Some variable content => \(variable)"`
- tuples is a way to group more than one value `let http404Error = (404, "Not Found")`
- `typealias` define aliases for existing types
- `Optionals` are used to define variables that might be set up to nil and it is represented with a `?` at the end of the type like `Int?`
- `nil` is the `null` value
- optional binding sets up a variable with optional values depending if the value of the conditional have or not any value (is there any other way to do this?)
   ```swift
    if let actualNumber = Int(possibleNumber) {
        print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
    } else {
        print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
    }
    // Prints "The string "123" has an integer value of 123"
   ```
- For error handling add `throws` next to any method that pontentially can raise an error, to handle errors use the sentences:
    ```swift
    func makeASandwich() throws {
        // ...
    }

    do {
        try makeASandwich()
        eatASandwich()
    } catch SandwichError.outOfCleanDishes {
        washDishes()
    } catch SandwichError.missingIngredients(let ingredients) {
        buyGroceries(ingredients)
    }
    ```

## Operators

- Assigment operator `=` or `let (x,y)
 = (1, 3)`
- Arithmetic Operators
  - `+` Addition & String concatenation 
  - `-` Subtraction
  - `*` Multiplication
  - `/` Division
  - `%` Reminder or Module
- Compound Operators
  - `+=` Adds on top of the value and reassigns the result to the variable `a +=2`
- Comparison Operators
  -  `a == b` Equal to
  -  `a != b` Not equal to
  -  `a > b` Greater than
  -  `a < b` Less than
  -  `a >= b` Greater than or equal to
  -  `a <= b` Less than or equal to
- Ternary Operators
  - `condition ? answer1 : answer2` conditions check
  - `optionaVariable ?? defaultValue` Nil-Coalescing Operator
- Range operators
  - `(a..b)` Closed range operators, goes from a inclusive to b inclusive
  - `(a..<b)` Half-Open Range Operator, goes from a inclusive to b exclusive
  - `[a..]` One-Sided Ranges, starts in a and continues as long as possible
  - `[a..<b]` Half-Open One-Sided Ranges

- Logical Operators
  - `!a` NOT a
  - `a && b` a AND b
  - `a || b` a OR b

## Strings and Characters

- String Literals `let someString = "Some string literal value"`
- Multiline String Literals
  ```swift
  let quotation = """
  The White Rabbit put on his spectacles.  "Where shall I begin,
  please your Majesty?" he asked.

  "Begin at the beginning," the King said gravely, "and go on
  till you come to the end; then stop."
  """
  ```
- Strings are passed as copies and not as refference

  > If you create a new String value, that String value is copied when it’s passed to a function or method, or when it’s assigned to a constant or variable. In each case, a new copy of the existing String value is created, and the new copy is passed or assigned, not the original version.


## Working with Characters

- Is defined with the `Character` type

  ```swift
  let exclamationMark: Character = "!"
  ```

- `String` is an iterable of characters
  ```swift
  let greeting = "Hello, playground"

  for char in greeting {
      print("\(char) is \(type(of: char))")
  }

  // Prints "H is Character"
  // Prints "e is Character"
  // Prints "l is Character"
  // Prints "l is Character"
  // Prints "o is Character"
  // Prints ", is Character"
  // Prints "  is Character"
  // Prints "p is Character"
  // Prints "l is Character"
  // Prints "a is Character"
  // Prints "y is Character"
  // Prints "g is Character"
  // Prints "r is Character"
  // Prints "o is Character"
  // Prints "u is Character"
  // Prints "n is Character"
  // Prints "d is Character"
  ``` 

- Can create a `String` from a `Character` array
  
  ```swift
  let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
  let catString = String(catCharacters)
  print(catString)
  // Prints "Cat!🐱"
  ```

- Substrings are a different class and exists temporaly to use it for a longer time you need to create a new `String` Instance

  ```swift
  let greeting = "Hello, world!"
  let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
  let beginning = greeting[..<index]
  // beginning is "Hello"

  // Convert the result to a String for long-term storage.
  let newString = String(beginning)
  ```

## Collection Types
  - All of the collections are strongly typed so it can only store one type of value
  - Collections are mutable(add, remove or change items) if they are asign to a variable `var` and unmutable if they are assign to a constant `let`

  ### Arrays: Ordered sets of values
  - Empty Array
    ```swift
    var someInts: [Int] = []
    print("someInts is of type [Int] with \(someInts.count) items.")
    // Prints "someInts is of type [Int] with 0 items."
    ```
  
  - Array with default value

    ```swift
    var threeDoubles = Array(repeating: 0.0, count: 3)
      // threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]
    ```
  
  - Concatenating two arrays
  
    ```swift
        var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
      // anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]

      var sixDoubles = threeDoubles + anotherThreeDoubles
      // sixDoubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]

    ```
  
  - Creating an Array with an Array Literal
    ```swift
    var shoppingList: [String] = ["Eggs", "Milk"]
    // shoppingList has been initialized with two initial items
    ```
  
  - Iteration

    ```swift
    for item in shoppingList {
        print(item)
    }
    // Six eggs
    // Milk
    // Flour
    // Baking Powder
    // Bananas
    ```

  - Iteration with index
    ```swift
    for (index, value) in shoppingList.enumerated() {
        print("Item \(index + 1): \(value)")
    }
    // Item 1: Six eggs
    // Item 2: Milk
    // Item 3: Flour
    // Item 4: Baking Powder
    // Item 5: Bananas
    ```

  ### Sets: Unordered collections of unique values
  - Stores distinct values of the same type in a collection with no defined ordering.
 
  - A type must be hashable in order to be stored in a set
 
  - Initialize an empty Set
    ```swift
    var letters = Set<Character>()
    print("letters is of type Set<Character> with \(letters.count) items.")
    // Prints "letters is of type Set<Character> with 0 items."
    ```

  - Initialize from an Array literal
    ```swift
    var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
    // favoriteGenres has been initialized with three initial items
    ```
  
  - A set type can’t be inferred from an array literal alone, it must be explicitly declared, however, when is initialized with an array literal is not necesary to specify the content type.
    ```swift
    var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
    // favoriteGenres has been initialized with three initial items
    ```
  
  - Accessing and Modifying a Set
    - `.count()`: returns number of items inside the set
    - `.isEmpty()`: returns true or false depending if it is empty or not
    - `insert()`: Adds a new item into the set
    - `remove()`: Removes a new item into the set
    - `.contains()`: returns true or false depending if a particular items is present in the set
  
  - Iteration

    ```swift
    for genre in favoriteGenres {
        print("\(genre)")
    }
    // Classical
    // Jazz
    // Hip hop
    ```

  - Ordered Iteration

    ```swift
    for genre in favoriteGenres.sorted() {
        print("\(genre)")
    }
    // Classical
    // Hip hop
    // Jazz
    ```
  
  - Operations

    <div style='background-color:white; padding:10px;margin-bottom:10px'>

      ![Sets Operations](https://docs.swift.org/swift-book/_images/setVennDiagram_2x.png)

    </div>

    - `intersection()`: Creates a new set with only the values common to both sets.

    - `symmetricDifference()`: Creates a new set with values in either set, but not both.

    - `union()`: Creates a new set with all of the values in both sets.

    - `subtracting()`: Creates a new set with values not in the specified set.

    ```swift
    let oddDigits: Set = [1, 3, 5, 7, 9, 3]
    let evenDigits: Set = [0, 2, 4, 6, 8]
    let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

    print ("oddDigits union evenDigits => \(oddDigits.union(evenDigits).sorted())")
    print ("oddDigits intersection evenDigits => \(oddDigits.intersection(evenDigits).sorted())")
    print ("oddDigits subtracting evenDigits => \(oddDigits.subtracting(evenDigits).sorted())")
    print ("oddDigits symmetricDifference evenDigits => \(oddDigits.symmetricDifference(evenDigits).sorted())")

    /**
      oddDigits union evenDigits => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
      oddDigits intersection evenDigits => []
      oddDigits subtracting evenDigits => [1, 3, 5, 7, 9]
      oddDigits symmetricDifference evenDigits => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    */
    ```

  - Set Membership and Equality
    <div style='background-color:white; padding:10px;margin-bottom:10px'>

      ![Sets Operations](https://docs.swift.org/swift-book/_images/setEulerDiagram_2x.png)

    </div>
    - `==` Determines whether two sets contain all of the same values.
    
    - `isSubset(of:)` Determines whether all of the values of a set are contained in the specified set.
    
    - `isSuperset(of:)` Determines whether a set contains all of the values in a specified set.
    
    - `isStrictSubset(of:)`/`isStrictSuperset(of:)` methods to determine whether a set is a subset or superset, but not equal to, a specified set.
    
    - `isDisjoint(with:)` Determines whether two sets have no values in common.



  ### Dictionarys: Unordered sets of key-value pairs

  - Stores associations between keys of the same type and values of the same type in a collection with no defined ordering.

  - Empty dictionary
    ```swift
    var namesOfIntegers: [Int: String] = [:]
    // namesOfIntegers is an empty [Int: String] dictionary
    namesOfIntegers[16] = "sixteen"
    // namesOfIntegers now contains 1 key-value pair
    namesOfIntegers = [:]
    // namesOfIntegers is once again an empty dictionary of type [Int: String]
    ```

  - Creating a Dictionary with a Dictionary Literal
    ```swift
    var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
    ```

  - Accessing and Modifying a Dictionary
    - `.count()`: returns number of items inside the set
    - `.isEmpty()`: returns true or false depending if it is empty or not
    - `[:]`/ `updateValue(_:forKey:)`: Adds a new item into the dictionary
    - `[:] = nil` / `removeValue(forKey:)`: Removes a new item into the dictionary
  - Iterating Over a Dictionary
    ```swift
    for airportCode in airports.keys {
        print("Airport code: \(airportCode)")
    }
    // Airport code: LHR
    // Airport code: YYZ

    for airportName in airports.values {
        print("Airport name: \(airportName)")
    }
    // Airport name: London Heathrow
    // Airport name: Toronto Pearson
    ```

## Control Flows

  ### For loops

  - Used to iterate over a sequence, such as items in an array, ranges of numbers, or characters in a string.
  - Iterate over arrays
    ```swift
      let names = ["Anna", "Alex", "Brian", "Jack"]
      for name in names {
          print("Hello, \(name)!")
      }
      // Hello, Anna!
      // Hello, Alex!
      // Hello, Brian!
      // Hello, Jack!
    ```
  - Iterate over Dictionaries
    ```swift
    let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
    for (animalName, legCount) in numberOfLegs {
        print("\(animalName)s have \(legCount) legs")
    }
    // cats have 4 legs
    // ants have 6 legs
    // spiders have 8 legs
    ```
  - Iterate over numeric ranges

    ```swift
    for index in 1...5 {
        print("\(index) times 5 is \(index * 5)")
    }
    // 1 times 5 is 5
    // 2 times 5 is 10
    // 3 times 5 is 15
    // 4 times 5 is 20
    // 5 times 5 is 25
    ```
  - Iterate over arrays

