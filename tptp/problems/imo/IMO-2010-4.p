%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2010, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-21
%%
%% <PROBLEM-TEXT>
%% Let P be a point inside the triangle ABC. The lines AP, BP and CP intersect
%% the circumcircle Gamma of triangle ABC again at the points K, L and M
%% respectively. The tangent to Gamma at C intersects the line AB at S.
%% Suppose that SC = SP . Prove that MK = ML.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   75 (   5 equality;  46 variable)
%            Maximal formula depth :   29 (  29 average)
%            Number of connectives :   67 (   3   ~;   0   |;  13   &;  50   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :   10 (   0 sgn;  10   !;   0   ?;   0   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_P: '2d.Point',V_K: '2d.Point',V_L: '2d.Point',V_M: '2d.Point',V_Ga: '2d.Shape',V_L2: '2d.Shape',V_S: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.point-inside-of/2' @ V_P @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.circle-type/1' @ V_Ga )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_Ga )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_P ) @ V_Ga @ V_K )
        & ( V_K != V_A )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_P ) @ V_Ga @ V_L )
        & ( V_L != V_B )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_C @ V_P ) @ V_Ga @ V_M )
        & ( V_M != V_C )
        & ( '2d.line-type/1' @ V_L2 )
        & ( '2d.tangent/3' @ V_Ga @ V_L2 @ V_C )
        & ( '2d.intersect/3' @ V_L2 @ ( '2d.line/2' @ V_A @ V_B ) @ V_S )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_S @ V_C ) )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_S @ V_P ) ) ) )
     => ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_M @ V_K ) )
        = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_M @ V_L ) ) ) ) )).
