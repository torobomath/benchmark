%% DOMAIN:    Combinatorics, special geometry
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1983, Problem 4
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% Let $ABC$ be an equilateral triangle and $¥varepsilon$ the set of all points
%% contained in the three segments $AB$, $BC$ and $CA$ (including $A$, $B$ and $C$).
%% Determine whether, for every partition of $¥varepsilon$ into two disjoint subsets,
%% at least one of the two subsets contains the vertices of a right-angled triangle.
%% Justify your answer.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   72 (   2 equality;  34 variable)
%            Maximal formula depth :   21 (  21 average)
%            Number of connectives :   70 (   0   ~;   1   |;   9   &;  59   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   13 (   0 sgn;   6   !;   6   ?;   1   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_Epsilon: ( 'SetOf' @ '2d.Point' ),V_S1: ( 'SetOf' @ '2d.Point' ),V_S2: ( 'SetOf' @ '2d.Point' )] :
      ( ( ( '2d.is-equilateral-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_Epsilon
          = ( 'set-by-def/1' @ '2d.Point'
            @ ^ [V_p: '2d.Point'] :
                ( '2d.on/2' @ V_p @ ( '2d.union/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_A @ V_B ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_B @ V_C ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ V_C @ V_A ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )
        & ( 'is-empty/1' @ '2d.Point' @ ( 'set-intersection/2' @ '2d.Point' @ V_S1 @ V_S2 ) )
        & ( V_Epsilon
          = ( 'set-union/2' @ '2d.Point' @ V_S1 @ V_S2 ) ) )
     => ( ? [V_a_dot_0: '2d.Point',V_b_dot_0: '2d.Point',V_c_dot_0: '2d.Point'] :
            ( ( 'elem/2' @ '2d.Point' @ V_a_dot_0 @ V_S1 )
            & ( 'elem/2' @ '2d.Point' @ V_b_dot_0 @ V_S1 )
            & ( 'elem/2' @ '2d.Point' @ V_c_dot_0 @ V_S1 )
            & ( '2d.is-right-triangle/3' @ V_a_dot_0 @ V_b_dot_0 @ V_c_dot_0 ) )
        | ? [V_a: '2d.Point',V_b: '2d.Point',V_c: '2d.Point'] :
            ( ( 'elem/2' @ '2d.Point' @ V_a @ V_S2 )
            & ( 'elem/2' @ '2d.Point' @ V_b @ V_S2 )
            & ( 'elem/2' @ '2d.Point' @ V_c @ V_S2 )
            & ( '2d.is-right-triangle/3' @ V_a @ V_b @ V_c ) ) ) ) )).

