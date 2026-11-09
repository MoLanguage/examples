// Number literals in decimal, decimal point, binary, octal and hexadecimal notation
fn main() {
	decimal i32 = 123
	big u64 = 1_000_000
	decimal_point f32 = 0.123
	binary u8 = 0b0110_1110
	octal i32 = 0o7777777
	hex i32 = 0xabc

	// scientific notation
	thousand _ = 1e3
	milli _ = 1e-3
	s _ = 1.0e-3
	s = -1.0e3
	s = 1203.0e10

	// hexadecimal floating point: mantissa in hex, exponent is a power of 2
	h _ = 0x1.8p3            // 1.5 * 2^3 = 12.0
	h = 0x.123p2
	h = 0xAB_CDEF_abcdef_P-2

	// literals have no type of their own, they take the type the context asks for
	small u8 = 200
	ratio f32 = 2            // an integer literal can become a float
	// too_big u8 = 300      // error: doesn't fit

	// without other context: integers are i32, decimal point literals are f64
	default_int _ = 7        // i32
	default_float _ = 7.0    // f64
}
