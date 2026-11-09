// Generics

use std:mem:Allocator

// generic struct
struct List[T] {
	items []w T
	len usize
}

// two type parameters
struct MapEntry[K, V] {
	key K
	value V
}

// generic function
fn append[T](list &w List[T], item T, alloc &w Allocator) {
	// Implementation
}

fn find[T impl Eq](list &List[T], target T) Option[usize] {
	// Implementation
}

// trait bounds: several traits separated by spaces
fn compare[A impl Ord Hash, B impl Ord Hash](first A, second B) Ordering {
	// Implementation
}

fn max[T impl Ord](x T, y T) T {
	ret if x > y { x } else { y }
}

fn test(alloc &w Allocator) {
	list List[i32] = zero   // empty list

	// type arguments are inferred...
	list.append(10, alloc)

	// ...or given explicitly with the "lil fish" :[]
	append:[i32](&list, 20, alloc)
	index _ = find:[i32](&list, 10)

	entry MapEntry[str, i32] = .{ key = "answer", value = 42 }
	biggest _ = max(3, 7)
}
