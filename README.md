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

