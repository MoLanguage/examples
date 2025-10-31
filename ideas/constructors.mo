struct Foo {
  a i32
  b i32
}

struct Bar {
  foo Foo
  a i32
}

struct Baz {
  foo Foo?
  a i32
}

fn main() {
  foo Foo := Foo { a=10, b=10 }
  foo = Foo { a=10 } // b initialized with default value
  
  bar Bar := Bar { foo=foo } // foo has to be initialized as it's a non-null value
  bar = Bar { a=10 } // compile error, because field foo is a non-null value
  
  baz Baz := Baz // fine, because foo can be nil
}

// Seperate idea:

fn main() {
  foo Foo := Foo 
  // the only struct constructor that exists is this. Just state the struct name. 
  // This will return an empty struct with default values.
  // It's an expression that returns a pointer to the new object. 
  // meaning, you can again call methods on it that take a pointer as first argument
  foo Foo := Foo.init()
  foo := Foo.init_specific(10)
}

fn init(foo *Foo) {
  // init fields
  foo.val = 10
}

fn init_specific(foo *Foo, val i32) {
  foo.val = val
}