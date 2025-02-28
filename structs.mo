struct Vec2 {
    Int32 x
    Int32 y
}


fn add(Vec2* vec, Vec* vec2) {
    vec.x += vec2.x
    vec.y += vec2.y
}

// Use add as method by implicitly using first pointer as self pointer. (maybe require annotation like @method or smthing?)
// Use like this: 
vec.add(vec2) <=> add_vec(vec, vec2)

sum Result {
    Success(Int32)
    Error(Str)
}

sum Sign {
    Positive(Int32)
    Zero
    Negative(Int32)
}
