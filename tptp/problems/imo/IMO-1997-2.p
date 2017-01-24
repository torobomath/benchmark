%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1997, Problem 2
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-02-27
%%
%% <PROBLEM-TEXT>
%% The angle at $A$ is the smallest angle of triangle $ABC$. The points $B$ and $C$
%% divide the circumcircle of the triangle into two arcs. Let $U$ be an interior
%% point of the arc between $B$ and $C$ which does not contain $A$. The perpendicular
%% bisectors of $AB$ and $AC$ meet the line $AU$ at $V$ and $W$, respectively. The
%% lines $BV$ and $CW$ meet at $T$. Show that
%% ¥[
%% AU = T B + T C.
%% ¥]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  135 (   7 equality;  83 variable)
%            Maximal formula depth :   37 (  37 average)
%            Number of connectives :  123 (   3   ~;   1   |;  19   &;  99   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :;   0   =)
%            Number of variables   :   13 (   0 sgn;  13   !;   0   ?;   0   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   1 pred;    1 func;    0 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_U: '2d.Point',V_V: '2d.Point',V_W: '2d.Point',V_T: '2d.Point',V_c: '2d.Point',V_r: $real,V_s: $real,V_t: $real,V_l: '2d.Shape',V_m: '2d.Shape'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( $lesseq @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) )
        & ( $lesseq @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ ( '2d.circle/2' @ V_c @ V_r ) )
        & ( 'real-number/1' @ V_s )
        & ( 'real-number/1' @ V_t )
        & ~ ( '2d.on/2' @ V_A @ ( '2d.arc/4' @ V_c @ V_r @ V_s @ V_t ) )
        & ( ( ( ( '2d.arc-ini-point/1' @ ( '2d.arc/4' @ V_c @ V_r @ V_s @ V_t ) )
              = V_B )
            & ( ( '2d.arc-end-point/1' @ ( '2d.arc/4' @ V_c @ V_r @ V_s @ V_t ) )
              = V_C ) )
          | ( ( ( '2d.arc-ini-point/1' @ ( '2d.arc/4' @ V_c @ V_r @ V_s @ V_t ) )
              = V_C )
            & ( ( '2d.arc-end-point/1' @ ( '2d.arc/4' @ V_c @ V_r @ V_s @ V_t ) )
              = V_B ) ) )
        & ( '2d.on/2' @ V_U @ ( '2d.arc/4' @ V_c @ V_r @ V_s @ V_t ) )
        & ( V_U != V_B )
        & ( V_U != V_C )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.is-perp-bisector/2' @ V_l @ ( '2d.seg/2' @ V_A @ V_B ) )
        & ( '2d.is-perp-bisector/2' @ V_m @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( '2d.intersect/3' @ V_l @ ( '2d.line/2' @ V_A @ V_U ) @ V_V )
        & ( '2d.intersect/3' @ V_l @ ( '2d.line/2' @ V_A @ V_U ) @ V_W )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_V ) @ ( '2d.line/2' @ V_C @ V_W ) @ V_T ) )
     => ( ( '2d.distance/2' @ V_A @ V_U )
        = ( $sum @ ( '2d.distance/2' @ V_T @ V_B ) @ ( '2d.distance/2' @ V_T @ V_C ) ) ) ) )).

