// Functions

use std:io:print

fn main() {
	result _ = add(1, 2)
	print(greeting())
	nothing()
	clamped(500)
}

// no parameters, no return type
fn nothing() {
}

// parameters and return type
fn add(a i32, b i32) i32 {
	ret a + b
}

fn greeting() str {
	ret "Hello, world!"
}

// long argument lists can span lines, trailing comma allowed
fn configure(
	width u32,
	height u32,
	fullscreen bool,
) {
}

// parameters are read-only. Copy into a local to modify
fn clamped(n i32) i32 {
	// n = 100 would be an ERROR: parameters are read-only
	m _ = n
	if m > 100 { m = 100 }
	ret m
}

// returning early
fn first_positive(a i32, b i32) i32 {
	if a > 0 { ret a }
	ret b
}

// --- functions as values ---

struct Cat { name str, age u32 }

fn by_age(a Cat, b Cat) bool {
	ret a.age < b.age
}

/// calls less on the first two cats
fn first_is_less(cats []Cat, less fn(Cat, Cat) bool) bool {
	ret less(cats[0], cats[1])
}

fn use_function_values() {
	cats [2]Cat = .{ Cat.{ name = "Matz", age = 3 }, Cat.{ name = "Beans", age = 1 } }

	first_is_less(cats[..], by_age)                                     // a named function
	first_is_less(cats[..], fn(a Cat, b Cat) bool { ret a.age > b.age }) // a function literal

	compare fn(Cat, Cat) bool = by_age
	compare(cats[0], cats[1])
}
