(*
** Generic arithmetic ops
*)

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)
//
abst@ype
int3_t0ype =
  (int, int, int)
//
typedef int3 = int3_t0ype
//
(* ****** ****** *)

extern
fun int3 : (int, int, int) -<> int3
extern
fun int3_1 : int3 -<> int
extern
fun mul_int3_int3: (int3, int3) -<> int3

(* ****** ****** *)

local

assume
int3_t0ype = (int, int, int)

in (* in-of-local *)
//
implement
int3 (x, y, z) = @(x, y, z)
//
implement int3_1 (xyz) = xyz.1
//
implement
mul_int3_int3
(
  (a,b,c), (d,e,f)
) =
  (a*d + b*e, a*e + b*f, b*e + c*f)
//
end // end of [local]

(* ****** ****** *)
//
implement
gnumber_int<int3> (n) = int3(n, 0, n)
//
implement gmul_val_val<int3> = mul_int3_int3
//
(* ****** ****** *)
//
overload ._1 with int3_1
//
fun
fib (n: intGte(0)): int =
  (gpow_int_val<int3> (n, int3(1, 1, 0)))._1
//
(* ****** ****** *)
   
implement
main0 () =
{
//
val N = 10
val () = println! ("fib(", N, ") = ", fib(N))
val N = 20
val () = println! ("fib(", N, ") = ", fib(N))
val N = 30
val () = println! ("fib(", N, ") = ", fib(N))
val N = 40
val () = println! ("fib(", N, ") = ", fib(N))
//
} (* end of [main0] *)

(* ****** ****** *)

(* end of [test03.dats] *)
