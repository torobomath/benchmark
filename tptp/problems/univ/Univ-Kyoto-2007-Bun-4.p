%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2007, Humanities Course, Problem 4
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-02-28
%%
%% <PROBLEM-TEXT>
%% In the coordinate space, let $l$ be the straight line passing through
%% the point $(3, 4, 0)$ and parallel to the vector $\vec{a}=(1, 1, 1)$,
%% and let $m$ be the straight line passing through the point
%% $(2, -, 1, 0)$ and parallel to the vector $\vec{b}=(1, -, 2, 0)$.
%% When the points $P$ and $Q$ freely move on the straight lines $l$ and
%% $m$, respectively, find the minimum length of the line segment $PQ$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   54 (   4 equality;  15 variable)
%            Maximal formula depth :   23 (  14 average)
%            Number of connectives :   44 (   0   ~;   0   |;   8   &;  36   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   4   ?;   3   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    1 func;    8 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_d: $real] :
            ? [V_l: '3d.Shape',V_m: '3d.Shape'] :
              ( ( '3d.line-type/1' @ V_l )
              & ( '3d.line-type/1' @ V_m )
              & ( '3d.on/2' @ ( '3d.point/3' @ 3.0 @ 4.0 @ 0.0 ) @ V_l )
              & ( ( '3d.vec3d/3' @ 1.0 @ 1.0 @ 1.0 )
                = ( '3d.direction-vec/1' @ V_l ) )
              & ( '3d.on/2' @ ( '3d.point/3' @ 2.0 @ -1.0 @ 0.0 ) @ V_m )
              & ( ( '3d.vec3d/3' @ 1.0 @ -2.0 @ 0.0 )
                = ( '3d.direction-vec/1' @ V_m ) )
              & ? [V_P: '3d.Point',V_Q: '3d.Point'] :
                  ( ( '3d.on/2' @ V_P @ V_l )
                  & ( '3d.on/2' @ V_Q @ V_m )
                  & ( V_d
                    = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_P @ V_Q ) ) ) ) ) )
        @ V_x ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( V_x_dot_0
      = ( $quotient @ ( 'sqrt/1' @ 14.0 ) @ 2.0 ) ) ),
    answer_to(p1_question,[])).

