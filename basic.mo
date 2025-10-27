use rand:int_in_range

fn main() {
  print(generate_message())
}

fn generate_message() str {
  if int_in_range(1, "test") > 5 { ret "Hello, world!" } else { ret "Falafeleistee" }
}

fn foo(bar i32, baz i32) i32 {
  a i32 := 10
  bar /= a
  if len(generate_message()) > 5 {}
  ret bar + baz
}

struct Foo {
  a i32
}