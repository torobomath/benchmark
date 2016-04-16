%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2001, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2013-12-13
%%
%% <PROBLEM-TEXT>
%% Assume that there are the points $A$, $B$, $C$, and $D$ on the
%% spherical surface of the radius $r$. The length of each side of the
%% tetrahedron $ABCD$ satisfies $AB=\sqrt{3}$ and $AC=AD=BC=BD=CD=2$.
%% Find the value of $r$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   68 (   8 equality;  32 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   50 (   0   ~;   0   |;  11   &;  39   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   5   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   0 pred;    1 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_r: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_S: '3d.Shape'] :
        ( ( '3d.sphere-type/1' @ V_S )
        & ( ( '3d.distance/2' @ V_A @ V_B )
          = ( '^/2' @ 3.0 @ ( $quotient @ 1.0 @ 2.0 ) ) )
        & ( ( '3d.distance/2' @ V_A @ V_C )
          = ( '3d.distance/2' @ V_A @ V_D ) )
        & ( ( '3d.distance/2' @ V_A @ V_D )
          = ( '3d.distance/2' @ V_B @ V_C ) )
        & ( ( '3d.distance/2' @ V_B @ V_C )
          = ( '3d.distance/2' @ V_B @ V_D ) )
        & ( ( '3d.distance/2' @ V_B @ V_D )
          = ( '3d.distance/2' @ V_C @ V_D ) )
        & ( ( '3d.distance/2' @ V_C @ V_D )
          = 2.0 )
        & ( '3d.on/2' @ V_A @ V_S )
        & ( '3d.on/2' @ V_B @ V_S )
        & ( '3d.on/2' @ V_C @ V_S )
        & ( '3d.on/2' @ V_D @ V_S )
        & ( V_r
          = ( '3d.radius-of/1' @ V_S ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_r_dot_0: $real] :
      ( V_r_dot_0
      = ( $quotient @ ( 'sqrt/1' @ 13.0 ) @ 3.0 ) ) ),
    answer_to(p1_question,[])).

