%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2007, Problem 4
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-10-31
%%
%% <PROBLEM-TEXT>
%% In triangle ABC the bisector of angle BCA intersects the circumcircle
%% again at R, the perpendicular bisector of BC at P, and the perpendicular
%% bisector of AC at Q. The midpoint of BC is K and the midpoint of AC is L.
%% Prove that the triangles RPK and RQL have the same area.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   67 (   3 equality;  42 variable)
%            Maximal formula depth :   30 (  30 average)
%            Number of connectives :   60 (   0   ~;   0   |;  13   &;  46   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;  12   !;   0   ?;   0   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_l: '2d.Shape',V_S: '2d.Shape',V_P: '2d.Point',V_R: '2d.Point',V_Q: '2d.Point',V_m: '2d.Shape',V_n: '2d.Shape',V_K: '2d.Point',V_L: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.line-type/1' @ V_n )
        & ( '2d.is-angle-bisector/2' @ V_l @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) )
        & ( '2d.circle-type/1' @ V_S )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_S )
        & ( '2d.intersect/3' @ V_l @ V_S @ V_R )
        & ( '2d.is-perp-bisector/2' @ V_m @ ( '2d.seg/2' @ V_B @ V_C ) )
        & ( '2d.intersect/3' @ V_l @ V_m @ V_P )
        & ( '2d.is-perp-bisector/2' @ V_n @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( '2d.intersect/3' @ V_l @ V_n @ V_Q )
        & ( V_K
          = ( '2d.midpoint-of/2' @ V_B @ V_C ) )
        & ( V_L
          = ( '2d.midpoint-of/2' @ V_A @ V_C ) ) )
     => ( ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_P @ V_R @ V_K ) )
        = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_R @ V_Q @ V_L ) ) ) ) )).

