// if / else if / else, if as expression, defer

use std:io:print

fn main() {
	hunger i32 = 7

	if hunger > 10 {
		print("starving")
	} else if hunger > 5 {
		print("soon")
	} else {
		print("fine")
	}

	// single-line form
	if hunger == 0 { print("full") }

	// if as an expression: each block ends in an expression
	a i32 = 3
	b i32 = 4
	bigger _ = if a > b { a } else { b }

	// block expressions: the value is the last expression statement
	four i32 = { 2 + 2 }
	area _ = {
		width _ = 3
		height _ = 4
		width * height
	}

	// nested code block with its own scope
	{
		inner _ = 1
		defer print("leaving the block")   // runs at the end of this scope
		print("inside the block")
	}
}

fn max(a i32, b i32) i32 {
	ret if a > b { a } else { b }
}
