// Sum types, Option and pattern matching with if is

use std:io:print

// variants without data, separated by line breaks...
sum Season {
	Spring
	Summer
	Fall
	Winter
}

// ...or by commas
sum Direction { North, East, South, West }

// variants with unnamed (tuple-like) or named (struct-like) data
sum Shape {
	Circle(f32)
	Rect(f32, f32)
	Polygon { points []Vec2, closed bool }
	Empty
}

// generic sum types
sum Option[T] {
	Some(T)
	None
}

sum Result[T, E] {
	Ok(T)
	Err(E)
}

struct Vec2 { x f32, y f32 }

// there is no null: absence is Option
fn find(nums []i32, wanted i32) Option[usize] {
	i usize = 0
	for i < len(nums) {
		if nums[i] == wanted { ret Some(i) }
		i += 1
	}
	ret None
}

fn area(shape Shape) f32 {
	// several arms; else handles the rest
	ret if shape is {
		Circle(r) { 3.14159 * r * r }
		Rect(w, h) { w * h }
	} else {
		0.0
	}
}

fn main() {
	nums [4]i32 = .{ 1, 2, 3, 4 }

	// one pattern
	if find(nums[0..4], 3) is Some(index) {
		print(index)
	}

	// several arms, named data
	shape Shape = Circle(2.0)
	if shape is {
		Circle(radius) { print(radius) }
		Polygon { points, closed } {
			print(closed)
		}
		Empty { print("nothing") }
	} else {
		print("rectangle")
	}

	print(area(shape))
}
