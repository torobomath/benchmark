%% DOMAIN:    Algebra, proofs of inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1983, Problem 6
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$ and c be the lengths of the sides of a triangle. Prove that
%% ¥[
%% a^2 b (a - b) + b^2 c (b - c) + c^2 a (c - a) ¥ge 0.
%% ¥]
%% Determine when equality occurs.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  138 (  11 equality;  61 variable)
%            Maximal formula depth :   22 (  17 average)
%            Number of connectives :  115 (   0   ~;   0   |;  11   &; 103   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   6   !;   9   ?;   2   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   2 pred;    3 func;    2 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_a: $real,V_b: $real,V_c: $real] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_a
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( V_b
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( V_c
          = ( '2d.distance/2' @ V_C @ V_A ) ) )
     => ( $lesseq @ 0.0 @ ( $sum @ ( $product @ ( '^/2' @ V_a @ 2.0 ) @ ( $product @ V_b @ ( $difference @ V_a @ V_b ) ) ) @ ( $sum @ ( $product @ ( '^/2' @ V_b @ 2.0 ) @ ( $product @ V_c @ ( $difference @ V_b @ V_c ) ) ) @ ( $product @ ( '^/2' @ V_c @ 2.0 ) @ ( $product @ V_a @ ( $difference @ V_c @ V_a ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_abc: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_a: $real,V_b: $real,V_c: $real] :
        ( ( V_abc
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_c @ ( 'nil/0' @ $real ) ) ) ) )
        & ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_a
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( V_b
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( V_c
          = ( '2d.distance/2' @ V_C @ V_A ) )
        & ( 0.0
          = ( $sum @ ( $product @ ( '^/2' @ V_a @ 2.0 ) @ ( $product @ V_b @ ( $difference @ V_a @ V_b ) ) ) @ ( $sum @ ( $product @ ( '^/2' @ V_b @ 2.0 ) @ ( $product @ V_c @ ( $difference @ V_b @ V_c ) ) ) @ ( $product @ ( '^/2' @ V_c @ 2.0 ) @ ( $product @ V_a @ ( $difference @ V_c @ V_a ) ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_abc_dot_0: ( 'ListOf' @ $real )] :
    ? [V_a_dot_0: $real,V_b_dot_0: $real,V_c_dot_0: $real] :
      ( ( V_abc_dot_0
        = ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'cons/2' @ $real @ V_c_dot_0 @ ( 'nil/0' @ $real ) ) ) ) )
      & ( $less @ 0.0 @ V_a_dot_0 )
      & ( V_a_dot_0 = V_b_dot_0 )
      & ( V_b_dot_0 = V_c_dot_0 ) ) ),
    answer_to(p2_question,[])).

