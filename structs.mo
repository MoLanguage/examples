struct Vec2 {
  i32 x
  i32 y
}

fn add(vec Vec2, vec2 Vec2) {
    vec.x += vec2.x
    vec.y += vec2.y
}

// Use add as method by implicitly using first pointer as self pointer. 
// IDEA: maybe require annotation like @method or define function with mt instead of fn to enable this explicitly?
// Use like this: 
// vec.add(vec2) <=> add(vec, vec2)

