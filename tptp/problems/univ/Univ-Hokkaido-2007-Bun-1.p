%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2007, Humanities Course, Problem 1
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-30
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be real numbers. Assume that the equation
%% $x^2 + a x + b = 0$ has real solutions, and the absolute values of
%% all the solutions are equal to or smaller than $1$.
%%
%% (1) Draw all the points $(a, b)$ that satisfy this condition on the
%% $a b$ plane.
%%
%% (2) Find the maximum and minimum values of $a + 2 b$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  104 (   7 equality;  33 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :   88 (   0   ~;   0   |;   8   &;  78   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   2   !;   7   ?;   5   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    5 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ab: ( 'ListOf' @ $real )] :
      ? [V_a: $real,V_b: $real] :
        ( ( V_ab
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) )
        & ! [V_x_dot_0: $real] :
            ( ( 0.0
              = ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( $sum @ ( $product @ V_a @ V_x_dot_0 ) @ V_b ) ) )
           => ( $lesseq @ ( 'abs/1' @ V_x_dot_0 ) @ 1.0 ) )
        & ? [V_x: $real] :
            ( 0.0
            = ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( $sum @ ( $product @ V_a @ V_x ) @ V_b ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_zmax: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_z: $real] :
            ? [V_a: $real,V_b: $real] :
              ( ( V_z
                = ( $sum @ V_a @ ( $product @ 2.0 @ V_b ) ) )
              & ! [V_x: $real] :
                  ( ( 0.0
                    = ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( $sum @ ( $product @ V_a @ V_x ) @ V_b ) ) )
                 => ( $lesseq @ ( 'abs/1' @ V_x ) @ 1.0 ) ) ) )
        @ V_zmax ) )).

thf(p1_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $real )] :
    ? [V_a_dot_0: $real,V_b_dot_0: $real] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( $lesseq @ -2.0 @ V_a_dot_0 )
      & ( $lesseq @ V_a_dot_0 @ 2.0 )
      & ( $lesseq @ ( $difference @ V_a_dot_0 @ 1.0 ) @ V_b_dot_0 )
      & ( $lesseq @ ( $difference @ ( $uminus @ V_a_dot_0 ) @ 1.0 ) @ V_b_dot_0 )
      & ( $lesseq @ V_b_dot_0 @ ( $quotient @ ( '^/2' @ V_a_dot_0 @ 2.0 ) @ 4.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_zmax_dot_0: $real] : ( V_zmax_dot_0 = -2.0 ) ),
    answer_to(p2_question,[])).

