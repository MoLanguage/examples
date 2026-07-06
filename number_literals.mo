// Number literals in decimal, decimal point, binary, octal and hexadecimal notation
fn main() {
  decimal i32 := 123
  decimal_point f32 := 0.123
  binary i32 := 0b01101110
  octal i32 := 0o7777777
  hex i32 := 0xabc
  
  scientific_decimal := 1e3
  s := 1e-3
  s =  1.0e-3
  s =  -1.0e3
  s = 0x.123p2
  s = 0xAB_CDEF_abcdef_P-2
}