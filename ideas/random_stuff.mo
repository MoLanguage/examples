use std:io:print // bring print function into scope

fn main() {
    Str name := "Moritz" // declaring and initializing a new variable
    // name := "Moritz" // Potentially infer the type 

    
    print("Hallo")
    print(name)
    print("!")
    print("\n")
    print("This is printed in the next line")

    i32 num := 10

    print(num)

    num += 10 // add 10 to value stored in num.

    i32 a := 5
    i32 b := 10
    Str b := "b is a string now."
    b = "da ist das toll"
    if a > b {
        print("a is bigger")
    } else {
        print("b is bigger")
    }
}

fn fibonacci(i32 n) {
    
    if n == 1 | n == 2 {
        ret 1
    } else {
        ret fibonacci(fibonacci(n - 1) + fibonacci(n - 2))
    }
}

struct Rectangle {
    i32 width
    i32 height
}

impl Rectangle {
    fn area(self) i32 {
        ret self.width * self.height
    }
}


// Function with return type
fn addNums(i32 a, i32 b) i32 {
    ret a + b
}

sum Result {
    Success(i32)
    Error(Str)
}

fn calculate(i32 x, Flt64 y) Result {
    if x < 0 {
        ret Error("x must be positive")
    }
    ret Success(x + y as i32)
}

struct Vec2 {
    Flt32 x
    Flt32 y
}

impl Vec2 {
    fn doShit() {
        // 
    }
}

fn add(Vec2 vec, Vec2 vec2) Vec2 {
    
}

fn main() {
    vec := Vec2.init();
    vec = Vec2.init();

    vec.doShit();

    Str message := "Hello";
    i32 count := 42;
    Bool isValid := true;
    Vec2 position := Vec2 {x: 1.0, y: 2.0};
    
    Result res := Success(42);
    if res is Success(num) {
        print(num);
    }
}