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