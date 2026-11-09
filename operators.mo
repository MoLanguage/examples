// Operators, from lowest to highest precedence

fn main() {
	a i32 = 10
	b i32 = 3
	ready _ = true

	// logical (only on bool)
	either _ = a < 5 || a > 10
	both _ = a > 5 && a < 20 && !ready

	// equality and comparison
	same _ = a == b
	different _ = a != b
	less _ = a < b
	less_eq _ = a <= b
	greater _ = a > b
	greater_eq _ = a >= b

	// bitwise
	or _ = a | b
	xor _ = a ^ b
	and _ = a & b
	not _ = ~a
	left _ = a << 2
	right _ = a >> 2

	// arithmetic
	sum _ = a + b
	difference _ = a - b
	product _ = a * b
	quotient _ = a / b
	remainder _ = a % b
	negative _ = -a

	// grouping
	c _ = (a + b) * 2

	// binary expressions can continue on the next line after an operator
	long _ = a + b +
		c + 1

	// compound assignment
	a += 10
	a -= 10
	a *= 10
	a /= 10
	a %= 10
	a &= 10
	a |= 10
	a ^= 10
	a <<= 1
	a >>= 1
}
