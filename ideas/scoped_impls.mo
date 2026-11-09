// IDEA (open): grouping symbols into modules, scoped and conditional impls
// See "Grouping symbols into modules" and "Two traits requiring the same function signature" in mo/notes/IDEAS.md

struct Player { name str, health u32 }

fn heal(player &w Player) {
	player.health = 100
}

// group symbols into an importable module, functions identified by their parameter types
mod player { Player, heal(&w Player) }

trait Serializable[T] {
	fn log(value &T)
}

// impl scoped to a module: the required function lives inside it
mod serializable {
	impl Serializable[Player]

	fn log(value &Player) { }
}

// conditional implementation: only active if the module is used
mod debug_stuff {
	impl Serializable[Player]
}

fn main() {
	p Player = .{ name = "Moritz", health = 10 }
	serializable:log(&p)
	p.serializable:log()
}
