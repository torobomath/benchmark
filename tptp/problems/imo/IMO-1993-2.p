%% DOMAIN:    Geometry, triangles
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1993, Problem 2
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-10
%%
%% <PROBLEM-TEXT>
%% Let $D$ be a point inside acute triangle $ABC$ such that
%% $¥angle ADB = ¥angle ACB + ¥frac{¥pi}{2}$ and $AC ¥cdot BD = AD ¥cdot BC$.
%% ¥begin{flushleft}
%% (a) Calculate the ratio $¥frac{AB ¥cdot CD}{ AC ¥cdot BD}$.¥¥
%% (b) Prove that the tangents at $C$ to the circumcircles of $¥triangle ACD$ and
%% $¥triangle BCD$ are perpendicular.
%% ¥end{flushleft}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  133 (   6 equality;  72 variable)
%            Maximal formula depth :   25 (  16 average)
%            Number of connectives :  118 (   0   ~;   0   |;  15   &; 102   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   14 (   0 sgn;   8   !;   4   ?;   2   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.point-inside-of/2' @ V_D @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_D @ V_B ) )
          = ( '+/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) ) @ ( '//2' @ 'Pi/0' @ 2 ) ) )
        & ( ( '*/2' @ ( '2d.distance/2' @ V_A @ V_C ) @ ( '2d.distance/2' @ V_B @ V_D ) )
          = ( '*/2' @ ( '2d.distance/2' @ V_A @ V_D ) @ ( '2d.distance/2' @ V_B @ V_D ) ) )
        & ( V_x
          = ( '//2' @ ( '*/2' @ ( '2d.distance/2' @ V_A @ V_B ) @ ( '2d.distance/2' @ V_C @ V_D ) ) @ ( '*/2' @ ( '2d.distance/2' @ V_A @ V_C ) @ ( '2d.distance/2' @ V_B @ V_D ) ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_S1: '2d.Shape',V_S2: '2d.Shape',V_l: '2d.Shape',V_m: '2d.Shape'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.point-inside-of/2' @ V_D @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_D @ V_B ) )
          = ( '+/2' @ ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) ) @ ( '//2' @ 'Pi/0' @ 2 ) ) )
        & ( ( '*/2' @ ( '2d.distance/2' @ V_A @ V_C ) @ ( '2d.distance/2' @ V_B @ V_D ) )
          = ( '*/2' @ ( '2d.distance/2' @ V_A @ V_D ) @ ( '2d.distance/2' @ V_B @ V_D ) ) )
        & ( '2d.circle-type/1' @ V_S1 )
        & ( '2d.circle-type/1' @ V_S2 )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_C @ V_D ) @ V_S1 )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_B @ V_C @ V_D ) @ V_S2 )
        & ( '2d.tangent/3' @ V_l @ V_S1 @ V_C )
        & ( '2d.tangent/3' @ V_m @ V_S2 @ V_C ) )
     => ( '2d.perpendicular/2' @ V_l @ V_m ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( V_x_dot_0
      = ( 'sqrt/1' @ 2 ) ) ),
    answer_to(p1_question,[])).
