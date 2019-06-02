# Methods

#### Array#each
`Array#each` - Calls the given block once for each element in self, passing that element as a parameter. Returns the array itself. If no block is given, an Enumerator is returned.

```
a = [ "a", "b", "c" ]
a.each {|x| print x, " -- " }
```
produces:
```
a -- b -- c --
```

The `each` method is functionally equivalent to using loop and represents a simpler way of accomplishing the same task.

Once `each` is done iterating, it returns the original collection.

#### Array#select
`Array#select` - returns the value of the block. The block returns a value on each iteration, which then gets evaluated by `select`. The return value of the block is the return value of the last expression within the block. Once `select` is done iterating, it returns a new collection containing all of the selected elements that are truthy elements in the array.


#### Array#map
`Array#map` - `map` uses the return value of the block to perform transformation instead of selection. Always performs transformation based on the return value of the block. `Map` doesn't care about truthiness and takes the return value as the transformation criteria.

Certain collection types have access to specific methods for a reason.

| Method  | Action  | Considers the return value of the block?  | Returns a new collection from the method?  | Length of the returned collection  |
|---|---|---|---|---|
|`each`   | Iteration  | No  | No, it returns the original  | Length of the original  |
|`select`   | Selection  | Yes, its truthiness  | Yes  | Length of original or less  |
|`map`   | Transformation  | Yes  | Yes  | Length of original  |