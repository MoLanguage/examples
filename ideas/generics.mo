// Basic generic linked list
struct List(T) {
    T value
    List(T) next
}

nums := List(i32) // list can be instantiated with actual type.

// One 'MapEntry' as simple example for a type with 2 generic type parameters. Types require implementation of given traits
struct MapEntry(K, V) {
    key K 
    value V 
}


// generic function
fn find(List(T), T target) (T) i32 { 
    // Implementation 
}

// Multiple generic parameters
fn compare(A first, B second) (A, B) Bool {
    // Implementation
}

// Or maybe with multiple generics of the same type and generic return type
fn max(x A, y A) (A PartialOrd) A {
    ret if x > y x else y
}