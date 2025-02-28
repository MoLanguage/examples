// Mo programming language sample file.

use io // import io module
use io "foo" // import io module with custom name

use module:submodule

fn main() {
    thisIsATest()
}

// This is a comment yeah!!
fn thisIsATest() {
    Int32 a := 123
    Str b := "Hello, "
    b = b.append("world!\n")
    
    io:print(b) // call function of io module. In this case to print to std output.

    b = "Something" // Overriding value b with "Something".

    if a != 0 {
        doThing(arg) // function call statement
    }
    

    // boolean AND and OR with only one ampersand. Bitwise & is used more rarely and can be done with b&
    // maybe I won't do this to profit off of familiarity?
    
    if a < 5 | a > 5 {
        a = a + b // arithmetic operators
        a = a / b
        a = a * b
        a = a - b
        a = -a
    }
    if a > 5 & a < 10 {
        print("Alta!");
    }

    // Check equality. Single equals = already taken
    if a == b {
        
    }

    a = a + b; io:print(a) // use optional semicola to write multiple expressions in one line.
}

// Not sure yet: Give possibility to call function with infix notation
@infix
fn addFloats(Flt64 a, Flt64 b) Flt64 {
    ret a + b
}

@infix
fn plus(Flt64 a, Flt64 b) Flt64 {
    ret a + b
}

// a = b addFloats c;

// a = b plus c;

@infix
fn addThreeFloats(Flt64 a, Flt64 b, Flt64 c) Flt64 {
    ret a + b + c;
}

// num = a addFloats b addFloats c;

// Struct declaration
struct Foo {
    Int32 a
    String b
}

struct Bar {
    Int32 a, String b // Optional commas to declare fields in same line
}

// Sum types
sum Season {
    Spring
    Summer
    Autumn
    Winter
}

// Generic Option type
sum Option(T) {
    Some(T)
    None
}

// loops

for {
	// infinite loop
}

for character, index in someString {
	io:print(index, character)
}
for value, index in someArray {
	io:print(index, value)
}
for key, value in someMap {
	io:print(key, value)
}

// Some design principles
//  - Orthogonality of features
//  - Type as least as possible, as much as necessary
//	- Keep commonly typed "phrases" short
//	- Make typing the language ergonomic for your fingers
//  - Types are ALWAYS written in PascalCase. Including primitives.
