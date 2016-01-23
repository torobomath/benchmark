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

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  114 (   7 equality;  58 variable)
%            Maximal formula depth :   35 (  22 average)
%            Number of connectives :   98 (   0   ~;   0   |;  13   &;  85   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :)
%            Number of variables   :   13 (   1 sgn;   0   !;   9   ?;   2   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ans: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_a: 'R',V_b: 'R',V_d: 'R',V_omega: 'R',V_epsilon: '3d.Shape'] :
        ( ( '3d.is-tetrahedron/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '>/2' @ V_a @ 0 )
        & ( '>/2' @ V_b @ 0 )
        & ( V_a
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( V_b
          = ( '3d.distance/2' @ V_C @ V_D ) )
        & ( '3d.are-skew-lines/2' @ ( '3d.line/2' @ V_A @ V_B ) @ ( '3d.line/2' @ V_C @ V_D ) )
        & ( '>/2' @ V_d @ 0 )
        & ( V_d
          = ( '3d.line-line-distance/2' @ ( '3d.line/2' @ V_A @ V_B ) @ ( '3d.line/2' @ V_C @ V_D ) ) )
        & ( V_omega
          = ( '3d.rad-of-angle/1' @ ( '3d.formed-angle-of/2' @ ( '3d.line/2' @ V_A @ V_B ) @ ( '3d.line/2' @ V_C @ V_D ) ) ) )
        & ( '3d.plane-type/1' @ V_epsilon )
        & ( '3d.parallel/2' @ V_epsilon @ ( '3d.line/2' @ V_A @ V_B ) )
        & ( '3d.parallel/2' @ V_epsilon @ ( '3d.line/2' @ V_C @ V_D ) )
        & ( V_k
          = ( '//2' @ ( '3d.shape-shape-distance/2' @ V_epsilon @ ( '3d.line/2' @ V_A @ V_B ) ) @ ( '3d.shape-shape-distance/2' @ V_epsilon @ ( '3d.line/2' @ V_C @ V_D ) ) ) )
        & ( V_ans
          = ( '//2' @ ( '3d.volume-of/1' @ ( '3d.intersection/2' @ ( '3d.tetrahedron/4' @ V_A @ V_B @ V_C @ V_D ) @ ( '3d.divided-region-including/2' @ V_epsilon @ V_A ) ) ) @ ( '3d.volume-of/1' @ ( '3d.intersection/2' @ ( '3d.tetrahedron/4' @ V_A @ V_B @ V_C @ V_D ) @ ( '3d.divided-region-including/2' @ V_epsilon @ V_C ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ans_dot_0: 'R'] :
      ( V_ans_dot_0
      = ( '*/2' @ ( '^/2' @ V_k @ 2 ) @ ( '//2' @ ( '+/2' @ V_k @ 3 ) @ ( '+/2' @ ( '*/2' @ 3 @ V_k ) @ 1 ) ) ) ) ),
    answer_to(p_question,[])).
