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
