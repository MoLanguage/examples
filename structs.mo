// Structs and struct literals

// fields separated by line breaks...
struct Cat {
	name str
	food_level u32
}

// ...or commas
struct Vec2 { x f32, y f32 }

// structs can contain other structs
struct Owner {
	name str
	cat Cat
}

// unit struct
struct Marker {}

fn main() {
	// literal with the type
	matz _ = Cat.{ name = "Matz", food_level = 0 }

	// type known from the declaration: leave it out
	algundo Cat = .{ name = "Algundo", food_level = 3 }

	// multi-line literal, line breaks separate the fields
	owner Owner = .{
		name = "Moritz"
		cat = .{ name = "Beans", food_level = 7 }
	}

	// every field must be listed
	// broken Cat = .{ name = "Broken" }   // error: missing field food_level

	// zeroed, then set fields (only for types without pointers, see Node below)
	stray Cat = zero
	stray.name = "Stray"

	// no constructors: building functions are ordinary functions
	beans _ = new_cat("Beans")

	// field access and update
	owner.cat.food_level += 1
	origin Vec2 = .{ x = 0, y = 0 }
	length_squared _ = origin.x * origin.x + origin.y * origin.y
}

fn new_cat(name str) Cat {
	ret .{ name = name, food_level = 0 }
}

// a struct with a pointer can't be zeroed: a zero pointer would be null
struct Node {
	value i32
	parent &Node
}
// n Node = zero   // error: Node contains &Node
