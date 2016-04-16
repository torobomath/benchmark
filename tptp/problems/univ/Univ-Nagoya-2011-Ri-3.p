%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2011, Science Course, Problem 3
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-05-15
%%
%% <PROBLEM-TEXT>
%% Consider the three points $O(0, 0)$, $A(1, 0)$, and $B(0, 1)$ on the
%% $x y$ plane.
%%
%% (1) Assume that $a > 0$. Find the locus of the point $P$ that
%% satisfies $OP : AP = 1 : a$.
%%
%% (2) Assume that $a > 0$ and $b > 0$. Find the condition that $a$ and
%% $b$ must satisfy in order that there exists the point $P$ that
%% satisfies $OP : AP : BP = 1 : a : b$, and draw it on the $a b$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  200 (  15 equality;  47 variable)
%            Maximal formula depth :   20 (  13 average)
%            Number of connectives :  167 (   1   ~;   1   |;  20   &; 145   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   1   :;   0   =)
%            Number of variables   :   19 (   0 sgn;   0   !;   6   ?;  13   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   3 pred;    4 func;    3 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(a1_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_C: '2d.Shape'] :
        ( ( $greater @ 'a/0' @ 0.0 )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( '2d.distance/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ V_P )
                = ( $product @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) @ 'a/0' ) ) ) ) ) )).

thf(a2_1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ab: ( 'ListOf' @ $real )] :
      ? [V_P: '2d.Point',V_a: $real,V_b: $real] :
        ( ( $greater @ V_a @ 0.0 )
        & ( $greater @ V_b @ 0.0 )
        & ( V_ab
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) )
        & ( ( '2d.distance/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ V_P )
          = ( $product @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) @ V_a ) )
        & ( ( '2d.distance/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ V_P )
          = ( $product @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) @ V_b ) ) ) )).

thf(a2_2_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_S: '2d.Shape'] :
        ( V_S
        = ( '2d.set-of-cfun/1'
          @ ^ [V_a: $real,V_b: $real] :
            ? [V_P: '2d.Point'] :
              ( ( ( '2d.distance/2' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ V_P )
                = ( $product @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) @ V_a ) )
              & ( ( '2d.distance/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ V_P )
                = ( $product @ ( '2d.distance/2' @ '2d.origin/0' @ V_P ) @ V_b ) )
              & ( $greater @ V_a @ 0.0 )
              & ( $greater @ V_b @ 0.0 ) ) ) ) )).

thf(a1_answer,answer,(
    ^ [V_C_dot_0: '2d.Shape'] :
      ( ( ( 'a/0' = 1.0 )
        & ( V_C_dot_0
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '2d.x-coord/1' @ V_p )
                = ( $quotient @ 1.0 @ 2.0 ) ) ) ) )
      | ( ( $less @ 0.0 @ 'a/0' )
        & ( 'a/0' != 1.0 )
        & ( V_C_dot_0
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $sum @ ( '^/2' @ ( $sum @ V_x @ ( $quotient @ 1.0 @ ( $difference @ ( '^/2' @ 'a/0' @ 2.0 ) @ 1.0 ) ) ) @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) )
                = ( $quotient @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ ( $difference @ ( '^/2' @ 'a/0' @ 2.0 ) @ 1.0 ) @ 2.0 ) ) ) ) ) ) ) ),
    answer_to(a1_question,[])).

thf(a2_1_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $real )] :
    ? [V_a_dot_0: $real,V_b_dot_0: $real] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( $less @ 0.0 @ V_b_dot_0 )
      & ( $less @ 0.0 @ V_a_dot_0 )
      & ( $lesseq @ ( 'sqrt/1' @ 2.0 ) @ ( $sum @ V_a_dot_0 @ V_b_dot_0 ) )
      & ( $lesseq @ ( $difference @ V_a_dot_0 @ V_b_dot_0 ) @ ( 'sqrt/1' @ 2.0 ) )
      & ( $lesseq @ ( $difference @ V_b_dot_0 @ V_a_dot_0 ) @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(a2_1_question,[])).

thf(a2_2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_a_dot_0: $real,V_b_dot_0: $real] :
        ( ( $less @ 0.0 @ V_b_dot_0 )
        & ( $less @ 0.0 @ V_a_dot_0 )
        & ( $lesseq @ ( 'sqrt/1' @ 2.0 ) @ ( $sum @ V_a_dot_0 @ V_b_dot_0 ) )
        & ( $lesseq @ ( $difference @ V_a_dot_0 @ V_b_dot_0 ) @ ( 'sqrt/1' @ 2.0 ) )
        & ( $lesseq @ ( $difference @ V_b_dot_0 @ V_a_dot_0 ) @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(a2_2_question,[])).

