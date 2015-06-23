infix operator <*> { associativity left }
infix operator <%> { associativity left }

public func curry<T0, T1, R>(f: (T0, T1) -> R) -> T0 -> T1 -> R {
    return { t0 in { t1 in f(t0, t1) } }
}

public func curry<T0, T1, T2, R>(f: (T0, T1, T2) -> R) -> T0 -> T1 -> T2 -> R {
    return { t0 in { t1 in { t2 in f(t0, t1, t2) } } }
}

public func curry<T0, T1, T2, T3, R>(f: (T0, T1, T2, T3) -> R) -> T0 -> T1 -> T2 -> T3 -> R {
    return { t0 in { t1 in { t2 in { t3 in f(t0, t1, t2, t3) } } } }
}

public func curry<T0, T1, T2, T3, T4, R>(f: (T0, T1, T2, T3, T4) -> R) -> T0 -> T1 -> T2 -> T3 -> T4 -> R {
    return { t0 in { t1 in { t2 in { t3 in { t4 in f(t0, t1, t2, t3, t4) } } } } }
}

public func curry<T0, T1, T2, T3, T4, T5, R>(f: (T0, T1, T2, T3, T4, T5) -> R) -> T0 -> T1 -> T2 -> T3 -> T4 -> T5 -> R {
    return { t0 in { t1 in { t2 in { t3 in { t4 in { t5 in f(t0, t1, t2, t3, t4, t5) } } } } } }
}

public func curry<T0, T1, T2, T3, T4, T5, T6, R>(f: (T0, T1, T2, T3, T4, T5, T6) -> R) -> T0 -> T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> R {
    return { t0 in { t1 in { t2 in { t3 in { t4 in { t5 in { t6 in f(t0, t1, t2, t3, t4, t5, t6) } } } } } } }
}

public func curry<T0, T1, T2, T3, T4, T5, T6, T7, R>(f: (T0, T1, T2, T3, T4, T5, T6, T7) -> R) -> T0 -> T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> R {
    return { t0 in { t1 in { t2 in { t3 in { t4 in { t5 in { t6 in { t7 in f(t0, t1, t2, t3, t4, t5, t6, t7) } } } } } } } }
}

public func curry<T0, T1, T2, T3, T4, T5, T6, T7, T8, R>(f: (T0, T1, T2, T3, T4, T5, T6, T7, T8) -> R) -> T0 -> T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> R {
    return { t0 in { t1 in { t2 in { t3 in { t4 in { t5 in { t6 in { t7 in { t8 in f(t0, t1, t2, t3, t4, t5, t6, t7, t8) } } } } } } } } }
}

public func curry<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, R>(f: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9) -> R) -> T0 -> T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> R {
    return { t0 in { t1 in { t2 in { t3 in { t4 in { t5 in { t6 in { t7 in { t8 in { t9 in f(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9) } } } } } } } } } }
}

public func curry<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, R>(f: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10) -> R) -> T0 -> T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> R {
    return { t0 in { t1 in { t2 in { t3 in { t4 in { t5 in { t6 in { t7 in { t8 in { t9 in { t10 in f(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10) } } } } } } } } } } }
}

public func curry<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, R>(f: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11) -> R) -> T0 -> T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> R {
    return { t0 in { t1 in { t2 in { t3 in { t4 in { t5 in { t6 in { t7 in { t8 in { t9 in { t10 in { t11 in f(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11) } } } } } } } } } } } }
}

public func curry<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, R>(f: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12) -> R) -> T0 -> T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> T12 -> R {
    return { t0 in { t1 in { t2 in { t3 in { t4 in { t5 in { t6 in { t7 in { t8 in { t9 in { t10 in { t11 in { t12 in f(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12) } } } } } } } } } } } } }
}

public func curry<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, R>(f: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13) -> R) -> T0 -> T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> T12 -> T13 -> R {
    return { t0 in { t1 in { t2 in { t3 in { t4 in { t5 in { t6 in { t7 in { t8 in { t9 in { t10 in { t11 in { t12 in { t13 in f(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13) } } } } } } } } } } } } } }
}

public func curry<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, R>(f: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14) -> R) -> T0 -> T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> T12 -> T13 -> T14 -> R {
    return { t0 in { t1 in { t2 in { t3 in { t4 in { t5 in { t6 in { t7 in { t8 in { t9 in { t10 in { t11 in { t12 in { t13 in { t14 in f(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14) } } } } } } } } } } } } } } }
}

