thing0 Foo?   // maybe null Foo
thing1 *?Foo  // maybe null pointer to an Foo 
thing2 *?Foo? // maybe null pointer to a maybe null Foo


// By default, variables cannot be nil
fn null_safety() {
  non_null Foo
  non_null = nil // panic!
}

fn takes_non_null(a Foo) { }

// if you call it with a maybe null thing, you get a compile time error

a Foo? = Foo
takes_non_null(a)

// There are no default values except for primitives
struct Foo {
  a i32
}
// so if you instantiate a struct that contains a Foo field
struct Bar {
  foo Foo
}

// Bar will initialize each field recursively until it finds primitives to initialize.
bar Bar = Bar
bar.foo.a // = 0 

// this is often not what you want, so you want to have a constructor function like this:
fn init42(bar *Bar) {
  bar.foo.a = 42
}
// so then you can do this:

bar Bar = Bar
bar.init42()

// or this
bar Bar = init42(&Bar)