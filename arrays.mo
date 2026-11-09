// Arrays and slices

use std:io:print

// read-only slice parameter
fn sum(nums []i32) i32 {
	total i32 = 0
	i usize = 0
	for i < len(nums) {
		total += nums[i]
		i += 1
	}
	ret total
}

// writable slice parameter
fn fill(nums []w i32, value i32) {
	i usize = 0
	for i < len(nums) {
		nums[i] = value
		i += 1
	}
}

fn main() {
	// fixed-size arrays
	nums [3]i32 = .{ 1, 2, 3 }
	more _ = [4]i32.{ 4, 5, 6, 7 }
	buffer [1024]u8 = zero

	// multi-line array literal
	primes [5]u32 = .{
		2, 3, 5,
		7, 11,
	}

	// indexing
	print(nums[0])
	nums[1] = 42

	// slicing with lo..hi (end exclusive)
	first_two []i32 = nums[0..2]
	everything []w i32 = more[0..4]

	print(sum(first_two))
	fill(everything, 0)

	// arrays of structs
	points [2]Vec2 = .{
		.{ x = 0, y = 0 }
		.{ x = 1, y = 1 }
	}
}

struct Vec2 { x f32, y f32 }
