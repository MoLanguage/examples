sum Result {
    Success(Int32)
    Error(Str)
}

sum Sign {
    Positive(Int32)
    Zero
    Negative(Int32)
}

fn main() {

    // if statements

    // pattern matching with if and is
    // example 1 with just if
    if res is { 
        Success(value) print(value);
        Error(msg) print(msg);
    }

    // example 2 with if and else
    Sign s := Positive
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
    Int32 value := if some_result is {
        Result.Success(x) x,
        Result.Error(_) 0
    } else {
        -1
    }

    // example 2: In the boolean expression context:
    Int32 result := if x > 0 {
        10
    } else {
        -10
    }
}