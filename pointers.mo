// Pointers, mutability and method calls

use std:io:print

struct Cat {
	name str
	food_level u32
}

// writable pointer: can change the caller's cat
fn feed(cat &w Cat) {
	cat.food_level += 10   // field access dereferences automatically
}

// read-only pointer: can only look
fn print_name(cat &Cat) {
	print(cat.name)
	// cat.food_level = 0 would be an ERROR: read-only pointer
}

// by value: gets a copy, which is read-only
fn is_hungry(cat Cat) bool {
	ret cat.food_level < 5
}

fn set_to(target &w i32, value i32) {
	target.* = value       // explicit dereference with postfix .*
}

fn main() {
	cat Cat = .{ name = "Matz", food_level = 0 }

	// &cat on a variable gives a writable pointer &w Cat
	feed(&cat)

	// &w Cat narrows to &Cat automatically
	print_name(&cat)

	// pointers as variables
	ptr &Cat = &cat
	wptr &w Cat = &cat
	print(ptr.*.name)
	print(ptr.name)        // same as above

	// method call syntax: a.f(b) is f(a, b), taking the address when needed
	cat.feed()             // feed(&cat)
	cat.print_name()       // print_name(&cat)
	if cat.is_hungry() {   // is_hungry(cat)
		cat.feed()
	}

	// writing through an explicit dereference
	number i32 = 0
	set_to(&number, 42)

	// casts
	address usize = cast:[usize](ptr)
	forced &w Cat = cast:[&w Cat](ptr)   // explicit escape hatch

	// w is only special after & in a type, it's still a valid name
	w _ = 640
}
