%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1985, Humanities Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-17
%%
%% <PROBLEM-TEXT>
%% Let $t$ be a positive number. In the $x y z$ space, let $P$ be the
%% point $(t, t, 0)$, let $Q$ be the point symmetric to $P$ about the
%% plane containing the $x$ axis and the point $(t, t, 1)$, and let $R$
%% be the point symmetric to $P$ about the plane containing the $y$ axis
%% and the point $(t, t, 1)$. Let $O$ be the origin.
%%
%% (1) Find the coordinates of $Q$ and $R$.
%%
%% (2) Find the volume of the tetrahedron whose vertices are the points
%% $O$, $P$, $Q$, and $R$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  213 (   9 equality;  49 variable)
%            Maximal formula depth :   35 (  18 average)
%            Number of connectives :  193 (   0   ~;   0   |;  25   &; 168   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   1   :;   0   =)
%            Number of variables   :   21 (   0 sgn;   0   !;  17   ?;   4   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    4 func;    5 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_QR: ( 'ListOf' @ $real )] :
      ? [V_P: '3d.Point',V_H: '3d.Shape',V_K: '3d.Shape',V_Q: '3d.Point',V_R: '3d.Point',V_Qx: $real,V_Qy: $real,V_Qz: $real,V_Rx: $real,V_Ry: $real,V_Rz: $real] :
        ( ( $less @ 0.0 @ 't/0' )
        & ( V_P
          = ( '3d.point/3' @ 't/0' @ 't/0' @ 0.0 ) )
        & ( '3d.plane-type/1' @ V_H )
        & ( '3d.on/2' @ ( '3d.point/3' @ 't/0' @ 't/0' @ 1.0 ) @ V_H )
        & ( '3d.inside-of/2' @ '3d.x-axis/0' @ V_H )
        & ( '3d.plane-symmetry/3' @ V_P @ V_Q @ V_H )
        & ( '3d.plane-type/1' @ V_K )
        & ( '3d.on/2' @ ( '3d.point/3' @ 't/0' @ 't/0' @ 1.0 ) @ V_K )
        & ( '3d.inside-of/2' @ '3d.y-axis/0' @ V_K )
        & ( '3d.plane-symmetry/3' @ V_P @ V_R @ V_K )
        & ( V_Q
          = ( '3d.point/3' @ V_Qx @ V_Qy @ V_Qz ) )
        & ( V_R
          = ( '3d.point/3' @ V_Rx @ V_Ry @ V_Rz ) )
        & ( V_QR
          = ( 'cons/2' @ $real @ V_Qx @ ( 'cons/2' @ $real @ V_Qy @ ( 'cons/2' @ $real @ V_Qz @ ( 'cons/2' @ $real @ V_Rx @ ( 'cons/2' @ $real @ V_Ry @ ( 'cons/2' @ $real @ V_Rz @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_P: '3d.Point',V_H: '3d.Shape',V_K: '3d.Shape',V_Q: '3d.Point',V_R: '3d.Point',V_O: '3d.Point'] :
        ( ( $less @ 0.0 @ 't/0' )
        & ( V_P
          = ( '3d.point/3' @ 't/0' @ 't/0' @ 0.0 ) )
        & ( '3d.plane-type/1' @ V_H )
        & ( '3d.on/2' @ ( '3d.point/3' @ 't/0' @ 't/0' @ 1.0 ) @ V_H )
        & ( '3d.inside-of/2' @ '3d.x-axis/0' @ V_H )
        & ( '3d.plane-symmetry/3' @ V_P @ V_Q @ V_H )
        & ( '3d.plane-type/1' @ V_K )
        & ( '3d.on/2' @ ( '3d.point/3' @ 't/0' @ 't/0' @ 1.0 ) @ V_K )
        & ( '3d.inside-of/2' @ '3d.y-axis/0' @ V_K )
        & ( '3d.plane-symmetry/3' @ V_P @ V_R @ V_K )
        & ( V_O = '3d.origin/0' )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_O @ V_P @ V_Q @ V_R ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_QR_dot_0: ( 'ListOf' @ $real )] :
      ( ( $less @ 0.0 @ 't/0' )
      & ( V_QR_dot_0
        = ( 'cons/2' @ $real @ 't/0' @ ( 'cons/2' @ $real @ ( $quotient @ ( $difference @ ( '^/2' @ 't/0' @ 3.0 ) @ 't/0' ) @ ( $sum @ ( '^/2' @ 't/0' @ 2.0 ) @ 1.0 ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( $product @ 2.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) @ ( $sum @ ( '^/2' @ 't/0' @ 2.0 ) @ 1.0 ) ) @ ( 'cons/2' @ $real @ ( $quotient @ ( $difference @ ( '^/2' @ 't/0' @ 3.0 ) @ 't/0' ) @ ( $sum @ ( '^/2' @ 't/0' @ 2.0 ) @ 1.0 ) ) @ ( 'cons/2' @ $real @ 't/0' @ ( 'cons/2' @ $real @ ( $quotient @ ( $product @ 2.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) @ ( $sum @ ( '^/2' @ 't/0' @ 2.0 ) @ 1.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( ( $less @ 0.0 @ 't/0' )
      & ( V_V_dot_0
        = ( $quotient @ ( $product @ 4.0 @ ( '^/2' @ 't/0' @ 4.0 ) ) @ ( $product @ 3.0 @ ( '^/2' @ ( $sum @ ( '^/2' @ 't/0' @ 2.0 ) @ 1.0 ) @ 2.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

