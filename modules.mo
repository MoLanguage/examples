// Modules and use declarations

use std:io                 // brings the io module into scope
use std:io:print           // brings a single item into scope
use std:io:print "p"       // imports with a different name
use std:mem

fn main() {
	io:print("via module")
	print("directly")
	p("via alias")

	// module paths in calls and types
	alloc _ = mem:page_allocator()
	m mem:Arena = zero

	// module-qualified functions as methods
	numbers [3]i32 = .{ 3, 1, 2 }
	numbers[0..3].sort:sort()       // sort:sort(numbers[0..3])
}
