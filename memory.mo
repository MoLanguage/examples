// Manual memory management with explicit allocators

use std:mem:Allocator
use std:io:print

struct Player {
	name str
	health u32
}

// allocating functions take the allocator explicitly
fn create_players(count usize, alloc &w Allocator) []w Player {
	players []w Player = alloc.alloc:[Player](count)
	i usize = 0
	for i < count {
		players[i] = .{ name = "nobody", health = 100 }
		i += 1
	}
	ret players
}

fn main() {
	alloc _ = std:mem:page_allocator()

	players _ = create_players(4, &alloc)
	defer alloc.free(players)   // slices know their length, so free knows how much to release

	players[0].name = "Moritz"

	// stack memory, explicitly uninitialized
	scratch [256]u8 = undef
	scratch[0] = 1

	{
		temp []w u8 = alloc.alloc:[u8](1024)
		defer alloc.free(temp)  // freed at the end of this block
		temp[0] = 42
	}
}

@test
fn players_start_healthy() {
	// attributes like @test are reserved syntax, none are defined yet
}
