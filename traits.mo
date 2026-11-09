// Traits, impl and operator overloading

use std:io:print

// traits name the types they're about as parameters, there is no Self
trait Feedable[T] {
	fn feed(hungry &w T)
}

struct Cat { name str, food_level u32 }
struct Human { name str, food_level u32 }

// impl states that a trait is implemented; the compiler requires the functions
impl Feedable[Cat] Feedable[Human]

fn feed(cat &w Cat) {
	cat.food_level += 10
}

fn feed(human &w Human) {
	human.food_level += 20
}

// generic function using the trait
fn feed_twice[T impl Feedable](hungry &w T) {
	hungry.feed()
	hungry.feed()
}

// --- Ordering ---

sum Ordering { Less, Equal, Greater }

// operator traits take their operands by value (see INTRODUCTION.md)
trait Ord[T] {
	fn cmp(a T, b T) Ordering
}

struct NumWrapper { num i32 }

impl Ord[NumWrapper]

fn cmp(a NumWrapper, b NumWrapper) Ordering {
	ret cmp(a.num, b.num) // i32 has a built-in Ord[i32]
}

// --- Operator overloading ---
// The * operator works through a trait. Because the trait is generic over both
// operands, Vec2 can be multiplied with another Vec2 and with an f32:

trait Mul[L, R, Out] {
	fn mul(a L, b R) Out
}

struct Vec2 { x f32, y f32 }

impl Mul[Vec2, Vec2, Vec2] Mul[Vec2, f32, Vec2]

fn mul(a Vec2, b Vec2) Vec2 {
	ret .{ x = a.x * b.x, y = a.y * b.y }
}

fn mul(a Vec2, b f32) Vec2 {
	ret .{ x = a.x * b, y = a.y * b }
}

fn main() {
	cat Cat = .{ name = "Matz", food_level = 0 }
	feed_twice(&cat)

	one NumWrapper = .{ num = 1 }
	two NumWrapper = .{ num = 2 }
	if one < two {                  // uses Ord[NumWrapper]
		print("one is smaller")
	}
	if cmp(one, two) is Less {      // same thing, explicitly
		print("still smaller")
	}

	v Vec2 = .{ x = 1, y = 2 }
	scaled _ = v * 2.0              // mul(v, 2.0), the literal becomes an f32
	squared _ = v * v               // mul(v, v)
}
