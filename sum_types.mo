
// I would like to implement parsing of sum types and parsing of generic structs, sum-types and functions.


// Then i'd like to implement the impl Trait syntax on the struct/sum-type definitions. 


// The grammar would look roughly like this: struct Foo impl Trait1 (,TraitX)* {...}


// sum types are defined like this:

sum Result {
    Success(i32)
    Error(Str)
}

sum Sign {
    Positive(i32)
    Zero
    Negative(i32)
}

sum Token {
  Identifier { value str }
  Number { value i32 }
}


sum MyType {
    Variant // Variant without members
    Variant(Foo) // with one unnamed member
    Variant(Foo, Foo) // multiple unnamed members
    Variant {
      field Foo // Variant with named members (looks like struct definition)
    }
}


//sum types can also be generic:


sum Option(T) {
  Some(T)
  None
}

// the variants of sum types definitions can be either seperated by LineBreak tokens (newlines) or by commas ','. Exactly like struct definitions

sum Seasons {
  Spring, Summer, Fall, Winter
}

sum Seasons {
  Spring
  Summer 
  Fall
  Winter
}

// sum types can also implement traits:

sum Season impl Ord {
  Spring, Summer, Fall, Winter
}

fn compare(first *Season, second *Season) Ordering {
  return first.ordinal.cmp(second.ordinal) // ordinal being a field of a number available to every sum type instance
}