# Recitation 1 Notes
[course site](www.cis1200.org)


Test cases graded on
* Unique cases
* Average cases
* Edge cases
* Naming of cases
* Should test things like singleton list, empty list...


**int**<br>
let x = 1

let a = 5


**float**<br>

**string**<br>

**bool**<br>


**lists**
* `int list = [1;2;5]` <br>
* `int list list = [[1;2]; [2;3]]`<br>
* `[1;2;[]]` is NOT a valid list because [] is a list type, not an int

<br><br>
* OCaml reads lists right to left
    * Bump the right most two together, then the next one to the left, so on so forth
    * Sort of similar to matrix multiplication

**Let expressions**<br>
let a = 3<br>
let c (a:int) : int

```ocaml
let total_minutes : int = 
    let days = 2 in
    let hours = days * 24 in
    hours * 60
```
`days` and `hours` are accessible within the function. NOT accessible anywhere else, only in scope of the function


```ocaml
let abc : int =
    let a = 1 in
    let b = 10 * a in
    let d = 60 in
    let c = b + 40 in
    a-c
```

**Pattern Matching**<br>
Do something based on whether list follows a certain format


**Recursion** <br>
* Must start with `let rec`, where the rec says it can call itself, it's recursive.
```ocaml
let rec length(l:int list):int=
    begin match l with
        | [] -> 0 (*base case*)
        | hd::tl -> 1 + (length tl) (*1 for the hd*)
    end
```

1 + length [2;3]
    1 + length [3]
        1 + length []
            0
