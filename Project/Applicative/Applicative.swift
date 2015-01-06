infix operator <%> { associativity left }
infix operator <*> { associativity left }

public func curry<T, U, R>(f: (T, U) -> R) -> T -> U -> R {
	return { t in { u in f(t, u) } }
}

public func curry<T, U, V, R>(f: (T, U, V) -> R) -> T -> U -> V -> R {
	return { t in { u in { v in f(t, u, v) } } }
}

public func curry<T, U, V, W, R>(f: (T, U, V, W) -> R) -> T -> U -> V -> W -> R {
	return { t in { u in { v in { w in f(t, u, v, w) } } } }
}

public func curry<T, U, V, W, X, R>(f: (T, U, V, W, X) -> R) -> T -> U -> V -> W -> X -> R {
	return { t in { u in { v in { w in { x in f(t, u, v, w, x) } } } } }
}

public func curry<T, U, V, W, X, Y, R>(f: (T, U, V, W, X, Y) -> R) -> T -> U -> V -> W -> X -> Y -> R {
	return { t in { u in { v in { w in { x in { y in f(t, u, v, w, x, y) } } } } } }
}

public func curry<T, U, V, W, X, Y, Z, R>(f: (T, U, V, W, X, Y, Z) -> R) -> T -> U -> V -> W -> X -> Y -> Z -> R {
	return { t in { u in { v in { w in { x in { y in { z in f(t, u, v, w, x, y, z) } } } } } } }
}

// Optional

public func <%><T, R>(lhs: T -> R, rhs: T?) -> R? {
	return rhs.map { lhs($0) }
}

public func <*><T, U>(lhs: (T -> U)?, rhs: T?) -> U? {
	switch lhs {
	case .None:
		return nil
	case .Some(let transform):
		return rhs.map(transform)
	}
}

public func <%><T, U, R>(lhs: (T, U) -> R, rhs: T?) -> (U -> R)? {
	return curry(lhs) <%> rhs
}

public func <%><T, U, V, R>(lhs: (T, U, V) -> R, rhs: T?) -> (U -> V -> R)? {
	return curry(lhs) <%> rhs
}

public func <%><T, U, V, W ,R>(lhs: (T, U, V, W) -> R, rhs: T?) -> (U -> V -> W -> R)? {
	return curry(lhs) <%> rhs
}

public func <%><T, U, V, W ,X, R>(lhs: (T, U, V, W, X) -> R, rhs: T?) -> (U -> V -> W -> X -> R)? {
	return curry(lhs) <%> rhs
}

public func <%><T, U, V, W ,X, Y, R>(lhs: (T, U, V, W, X, Y) -> R, rhs: T?) -> (U -> V -> W -> X -> Y -> R)? {
	return curry(lhs) <%> rhs
}

public func <%><T, U, V, W ,X, Y, Z, R>(lhs: (T, U, V, W, X, Y, Z) -> R, rhs: T?) -> (U -> V -> W -> X -> Y -> Z -> R)? {
	return curry(lhs) <%> rhs
}

// Array

public func <%><T, R>(lhs: T -> R, rhs: [T]) -> [R] {
	return rhs.map { lhs($0) }
}

public func <*><T, U>(lhs: [T -> U], rhs: [T]) -> [U] {
	return lhs.map { f in rhs.map { t in f(t) } }.reduce([]) { $0 + $1 }
}

public func <%><T, U, R>(lhs: (T, U) -> R, rhs: [T]) -> [U -> R] {
	return rhs.map { curry(lhs)($0) }
}

public func <%><T, U, V, R>(lhs: (T, U, V) -> R, rhs: [T]) -> [U -> V -> R] {
	return rhs.map { curry(lhs)($0) }
}

public func <%><T, U, V, W ,R>(lhs: (T, U, V, W) -> R, rhs: [T]) -> [U -> V -> W -> R] {
	return rhs.map { curry(lhs)($0) }
}

public func <%><T, U, V, W ,X, R>(lhs: (T, U, V, W, X) -> R, rhs: [T]) -> [U -> V -> W -> X -> R] {
	return rhs.map { curry(lhs)($0) }
}

public func <%><T, U, V, W ,X, Y, R>(lhs: (T, U, V, W, X, Y) -> R, rhs: [T]) -> [U -> V -> W -> X -> Y -> R] {
	return rhs.map { curry(lhs)($0) }
}

public func <%><T, U, V, W ,X, Y, Z, R>(lhs: (T, U, V, W, X, Y, Z) -> R, rhs: [T]) -> [U -> V -> W -> X -> Y -> Z -> R] {
	return rhs.map { curry(lhs)($0) }
}
