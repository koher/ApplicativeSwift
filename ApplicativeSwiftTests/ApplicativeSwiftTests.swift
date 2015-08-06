import UIKit
import XCTest
import ApplicativeSwift

class ApplicativeSwiftTests: XCTestCase {
    func testOptional() {
        let a: Int? = 1
        let b: Int? = 2
        let c: Int? = 4
        let d: Int? = 8
        let e: Int? = 16
        let f: Int? = 32
        let g: Int? = 64
        
        XCTAssert(((+) <^> a <*> b) == .Some(3))
        XCTAssert((add3 <^> a <*> b <*> c) == .Some(7))
        XCTAssert((add4 <^> a <*> b <*> c <*> d) == .Some(15))
        XCTAssert((add5 <^> a <*> b <*> c <*> d <*> e) == .Some(31))
        XCTAssert((add6 <^> a <*> b <*> c <*> d <*> e <*> f) == .Some(63))
        XCTAssert((add7 <^> a <*> b <*> c <*> d <*> e <*> f <*> g) == .Some(127))
        
        XCTAssert(((+) <^> nil <*> b) == nil)
        XCTAssert((add3 <^> a <*> nil <*> c) == nil)
        XCTAssert((add4 <^> a <*> b <*> nil <*> d) == nil)
        XCTAssert((add5 <^> a <*> b <*> c <*> nil <*> e) == nil)
        XCTAssert((add6 <^> a <*> b <*> c <*> d <*> nil <*> f) == nil)
        XCTAssert((add7 <^> a <*> b <*> c <*> d <*> e <*> nil <*> g) == nil)
        
        XCTAssert((.Some(curry(+)) <*> a <*> b) == .Some(3)) // in Haskell: pure (+) <$> a <*> b
    }
    
    func testArray() {
        let a: [Int] = [1, 2]
        let b: [Int] = [3, 4]
        
        XCTAssertEqual((*) <^> a <*> b, [3, 4, 6, 8])
        XCTAssertEqual([curry(+), curry(*)] <*> a <*> b, [4, 5, 5, 6, 3, 4, 6, 8]) // in Haskell: [(+), (*)] <*> a <*> b
    }
    
    func testOptionalInitializer() {
        let bar: Int = 2
        let baz: Float = 3.0
        let qux: String = "5"
        
        guard let foo = Foo.init <^> bar <*> baz <*> qux else {
            XCTFail()
            return
        }
        
        XCTAssertEqual(foo.bar, 2)
        XCTAssertEqual(foo.baz, 3.0)
        XCTAssertEqual(foo.qux, "5")
    }
}

func add3(a: Int, b: Int, c: Int) -> Int {
    return a + b + c
}

func add4(a: Int, b: Int, c: Int, d: Int) -> Int {
    return a + b + c + d
}

func add5(a: Int, b: Int, c: Int, d: Int, e: Int) -> Int {
    return a + b + c + d + e
}

func add6(a: Int, b: Int, c: Int, d: Int, e: Int, f: Int) -> Int {
    return a + b + c + d + e + f
}

func add7(a: Int, b: Int, c: Int, d: Int, e: Int, f: Int, g: Int) -> Int {
    return a + b + c + d + e + f + g
}

struct Foo {
    let bar: Int
    let baz: Float
    let qux: String
}