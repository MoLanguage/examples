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
  
  foo.module:variable // doesnt work because struct fields belong to the struct, not to a module like functions do
}
