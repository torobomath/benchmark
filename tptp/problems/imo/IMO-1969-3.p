%% DOMAIN:    Geometry, tetrahedrons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1969, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% For each value of $k = 1, 2, 3, 4, 5$, find necessary and suffcient
%% conditions on the number $a > 0$ so that there exists a tetrahedron
%% with $k$ edges of length $a$, and the remaining $6 - k$ edges of length $1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   10 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  403 (  54 equality; 164 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :  285 (   0   ~;   5   |;  53   &; 227   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   30 (   0 sgn;   0   !;  20   ?;  10   ^)
%                                         (  30   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point'] :
        ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) )
          = V_a )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) )
          = 1.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) )
          = 1.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) )
          = 1.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_B ) )
          = 1.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_C ) )
          = 1.0 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point'] :
        ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( ( ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_B ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_C ) )
              = 1.0 ) )
          | ( ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_B ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_C ) )
              = V_a ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point'] :
        ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( ( ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_B ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_C ) )
              = 1.0 ) )
          | ( ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_B ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_C ) )
              = V_a ) )
          | ( ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_B ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_C ) )
              = 1.0 ) ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point'] :
        ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( ( ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_B ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_C ) )
              = V_a ) )
          | ( ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) )
              = 1.0 )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_B ) )
              = V_a )
            & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_C ) )
              = 1.0 ) ) ) ) )).

thf(p5_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point'] :
        ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) )
          = 1.0 )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_C ) )
          = V_a )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_D ) )
          = V_a )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_B @ V_C ) )
          = V_a )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_B ) )
          = V_a )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_D @ V_C ) )
          = V_a ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( ( $less @ 0.0 @ V_a_dot_0 )
      & ( $less @ V_a_dot_0 @ ( 'sqrt/1' @ 3.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( ( ( $less @ 0.0 @ V_a_dot_0 )
        & ( $less @ V_a_dot_0 @ ( 'sqrt/1' @ 2.0 ) ) )
      | ( ( $less @ ( 'sqrt/1' @ ( $difference @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) ) @ V_a_dot_0 )
        & ( $less @ V_a_dot_0 @ ( 'sqrt/1' @ ( $sum @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( $greater @ V_a_dot_0 @ 0.0 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( $greater @ V_a_dot_0 @ ( 'sqrt/1' @ ( $difference @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) ) ) ),
    answer_to(p4_question,[])).

thf(p5_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( $greater @ V_a_dot_0 @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) ) ),
    answer_to(p5_question,[])).

