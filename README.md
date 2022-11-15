# Variables
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

# Operators

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




