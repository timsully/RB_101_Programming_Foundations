# Variable Scope Notes

  - Choose descriptive variables & method names
  - develop a habit of thinking about how to name things descriptively
  - snake_case - when naming everything
  - CamelCase - use CamelCase format when naming Classes
  - Use UPPERCASE letterings for Constants
   
  
  - make sure a methods responsibility is limited
  - Ruby always returns a value, the key value shouldn't be the intent of the method
  - when working w/ a method, you should be able to mentally extract the method from a larger program and work w/ it in isolation
  - method names should reflect mutation
  - use naming conventions in your code to specify which types of methods mutate and which ones return values
  - name yours methods from the perspective of using them later
  - in Ruby, everything is truthy except nil and false
  - Inner scope can access variable initialized in an outer scope, but not vice versa
  - 5 types of variable: local, constants, global, class, instance variables
  - a variable scope is determined by where it is initialized
  - Ruby blocks create a new scope for local variables
  - avoid variable shadowing which prevents access to the outer scope variable
  - the only variables a method definition has access to must be passed into the method definition
  - local variables that aren't intialized inside a method definition must be passed in as parameters
  - Constants have lexical scope
  - Method definition - when within our code, we define a Ruby method using the def keyword
  - Method invocation - when we call a method, whether that happens to be an existing method from the Ruby Code API or Core Library, or a custom method that you've designed yourself using the def keyword
  - blocks and methods can interact with each other
  - methods can access local variables through interaction w/ blocks
  - 