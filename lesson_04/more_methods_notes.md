# More Methods
Deconstruct how common built-in collection oriented methods work.

- Hashes are typically thought of as unordered and values are retrieved by keys. In some programming languages, the order is not preserved at all.
  - Since Ruby 1.9, order is preserved according to the order of insertion.

- When `include?` is called on a hash it only checks the keys, not the values.

- `Hash#include?` is essentially an alias for `Hash#key?` or `Hash#has_key?`

Parallel assign variables to capture the divided inner arrays:

```
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

odd #=> [1, 3]
even #=> [2]
```

Even if the collection is a hash, the return value of `partition` will always be an array.

#### Method Documentation (Ruby Docs)
Method documentation will normally include:
- One or more method signatures (which will indicate whether the method takes arguments and/ or a block and what it returns)

- A brief description of how the method is used, often covering different use cases

- Some code examples, again usually covering various use cases