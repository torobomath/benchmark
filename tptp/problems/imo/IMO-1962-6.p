%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1962, Problem 6
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Consider an isosceles triangle. Let $r$ be the radius of its circumscribed
%% circle and $\rho$ the radius of its inscribed circle.
%% Prove that the distance $d$ between the centers of these two circles is\[
%% d = \sqrt{r(r - 2\rho)}.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   35 (   3 equality;  16 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   28 (   0   ~;   0   |;   6   &;  21   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    5 (   0 sgn;   5   !;   0   ?;   0   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_T: '2d.Shape',V_K1: '2d.Shape',V_K2: '2d.Shape',V_r: 'R',V_rho: 'R'] :
      ( ( ( '2d.isosceles-triangle-type/1' @ V_T )
        & ( '2d.circle-type/1' @ V_K1 )
        & ( '2d.circle-type/1' @ V_K2 )
        & ( '2d.is-inscribed-in/2' @ V_K1 @ V_T )
        & ( '2d.is-inscribed-in/2' @ V_T @ V_K2 )
        & ( V_r
          = ( '2d.radius-of/1' @ V_K1 ) )
        & ( V_rho
          = ( '2d.radius-of/1' @ V_K2 ) ) )
     => ( ( '2d.length-of/1' @ ( '2d.seg/2' @ ( '2d.center-of/1' @ V_K1 ) @ ( '2d.center-of/1' @ V_K2 ) ) )
        = ( 'sqrt/1' @ ( '*/2' @ V_r @ ( '-/2' @ V_r @ ( '*/2' @ 2 @ V_rho ) ) ) ) ) ) )).
