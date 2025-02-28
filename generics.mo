// Basic generic linked list
struct List(T) {
    T value
    List(T) next
}


// One 'MapEntry' as simple example for a type with 2 generic type parameters. Types require implementation of given traits
struct MapEntry(K Hashable, V Equatable) {
    K key
    V value
}


// generic function
fn find(List of T list, T target) (T Comparable) Int32 { 
    // Implementation 
}

// Multiple generic parameters
fn compare(A first, B second) (A Comparable, B Comparable) Bool {
    // Implementation
}

// Or maybe with multiple generics of the same type and generic return type
fn max(A x, A y) (A Comparable) A {
    ret if x > y x else y;
}