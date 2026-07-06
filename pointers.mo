// Pointers:

fn main() {
  i *mod:i32 := &get_things() // 'local variable' 'i' 'with the type' <pointer to an <int32>>'
  // Pointers are their own types relating to another type. 
  i *void := some_void_pointer()
} 

fn fn_with_pointers(i *i32, foo *Foo) {
  i.* = 10 // deref 
}

struct Foo {
  a i32
}

fn update(foo *Foo) {
  foo.a += 10 // automatically derefs foo to access a field
}

fn main() {
  foo Foo := Foo // create instance of Foo
  foo.update_foo() // easy function call on foo, taking callee (the foo variable) as first argument and auto-referencing it.
}