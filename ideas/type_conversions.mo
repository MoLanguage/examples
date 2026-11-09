// IDEA (open question): the remaining details of conversions
// Decided: truncate / convert / cast (see "Casts and conversions" in mo/notes/INTRODUCTION.md)
// See "Casts and conversions" in mo/notes/IDEAS.md

fn main() {
	small i32 = 5

	// open: is widening implicit?
	wide i64 = small                     // allowed, or ...
	wide2 i64 = convert:[i64](small)     // ... always required?

	// open: how does convert round floats to integers?
	n i32 = convert:[i32](3.9)           // 3 (towards zero)? 4? separate round/floor functions?

	// open: what happens when convert can't represent the value?
	big f64 = 1e20
	m i32 = convert:[i32](big)           // error at runtime? saturate to i32 max?
}
