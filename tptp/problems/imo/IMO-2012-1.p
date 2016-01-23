%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2012, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-17
%%
%% <PROBLEM-TEXT>
%% Given triangle ABC the point J is the centre of the excircle opposite the
%% vertex A. This excircle is tangent to the side BC at M, and to the lines AB
%% and AC at K and L, respectively. The lines LM and BJ meet at F, and the lines
%% KM and CJ meet at G. Let S be the point of intersection of the lines AF and
%% BC, and let T be the point of intersection of the lines AG and BC. Prove that
%% M is the midpoint of ST.
%% (The excircle of ABC opposite the vertex A is the circle that is tangent to
%% the line segment BC, to the ray AB beyond B, and to the ray AC beyond C.)
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   73 (   2 equality;  46 variable)
%            Maximal formula depth :   29 (  29 average)
%            Number of connectives :   68 (   0   ~;   0   |;  10   &;  57   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :   12 (   0 sgn;  12   !;   0   ?;   0   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_E: '2d.Shape',V_J: '2d.Point',V_M: '2d.Point',V_K: '2d.Point',V_L: '2d.Point',V_F: '2d.Point',V_G: '2d.Point',V_S: '2d.Point',V_T: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.circle-type/1' @ V_E )
        & ( '2d.is-excircle-of/3' @ V_E @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_A )
        & ( V_J
          = ( '2d.center-of/1' @ V_E ) )
        & ( '2d.tangent/3' @ V_E @ ( '2d.seg/2' @ V_B @ V_C ) @ V_M )
        & ( '2d.tangent/3' @ ( '2d.line/2' @ V_A @ V_B ) @ V_E @ V_K )
        & ( '2d.tangent/3' @ ( '2d.line/2' @ V_A @ V_C ) @ V_E @ V_L )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_L @ V_M ) @ ( '2d.line/2' @ V_B @ V_J ) @ V_F )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_K @ V_M ) @ ( '2d.line/2' @ V_C @ V_J ) @ V_G )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_F ) @ ( '2d.line/2' @ V_B @ V_C ) @ V_S )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_G ) @ ( '2d.line/2' @ V_B @ V_C ) @ V_T ) )
     => ( V_M
        = ( '2d.seg-midpoint-of/1' @ ( '2d.seg/2' @ V_S @ V_T ) ) ) ) )).
