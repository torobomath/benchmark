%% DOMAIN:    Geometry, trigonometric functions
%% THEORY:    trans
%% SOURCE:    International Mathematical Olympiad, 1959, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-23
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, $c$ be real numbers. Consider the quadratic equation in $\cos x$:\[
%% a \cos^2 x + b \cos x + c = 0.
%% \]Using the numbers $a$, $b$, $c$, form a quadratic equation in $\cos 2x$, whose roots
%% are the same as those of the original equation. Compare the equations in
%% $\cos x$ and $\cos 2x$ for $a = 4$, $b = 2$, $c = -1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  144 (   9 equality;  16 variable)
%            Maximal formula depth :   17 (   9 average)
%            Number of connectives :  126 (   2   ~;   1   |;   3   &; 119   @)
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   3   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   1   !;   3   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   0 pred;    6 func;    5 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_BC: ( 'ListOf' @ $real )] :
      ? [V_B: $real,V_C: $real] :
        ( ( V_BC
          = ( 'cons/2' @ $real @ V_B @ ( 'cons/2' @ $real @ V_C @ ( 'nil/0' @ $real ) ) ) )
        & ! [V_x: $real] :
            ( ( ( 'a/0' != 0.0 )
              & ( ( $sum @ ( $product @ 'a/0' @ ( '^/2' @ ( 'cos/1' @ V_x ) @ 2.0 ) ) @ ( $sum @ ( $product @ 'b/0' @ ( 'cos/1' @ V_x ) ) @ 'c/0' ) )
                = 0.0 ) )
          <=> ( ( 'a/0' != 0.0 )
              & ( ( $sum @ ( '^/2' @ ( 'cos/1' @ ( $product @ 2.0 @ V_x ) ) @ 2.0 ) @ ( $sum @ ( $product @ V_B @ ( 'cos/1' @ ( $product @ 2.0 @ V_x ) ) ) @ V_C ) )
                = 0.0 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( ( $difference @ ( $sum @ ( $product @ 4.0 @ ( '^/2' @ ( 'cos/1' @ V_x ) @ 2.0 ) ) @ ( $product @ 2.0 @ ( 'cos/1' @ V_x ) ) ) @ 1.0 )
        = 0.0 ) )).

thf(p1_answer,answer,(
    ^ [V_BC_dot_0: ( 'ListOf' @ $real )] :
      ( V_BC_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ ( $sum @ ( $product @ 2.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 4.0 @ ( $product @ 'a/0' @ 'c/0' ) ) @ ( $uminus @ ( $product @ 2.0 @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) ) ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( $sum @ ( '^/2' @ ( $sum @ 'a/0' @ ( $product @ 2.0 @ 'c/0' ) ) @ 2.0 ) @ ( $uminus @ ( $product @ 2.0 @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: $real] :
    ? [V_n: $int] :
      ( ( V_x_dot_0
        = ( $sum @ ( $product @ ( $quotient @ 2.0 @ 5.0 ) @ 'Pi/0' ) @ ( $product @ 2.0 @ ( $product @ ( $to_real @ V_n ) @ 'Pi/0' ) ) ) )
      | ( V_x_dot_0
        = ( $sum @ ( $product @ ( $quotient @ 4.0 @ 5.0 ) @ 'Pi/0' ) @ ( $product @ 2.0 @ ( $product @ ( $to_real @ V_n ) @ 'Pi/0' ) ) ) ) ) ),
    answer_to(p2_question,[])).

