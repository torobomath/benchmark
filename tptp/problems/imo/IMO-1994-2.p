%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1994, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-12
%%
%% <PROBLEM-TEXT>
%% $ABC$ is an isosceles triangle with $AB = AC$. Suppose that
%% ¥begin{flushleft}
%% 1. $M$ is the midpoint of $BC$ and $O$ is the point on the line $AM$ such that
%% $OB$ is perpendicular to $AB$;¥¥
%% 2. $Q$ is an arbitrary point on the segment $BC$ different from $B$ and $C$;¥¥
%% 3. $E$ lies on the line $AB$ and $F$ lies on the line $AC$ such that $E$, $Q$, $F$
%% are distinct and collinear.
%% ¥end{flushleft}
%% Prove that $OQ$ is perpendicular to $EF$ if and only if $QE = QF$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   93 (   6 equality;  52 variable)
%            Maximal formula depth :   26 (  26 average)
%            Number of connectives :   82 (   2   ~;   0   |;  12   &;  65   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_M: '2d.Point',V_O: '2d.Point',V_Q: '2d.Point',V_E: '2d.Point',V_F: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '2d.distance/2' @ V_A @ V_B )
          = ( '2d.distance/2' @ V_A @ V_C ) )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_O @ ( '2d.line/2' @ V_A @ V_M ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_B ) @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( V_Q != V_B )
        & ( V_Q != V_C )
        & ( '2d.on/2' @ V_E @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_F @ ( '2d.line/2' @ V_A @ V_C ) )
        & ( '2d.colinear/3' @ V_E @ V_Q @ V_F )
        & ( 'pairwise-distinct/1' @ ( 'cons/2' @ V_E @ ( 'cons/2' @ V_Q @ ( 'cons/2' @ V_F @ 'nil/0' ) ) ) ) )
     => ( ( ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_Q ) @ ( '2d.line/2' @ V_E @ V_F ) )
         => ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_Q @ V_E ) )
            = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_Q @ V_F ) ) ) )
        & ( ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_Q @ V_E ) )
            = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_Q @ V_F ) ) )
         => ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_O @ V_Q ) @ ( '2d.line/2' @ V_E @ V_F ) ) ) ) ) )).
