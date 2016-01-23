%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1998, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-05
%%
%% <PROBLEM-TEXT>
%% Let I be the incenter of triangle $ABC$. Let the incircle of $ABC$ touch the sides
%% $BC$, $CA$, and $AB$ at $K$, $L$, and $M$ , respectively. The line through $B$
%% parallel to $MK$ meets the lines $LM$ and $LK$ at $R$ and $S$, respectively. Prove
%% that angle $RIS$ is acute.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   63 (   0 equality;  41 variable)
%            Maximal formula depth :   29 (  29 average)
%            Number of connectives :   62 (   0   ~;   0   |;  11   &;  50   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :   11 (   0 sgn;  11   !;   0   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_I: '2d.Point',V_K1: '2d.Shape',V_K: '2d.Point',V_L: '2d.Point',V_M: '2d.Point',V_t: '2d.Shape',V_R: '2d.Point',V_S: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.is-incenter-of/2' @ V_I @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.circle-type/1' @ V_K1 )
        & ( '2d.is-inscribed-in/2' @ V_K1 @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.tangent/3' @ V_K1 @ ( '2d.seg/2' @ V_B @ V_C ) @ V_K )
        & ( '2d.tangent/3' @ V_K1 @ ( '2d.seg/2' @ V_A @ V_C ) @ V_L )
        & ( '2d.tangent/3' @ V_K1 @ ( '2d.seg/2' @ V_A @ V_B ) @ V_M )
        & ( '2d.line-type/1' @ V_t )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_M @ V_K ) @ V_t )
        & ( '2d.on/2' @ V_B @ V_t )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_L @ V_M ) @ V_t @ V_R )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_L @ V_K ) @ V_t @ V_S ) )
     => ( '2d.is-acute/1' @ ( '2d.angle/3' @ V_R @ V_I @ V_S ) ) ) )).
