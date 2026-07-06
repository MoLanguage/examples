fn main() {
  player := Player.init()
  player.move_up(10)
  if "w".is_pressed() {
    // ABERR
    ret
  } else {
    defer player.china()
    
  }
} 

struct Foo {
  a i32
}

fn returns_foo() Foo {
  ret Foo
}

fn updates_foo(foo Foo) { // can't parse pointers yet (foo *Foo) so replacing with foo Foo
  foo.a = 42
}

fn chain(foo Foo) Foo { // can't parse pointers yet (foo *Foo) so replacing with foo Foo
  foo.a = 42
  ret Foo
}

fn chain_update(foo Foo, a i32) Foo { // can't parse pointers yet (foo *Foo) so replacing with foo Foo
  foo.a = a
  ret Foo
}

fn main() {
  foo Foo := Foo// { a = 10 }
  i i32 := foo.a
  i = returns_foo().a // should also work
  
  foo.updates_foo()
  
  //<expr>(.<fn_call>|<field>)*
  
  foo.chain().chain().chain() // should also work
  foo.chain_update(10).chain_update(20) 
  
  foo.module:chain().module:chain() // should work
  foo.module:chain_update(10).module:chain_update(10)
  
  //foo.module:variable // doesnt work because struct fields belong to the struct, not to a module like functions do
}

// Arrays
// no heap allocated arrays for now.

// say: array of 'Type' []Type
fn arrays() {
  ints := [1,2,3] // []i32 or some default type
  ints [3]i32 := [1,2,3]
  ints []i32 := [1,2,3]

  //players := [3; nil]Player // note: not sure yet how to connect this with the ideas from null_safety.mo
  players[0] = Player //{}

// default type of number literal without decimal point
// if you dont specify is gonna be int32 
}


// Pointers:

fn main() {
  i *mod:i32 := &get_things() // 'local variable' 'i' 'with the type' <pointer to an <int32>>'
  // Pointers are their own types relating to another type. 
  i *void := some_void_pointer()
}

fn fn_with_pointers(i *i32, foo *Foo) {
  i.* = 10 // postfix deref like Zig 
  foo2 Foo := Foo // not sure. this is supposed to parse as variable declaration. but parses as two expressions instead. 
}


struct Foo {
  a i32
}

fn update(foo *Foo) {
  foo.a += 10 // automatically derefs foo to access a field
}

fn main() {
  foo Foo := Foo// create instance of Foo
  foo.update_foo() // easy function call on foo, taking callee (the foo variable) as first argument and auto-referencing it.
  
}

fn main() {
  // Infinite loop (like 'loop' in Rust)
  for {
    // do stuff
    a
  }
  
  // "Infinite" loop with breaks
  for {
    if cond_a {
      break
    }
    if cond_b {
      break
    }
  } 
  
  // Loop with condition (like 'while' in other languages)
  x := 0
  for x < 10 {
    x+=10
  }
  
  // Planned - for-in loops:
  // list := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
  // for x in list {
  //
  // }
}

