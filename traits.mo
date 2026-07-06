// generic trait example

trait PartialOrd[T] {
  fn cmp[T](first *Self, second: *T) Ordering
}

trait PartialOrd[T] {
  fn cmp[T](first *Self, second: *T) Ordering
}

sum Ordering {
  Greater
  Equal
  Less
}

impl PartialOrd[NumWrapper], PartialOrd[i32]

// this implementation is forced by the compiler because of impl PartialOrd[NumWrapper] in NumWrapper's struct definition
fn cmp(first *NumWrapper, second: *NumWrapper) Ordering {
  ret first.num.cmp(second.num) // assuming type i32 has an implementation for PartialOrd[i32]]
}

// implementing a trait on a struct allows a value of that struct type to be used as generic function arguments that ask for a generic type implementing PartialOrd 
struct NumWrapper { 
  num i32
}

// struct String impl PartialEq[String], PartialEq[str] { ... }

// To make the * operator work, Vector2 needs to implement a multiplication trait.
// If traits weren't generic, Vector2 could only multiply with another Vector2. But because the trait is generic, you can explicitly tell the compiler how to multiply a Vector2 with a float:
trait Multiply[Rhs] {
    fn mul(a *Self, b *Rhs)
}

// 1. Vector * Vector
// 2. Vector * Float
struct Vector2 impl Multiply[Vector2], Multiply[f32] {
    x f32
    y f32
}

fn main() {
  numwrapper := NumWrapper
  numwrapper.num = 10
  cmp(&numwrapper, &numwrapper)
  numwrapper.cmp(&numwrapper)
}