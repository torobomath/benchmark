%% DOMAIN:    Geometry, polygons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1996, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-06
%%
%% <PROBLEM-TEXT>
%% Let $ABCDEF$ be a convex hexagon such that $AB$ is parallel to $DE$, $BC$ is
%% parallel to $EF$, and $CD$ is parallel to $FA$. Let $R_A$, $R_C$, $R_E$ denote the
%% circumradii of triangles $FAB$, $BCD$, $DEF$, respectively, and let $P$ denote the
%% perimeter of the hexagon. Prove that
%% ¥[
%% R_A + R_C + R_E ¥ge ¥frac{P}{2}.
%% ¥]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  119 (   4 equality;  56 variable)
%            Maximal formula depth :   38 (  38 average)
%            Number of connectives :  110 (   0   ~;   0   |;  13   &;  96   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   13 (   0 sgn;  13   !;   0   ?;   0   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   1 pred;    2 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_K1: '2d.Shape',V_K2: '2d.Shape',V_K3: '2d.Shape',V_RA: $real,V_RC: $real,V_RE: $real,V_P: $real] :
      ( ( ( '2d.is-convex-shape/1' @ ( '2d.polygon/1' @ ( 'cons/2' @ '2d.Point' @ V_A @ ( 'cons/2' @ '2d.Point' @ V_B @ ( 'cons/2' @ '2d.Point' @ V_C @ ( 'cons/2' @ '2d.Point' @ V_D @ ( 'cons/2' @ '2d.Point' @ V_E @ ( 'cons/2' @ '2d.Point' @ V_F @ ( 'nil/0' @ '2d.Point' ) ) ) ) ) ) ) ) )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_A @ V_B ) @ ( '2d.line/2' @ V_D @ V_E ) )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_B @ V_C ) @ ( '2d.line/2' @ V_E @ V_F ) )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_C @ V_D ) @ ( '2d.line/2' @ V_A @ V_F ) )
        & ( '2d.circle-type/1' @ V_K1 )
        & ( '2d.circle-type/1' @ V_K2 )
        & ( '2d.circle-type/1' @ V_K3 )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_F @ V_A @ V_B ) @ V_K1 )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_B @ V_C @ V_D ) @ V_K2 )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_D @ V_E @ V_F ) @ V_K3 )
        & ( V_RA
          = ( '2d.radius-of/1' @ V_K1 ) )
        & ( V_RC
          = ( '2d.radius-of/1' @ V_K2 ) )
        & ( V_RE
          = ( '2d.radius-of/1' @ V_K3 ) )
        & ( V_P
          = ( $sum @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) @ ( $sum @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) @ ( $sum @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_D ) ) @ ( $sum @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_E ) ) @ ( $sum @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_F ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_F @ V_A ) ) ) ) ) ) ) ) )
     => ( $greatereq @ ( $sum @ V_RA @ ( $sum @ V_RC @ V_RE ) ) @ ( $quotient @ V_P @ 2.0 ) ) ) )).