public func curry<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, R>(f: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15) -> R) -> T0 -> T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> T12 -> T13 -> T14 -> T15 -> R {
    return { t0 in { t1 in { t2 in { t3 in { t4 in { t5 in { t6 in { t7 in { t8 in { t9 in { t10 in { t11 in { t12 in { t13 in { t14 in { t15 in f(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15) } } } } } } } } } } } } } } } }
}

// Optional

public func <*><T0, T1>(lhs: (T0 -> T1)?, rhs: T0?) -> T1? {
    switch lhs {
    case .None:
        return nil
    case .Some(let transform):
        return rhs.map(transform)
    }
}

public func <%><T0, R>(lhs: T0 -> R, rhs: T0?) -> R? {
    return rhs.map { lhs($0) }
}

public func <%><T0, T1, R>(lhs: (T0, T1) -> R, rhs: T0?) -> (T1 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, R>(lhs: (T0, T1, T2) -> R, rhs: T0?) -> (T1 -> T2 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, T3, R>(lhs: (T0, T1, T2, T3) -> R, rhs: T0?) -> (T1 -> T2 -> T3 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, T3, T4, R>(lhs: (T0, T1, T2, T3, T4) -> R, rhs: T0?) -> (T1 -> T2 -> T3 -> T4 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, T3, T4, T5, R>(lhs: (T0, T1, T2, T3, T4, T5) -> R, rhs: T0?) -> (T1 -> T2 -> T3 -> T4 -> T5 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, T3, T4, T5, T6, R>(lhs: (T0, T1, T2, T3, T4, T5, T6) -> R, rhs: T0?) -> (T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7) -> R, rhs: T0?) -> (T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8) -> R, rhs: T0?) -> (T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9) -> R, rhs: T0?) -> (T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10) -> R, rhs: T0?) -> (T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11) -> R, rhs: T0?) -> (T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12) -> R, rhs: T0?) -> (T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> T12 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13) -> R, rhs: T0?) -> (T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> T12 -> T13 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14) -> R, rhs: T0?) -> (T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> T12 -> T13 -> T14 -> R)? {
    return curry(lhs) <%> rhs
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15) -> R, rhs: T0?) -> (T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> T12 -> T13 -> T14 -> T15 -> R)? {
    return curry(lhs) <%> rhs
}

// Array

public func <*><T0, T1>(lhs: [T0 -> T1], rhs: [T0]) -> [T1] {
    return lhs.flatMap { f in rhs.map { t0 in f(t0) } }
}

public func <%><T0, R>(lhs: T0 -> R, rhs: [T0]) -> [R] {
    return rhs.map { lhs($0) }
}

public func <%><T0, T1, R>(lhs: (T0, T1) -> R, rhs: [T0]) -> [T1 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, R>(lhs: (T0, T1, T2) -> R, rhs: [T0]) -> [T1 -> T2 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, T3, R>(lhs: (T0, T1, T2, T3) -> R, rhs: [T0]) -> [T1 -> T2 -> T3 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, T3, T4, R>(lhs: (T0, T1, T2, T3, T4) -> R, rhs: [T0]) -> [T1 -> T2 -> T3 -> T4 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, T3, T4, T5, R>(lhs: (T0, T1, T2, T3, T4, T5) -> R, rhs: [T0]) -> [T1 -> T2 -> T3 -> T4 -> T5 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, T3, T4, T5, T6, R>(lhs: (T0, T1, T2, T3, T4, T5, T6) -> R, rhs: [T0]) -> [T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7) -> R, rhs: [T0]) -> [T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8) -> R, rhs: [T0]) -> [T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9) -> R, rhs: [T0]) -> [T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10) -> R, rhs: [T0]) -> [T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11) -> R, rhs: [T0]) -> [T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12) -> R, rhs: [T0]) -> [T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> T12 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13) -> R, rhs: [T0]) -> [T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> T12 -> T13 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14) -> R, rhs: [T0]) -> [T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> T12 -> T13 -> T14 -> R] {
    return rhs.map { curry(lhs)($0) }
}

public func <%><T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, R>(lhs: (T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15) -> R, rhs: [T0]) -> [T1 -> T2 -> T3 -> T4 -> T5 -> T6 -> T7 -> T8 -> T9 -> T10 -> T11 -> T12 -> T13 -> T14 -> T15 -> R] {
    return rhs.map { curry(lhs)($0) }
}
