%% DOMAIN:    Geometry, polyhedrons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1965, Problem 3
%% SCORE:     8
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-01-27
%%
%% <PROBLEM-TEXT>
%% Given the tetrahedron $ABCD$ whose edges $AB$ and $CD$ have lengths $a$ and
%% $b$ respectively. The distance between the skew lines $AB$ and $CD$ is $d$, and
%% the angle between them is $\omega$. Tetrahedron $ABCD$ is divided into two solids
%% by plane $\epsilon$, parallel to lines $AB$ and $CD$. The ratio of the distances of $\epsilon$
%% from $AB$ and $CD$ is equal to $k$. Compute the ratio of the volumes of the two solids
%% obtained.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  115 (   7 equality;  54 variable)
%            Maximal formula depth :   35 (  15 average)
%            Number of connectives :   99 (   0   ~;   0   |;  13   &;  86   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   1   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   0   !;   9   ?;   2   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    3 func;    4 numbers)

include('axioms.ax').

thf('k/0_type',type,(
    'k/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_ans: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_a: $real,V_b: $real,V_d: $real,V_omega: $real,V_epsilon: '3d.Shape'] :
        ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( $greater @ V_a @ 0.0 )
        & ( $greater @ V_b @ 0.0 )
        & ( V_a
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( V_b
          = ( '3d.distance/2' @ V_C @ V_D ) )
        & ( '3d.are-skew-lines/2' @ ( '3d.line/2' @ V_A @ V_B ) @ ( '3d.line/2' @ V_C @ V_D ) )
        & ( $greater @ V_d @ 0.0 )
        & ( V_d
          = ( '3d.line-line-distance/2' @ ( '3d.line/2' @ V_A @ V_B ) @ ( '3d.line/2' @ V_C @ V_D ) ) )
        & ( V_omega
          = ( '3d.rad-of-angle/1' @ ( '3d.formed-angle-of/2' @ ( '3d.line/2' @ V_A @ V_B ) @ ( '3d.line/2' @ V_C @ V_D ) ) ) )
        & ( '3d.plane-type/1' @ V_epsilon )
        & ( '3d.parallel/2' @ V_epsilon @ ( '3d.line/2' @ V_A @ V_B ) )
        & ( '3d.parallel/2' @ V_epsilon @ ( '3d.line/2' @ V_C @ V_D ) )
        & ( 'k/0'
          = ( $quotient @ ( '3d.shape-shape-distance/2' @ V_epsilon @ ( '3d.line/2' @ V_A @ V_B ) ) @ ( '3d.shape-shape-distance/2' @ V_epsilon @ ( '3d.line/2' @ V_C @ V_D ) ) ) )
        & ( V_ans
          = ( $quotient @ ( '3d.volume-of/1' @ ( '3d.intersection/2' @ ( '3d.tetrahedron/4' @ V_A @ V_B @ V_C @ V_D ) @ ( '3d.divided-region-including/2' @ V_epsilon @ V_A ) ) ) @ ( '3d.volume-of/1' @ ( '3d.intersection/2' @ ( '3d.tetrahedron/4' @ V_A @ V_B @ V_C @ V_D ) @ ( '3d.divided-region-including/2' @ V_epsilon @ V_C ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ans_dot_0: $real] :
      ( V_ans_dot_0
      = ( $product @ ( '^/2' @ 'k/0' @ 2.0 ) @ ( $quotient @ ( $sum @ 'k/0' @ 3.0 ) @ ( $sum @ ( $product @ 3.0 @ 'k/0' ) @ 1.0 ) ) ) ) ),
    answer_to(p_question,[])).

