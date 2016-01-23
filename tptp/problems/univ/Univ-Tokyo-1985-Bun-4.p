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

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  196 (   9 equality;  79 variable)
%            Maximal formula depth :   34 (  22 average)
%            Number of connectives :  176 (   0   ~;   0   |;  25   &; 151   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :   25 (   0 sgn;   0   !;  17   ?;   4   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_QR: 'ListOf' @ 'R'] :
      ? [V_P: '3d.Point',V_H: '3d.Shape',V_K: '3d.Shape',V_Q: '3d.Point',V_R: '3d.Point',V_Qx: 'R',V_Qy: 'R',V_Qz: 'R',V_Rx: 'R',V_Ry: 'R',V_Rz: 'R'] :
        ( ( '</2' @ 0 @ V_t )
        & ( V_P
          = ( '3d.point/3' @ V_t @ V_t @ 0 ) )
        & ( '3d.plane-type/1' @ V_H )
        & ( '3d.on/2' @ ( '3d.point/3' @ V_t @ V_t @ 1 ) @ V_H )
        & ( '3d.inside-of/2' @ '3d.x-axis/0' @ V_H )
        & ( '3d.plane-symmetry/3' @ V_P @ V_Q @ V_H )
        & ( '3d.plane-type/1' @ V_K )
        & ( '3d.on/2' @ ( '3d.point/3' @ V_t @ V_t @ 1 ) @ V_K )
        & ( '3d.inside-of/2' @ '3d.y-axis/0' @ V_K )
        & ( '3d.plane-symmetry/3' @ V_P @ V_R @ V_K )
        & ( V_Q
          = ( '3d.point/3' @ V_Qx @ V_Qy @ V_Qz ) )
        & ( V_R
          = ( '3d.point/3' @ V_Rx @ V_Ry @ V_Rz ) )
        & ( V_QR
          = ( 'cons/2' @ V_Qx @ ( 'cons/2' @ V_Qy @ ( 'cons/2' @ V_Qz @ ( 'cons/2' @ V_Rx @ ( 'cons/2' @ V_Ry @ ( 'cons/2' @ V_Rz @ 'nil/0' ) ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_P: '3d.Point',V_H: '3d.Shape',V_K: '3d.Shape',V_Q: '3d.Point',V_R: '3d.Point',V_O: '3d.Point'] :
        ( ( '</2' @ 0 @ V_t )
        & ( V_P
          = ( '3d.point/3' @ V_t @ V_t @ 0 ) )
        & ( '3d.plane-type/1' @ V_H )
        & ( '3d.on/2' @ ( '3d.point/3' @ V_t @ V_t @ 1 ) @ V_H )
        & ( '3d.inside-of/2' @ '3d.x-axis/0' @ V_H )
        & ( '3d.plane-symmetry/3' @ V_P @ V_Q @ V_H )
        & ( '3d.plane-type/1' @ V_K )
        & ( '3d.on/2' @ ( '3d.point/3' @ V_t @ V_t @ 1 ) @ V_K )
        & ( '3d.inside-of/2' @ '3d.y-axis/0' @ V_K )
        & ( '3d.plane-symmetry/3' @ V_P @ V_R @ V_K )
        & ( V_O = '3d.origin/0' )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.tetrahedron/4' @ V_O @ V_P @ V_Q @ V_R ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_QR_dot_0: 'ListOf' @ 'R'] :
      ( ( '</2' @ 0 @ V_t )
      & ( V_QR_dot_0
        = ( 'cons/2' @ V_t @ ( 'cons/2' @ ( '//2' @ ( '-/2' @ ( '^/2' @ V_t @ 3 ) @ V_t ) @ ( '+/2' @ ( '^/2' @ V_t @ 2 ) @ 1 ) ) @ ( 'cons/2' @ ( '//2' @ ( '*/2' @ 2 @ ( '^/2' @ V_t @ 2 ) ) @ ( '+/2' @ ( '^/2' @ V_t @ 2 ) @ 1 ) ) @ ( 'cons/2' @ ( '//2' @ ( '-/2' @ ( '^/2' @ V_t @ 3 ) @ V_t ) @ ( '+/2' @ ( '^/2' @ V_t @ 2 ) @ 1 ) ) @ ( 'cons/2' @ V_t @ ( 'cons/2' @ ( '//2' @ ( '*/2' @ 2 @ ( '^/2' @ V_t @ 2 ) ) @ ( '+/2' @ ( '^/2' @ V_t @ 2 ) @ 1 ) ) @ 'nil/0' ) ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_t )
      & ( V_V_dot_0
        = ( '//2' @ ( '*/2' @ 4 @ ( '^/2' @ V_t @ 4 ) ) @ ( '*/2' @ 3 @ ( '^/2' @ ( '+/2' @ ( '^/2' @ V_t @ 2 ) @ 1 ) @ 2 ) ) ) ) ) ),
    answer_to(p2_question,[])).
