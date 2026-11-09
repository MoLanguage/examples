// Loops: for is the only loop keyword

fn main() {
	// infinite loop
	for {
		// do stuff
		break
	}

	// "infinite" loop with breaks
	for {
		if cond_a() {
			break
		}
		if cond_b() {
			break
		}
	}

	// loop while a condition holds (like 'while' in other languages)
	x i32 = 0
	for x < 10 {
		x += 1
	}

	// next skips to the next iteration (like 'continue' in other languages)
	i i32 = 0
	for i < 10 {
		i += 1
		if i % 2 == 0 { next }
		print_odd(i)
	}

	// Planned - for-in loops:
	// nums [3]i32 = .{ 1, 2, 3 }
	// for value, index in nums {
	// }
}

fn cond_a() bool { ret false }
fn cond_b() bool { ret true }
fn print_odd(n i32) { }
