
// * Recursion *
// one - branch
// there is a sub-problem: n! = n * (n - 1)!
// base case: 1

// O(n) and O(n) mem
func factorial(n: Int) -> Int{
    // base case, need this to not be infinite
    if(n <= 1){
        return 1
    }
    // this is the sub problem
    return n * factorial(n: n-1)
}

print(factorial(n: 5))

// two branch problem
// base cases: F(0) = 0, F(1) = 1
// O(2^n)
func fibNumber(n: Int) -> Int{
    // base case
    // F(1) or F(0)
    if(n <= 1){
        return n
    }
    return fibNumber(n: n-1) + fibNumber(n: n-2)
}

print(fibNumber(n: 4))
