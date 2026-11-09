// Variables, constants and globals

con MAX_PLAYERS u32 = 16 // compile-time constant
con PI _ = 3.14159       // constant with inferred type

frame_count u64 = 0      // global variable (mutable)

fn main() {
	// declaration: name, type, value
	count i32 = 10

	// inferred type with _
	ratio _ = 0.5     // f64
	n _ = 10          // i32
	done _ = false    // bool

	// assignment
	count = 20
	count += 5

	// every declaration needs a value. zero and undef make it explicit
	position Vec2 = zero      // all bytes 0
	buffer [1024]u8 = undef   // uninitialized

	// several statements on one line
	a i32 = 1; b i32 = 2

	frame_count += 1
}

struct Vec2 { x f32, y f32 }
