sum Result {
    Success(i32)
    Error(Str)
}

sum Sign {
    Positive(i32)
    Zero
    Negative(i32)
}

fn main() {

    // if statements

    // pattern matching with if and is
    // example 1 with just if
    if res is { 
        Success(value) print(value)
        Error(msg) print(msg)
    }

    // example 2 with if and else
    s Sign := Positive
    if s is { 
        Positive(x) { 
            print(x)
            print("positive value")
        }  
        Zero { 
            print("zero")
            print("that's literally nothing")
        } 
    } else { 
        print("negative value")
    }


    // simple one-branch pattern matching syntax
    Result res := Success(42)
    if res is Success(num) {
        print(num)
    }

    
    // if statements as value-returning expressions.

    // example 1: In the sum type pattern matching context:
    value i32 := if some_result is {
        Result.Success(x) x,
        Result.Error(_) 0
    } else {
        -1
    }

    // example 2: In the boolean expression context:
    result i32 := if x > 0 {
        10
    } else {
        -10
    }
}
