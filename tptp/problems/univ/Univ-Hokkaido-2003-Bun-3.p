%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2003, Humanities Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-25
%%
%% <PROBLEM-TEXT>
%% Consider the tetrahedron $PABC$ whose base is the equilateral
%% triangle $ABC$ with the side length of $3$. Define
%% $PA = PB = PC = 2$.
%%
%% (1) Find the volume of the tetrahedron $PABC$.
%%
%% (2) When the point $E$ on the side $AB$ and the point $F$ on the side
%% $AC$ satisfy $AE = AF$ and $\cos\angle EPF =\frac{4}{5}$, find the
%% length $AE$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  107 (  14 equality;  45 variable)
%            Maximal formula depth :   23 (  14 average)
%            Number of connectives :   75 (   0   ~;   0   |;  14   &;  61   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   0   !;  10   ?;   4   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point'] :
        ( ( '3d.is-equilateral-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '3d.distance/2' @ V_A @ V_B )
          = 3.0 )
        & ( ( '3d.distance/2' @ V_P @ V_A )
          = 2.0 )
        & ( ( '3d.distance/2' @ V_P @ V_B )
          = 2.0 )
        & ( ( '3d.distance/2' @ V_P @ V_C )
          = 2.0 )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_P @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_AE: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_P: '3d.Point',V_E: '3d.Point',V_F: '3d.Point'] :
        ( ( '3d.is-equilateral-triangle/3' @ V_A @ V_B @ V_C )
        & ( ( '3d.distance/2' @ V_A @ V_B )
          = 3.0 )
        & ( ( '3d.distance/2' @ V_P @ V_A )
          = 2.0 )
        & ( ( '3d.distance/2' @ V_P @ V_B )
          = 2.0 )
        & ( ( '3d.distance/2' @ V_P @ V_C )
          = 2.0 )
        & ( '3d.on/2' @ V_E @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( '3d.on/2' @ V_F @ ( '3d.seg/2' @ V_A @ V_C ) )
        & ( ( '3d.distance/2' @ V_A @ V_E )
          = ( '3d.distance/2' @ V_A @ V_F ) )
        & ( ( '3d.cos-of-angle/1' @ ( '3d.angle/3' @ V_E @ V_P @ V_F ) )
          = ( $quotient @ 4.0 @ 5.0 ) )
        & ( V_AE
          = ( '3d.distance/2' @ V_A @ V_E ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $quotient @ 3.0 @ 4.0 ) @ ( 'sqrt/1' @ 3.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_AE_dot_0: $real] :
      ( V_AE_dot_0
      = ( $quotient @ ( $sum @ -3.0 @ ( 'sqrt/1' @ 33.0 ) ) @ 3.0 ) ) ),
    answer_to(p2_question,[])).

