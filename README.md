ApplicativeSwift
=========================

_ApplicativeSwift_ provides the operators for Swift to realize the __applicative style__ used in Haskell.

```swift
let result: Int? = (+) <%> .Some(2) <*> .Some(3)
```

Purpose
-------------------------

We use a lot of `Optional` values in Swift. Sometimes we want to apply operators or functions to 2 or more optional values. But it is too complicated.

```swift
let a: Int? = 2
let b: Int? = 3

// How to calculate a + b? (wants nil if a or b is nil)

// Too complicated
let result: Int? = {
    if let a0 = a {
        if let b0 = b {
            return a0 + b0
        }
    }
    return nil
}()
```

In haskell, it can be done easily in the applicative style.

```haskell
// Haskell
(+) <$> a <*> b
```

_ApplicativeSwift_ provides such operators for Swift. Because the letter `$` cannot be used in operators in Swift, _ApplicativeSwift_ provides `<%>` instead of `<$>`. Therefore `a + b` can be calculated in the following way.

```swift
// Swift
(+) <%> a <*> b
```

Usage
-------------------------

```swift
// Optional
(+) <%> a <*> b
foo <%> a <*> b <*> c
bar <%> a <*> b <*> c <*> d
baz <%> a <*> b <*> c <*> d <*> e
qux <%> a <*> b <*> c <*> d <*> e <*> f
quux <%> a <*> b <*> c <*> d <*> e <*> f <*> g

// Array
(*) <%> [1, 2] <*> [3, 4]

// Currying
curry(+)(2) <*> .Some(3)
[curry(+), curry(*)] <*> [1, 2] <*> [3, 4]
```

How to Install
-------------------------

Put [Applicative.swift](Project/Applicative/Applicative.swift) into your project.

License
-------------------------

[The MIT License](LICENSE)

References
-------------------------

1. [Applicative functors - Learn You a Haskell for Great Good!](http://learnyouahaskell.com/functors-applicative-functors-and-monoids#applicative-functors)
2. [Advanced Operators - The Swift Programming Language](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/AdvancedOperators.html)
