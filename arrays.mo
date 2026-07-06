// no heap allocated arrays for now.

// say: array of 'Type' []Type

fn test() {
  ints := [1,2,3] // []i32
  ints [3]i32 := [1,2,3]i32
  ints []i32 := [1,2,3]
  
  //players [3]Player := [3; nil] // Not yet parseable: initializing array of length 3 with default value for every position  
  players[0] = Player
}


// default type of number literal without decimal point
// if you dont specify is gonna be int32 