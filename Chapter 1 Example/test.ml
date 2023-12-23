;; open Assert

(* Knowns *)
(*attend for P=500 should be 120*)
let profit_p500 : int =
  let price = 500 in
  let attend = 120 in
  let revenue = price * attend in
  let cost = 4 * attend + 18000 in
  revenue - cost

(*attend for P=490 should be 135*)
let profit_p490 : int =
  let price = 490 in
  let attend = 135 in
  let revenue = price * attend in
  let cost = 4 * attend + 18000 in
  revenue - cost





(* Implementation *)
let attend (price:int) : int =
  (-15 * price) / 10 + 870

let revenue (price:int) : int =
  price * (attend price)

let cost (price:int) : int = 
  18000 + 4 * (attend price)

let profit (price:int) : int =
  (revenue price) - (cost price)



(* Test cases for attend*)
let test () : bool =
  (attend 490) = 135
;; run_test "attend at $4.90" test

let test () : bool = 
  (attend 500) = 120
;; run_test "attend at $5.00" test



(* Test Cases for Profit*)
let test () : bool =
  (profit 500) = profit_p500
;; run_test "profit at 500 test" test

let test () : bool = 
  (profit 490) = profit_p490
;; run_test "profit at 490 test" test



