%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2003, Humanities Course, Problem 6
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-23
%%
%% <PROBLEM-TEXT>
%% Consider the tetrahedron $OABC$ in a space, and assume that
%% $\angle AOB$, $\angle BOC$, and $\angle COA$ are all $90^{\circ}$.
%% Let $a$, $b$, and $c$ be the lengths of the sides $OA$, $OB$, and
%% $OC$, respectively, and let $G$ be the centroid of the triangle
%% $ABC$.
%%
%% (1) Represent the condition for all $\angle OGA$, $\angle OGB$, and
%% $\angle OGC$ to be $90^{\circ}$ by a relational expression of $a$,
%% $b$, and $c$.
%%
%% (2) Let $D$ be the point that internally divides the line segment
%% $BC$ in a ratio of $1 : 2$. Assume that the point $P$ moves on the
%% straight line $AD$ except $A$, and the point $Q$ moves so that the
%% centroid of the triangle $APQ$ is at the point $G$. Find the minimum
%% length of the line segment $OQ$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  217 (  17 equality;  90 variable)
%            Maximal formula depth :   33 (  13 average)
%            Number of connectives :  183 (   1   ~;   0   |;  27   &; 155   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   33 (   3   :;   0   =)
%            Number of variables   :   25 (   0 sgn;   0   !;  20   ?;   5   ^)
%                                         (  25   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    3 func;    5 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_abc: ( 'ListOf' @ $real )] :
      ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_G: '3d.Point',V_a: $real,V_b: $real,V_c: $real] :
        ( ( '3d.is-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
        & ( '3d.is-right/1' @ ( '3d.angle/3' @ V_A @ V_O @ V_B ) )
        & ( '3d.is-right/1' @ ( '3d.angle/3' @ V_B @ V_O @ V_C ) )
        & ( '3d.is-right/1' @ ( '3d.angle/3' @ V_C @ V_O @ V_A ) )
        & ( V_a
          = ( '3d.distance/2' @ V_O @ V_A ) )
        & ( V_b
          = ( '3d.distance/2' @ V_O @ V_B ) )
        & ( V_c
          = ( '3d.distance/2' @ V_O @ V_C ) )
        & ( V_G
          = ( '3d.centroid-of/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) )
        & ( '3d.is-right/1' @ ( '3d.angle/3' @ V_O @ V_G @ V_A ) )
        & ( '3d.is-right/1' @ ( '3d.angle/3' @ V_O @ V_G @ V_B ) )
        & ( '3d.is-right/1' @ ( '3d.angle/3' @ V_O @ V_G @ V_C ) )
        & ( V_abc
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_c @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_OQ_min: $real] :
      ? [V_OQ_set: ( 'SetOf' @ $real )] :
        ( ( 'minimum/2' @ V_OQ_set @ V_OQ_min )
        & ( V_OQ_set
          = ( 'set-by-def/1' @ $real
            @ ^ [V_OQ: $real] :
              ? [V_O: '3d.Point',V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_G: '3d.Point',V_D: '3d.Point',V_P: '3d.Point',V_Q: '3d.Point'] :
                ( ( '3d.is-tetrahedron/4' @ V_O @ V_A @ V_B @ V_C )
                & ( '3d.is-right/1' @ ( '3d.angle/3' @ V_A @ V_O @ V_B ) )
                & ( '3d.is-right/1' @ ( '3d.angle/3' @ V_B @ V_O @ V_C ) )
                & ( '3d.is-right/1' @ ( '3d.angle/3' @ V_C @ V_O @ V_A ) )
                & ( 'a/0'
                  = ( '3d.distance/2' @ V_O @ V_A ) )
                & ( 'b/0'
                  = ( '3d.distance/2' @ V_O @ V_B ) )
                & ( 'c/0'
                  = ( '3d.distance/2' @ V_O @ V_C ) )
                & ( V_G
                  = ( '3d.centroid-of/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) )
                & ( '3d.divide-internally/4' @ V_D @ ( '3d.seg/2' @ V_B @ V_C ) @ 1.0 @ 2.0 )
                & ( '3d.on/2' @ V_P @ ( '3d.line/2' @ V_A @ V_D ) )
                & ( V_P != V_A )
                & ( V_G
                  = ( '3d.centroid-of/1' @ ( '3d.triangle/3' @ V_A @ V_P @ V_Q ) ) )
                & ( V_OQ
                  = ( '3d.distance/2' @ V_O @ V_Q ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_abc_dot_0: ( 'ListOf' @ $real )] :
    ? [V_a_dot_0: $real,V_b_dot_0: $real,V_c_dot_0: $real] :
      ( ( V_abc_dot_0
        = ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'cons/2' @ $real @ V_c_dot_0 @ ( 'nil/0' @ $real ) ) ) ) )
      & ( $less @ 0.0 @ V_a_dot_0 )
      & ( V_a_dot_0 = V_b_dot_0 )
      & ( V_b_dot_0 = V_c_dot_0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_OQ_min_dot_0: $real] :
      ( V_OQ_min_dot_0
      = ( 'sqrt/1' @ ( $quotient @ ( $sum @ ( $product @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) @ ( $sum @ ( $product @ ( '^/2' @ 'b/0' @ 2.0 ) @ ( '^/2' @ 'c/0' @ 2.0 ) ) @ ( $product @ 4.0 @ ( $product @ ( '^/2' @ 'c/0' @ 2.0 ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) ) ) @ ( $sum @ ( $product @ 9.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 4.0 @ ( '^/2' @ 'b/0' @ 2.0 ) ) @ ( '^/2' @ 'c/0' @ 2.0 ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

