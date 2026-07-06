// Basic generic linked list
struct List[T] {
    value T
    next_list List[T]
}

//nums := List[i32] // list can be instantiated with actual type.

// One 'MapEntry' as simple example for a type with 2 generic type parameters. Types require implementation of given traits
struct MapEntry[K, V] {
    K key 
    V value 
}

// Multiple generic parameters
fn compare [A impl Ord Hash, B impl Ord Hash] (first A, second B) Ordering {
    // Implementation
}

// Or maybe with multiple generics of the same type and generic return type
fn max[A impl PartialOrd](x A, y A) A {
    ret if x > y { x } else { y }
}

fn test() {
  list := List[i32] 
  list.create()
  find:[i32](&list, 10)
}

// generic function
fn find[T](list *List[T], target T) i32 { 
    // Implementation 
}