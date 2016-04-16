%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2007, Humanities Course, Problem 2
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-03-25
%%
%% <PROBLEM-TEXT>
%% Let $l$ be the tangent to the graph of the cubic function
%% $y=x^3-2 x^2-x+2$ at the point $(1, 0)$. Find the volume of the solid
%% obtained by rotating the region enclosed by this graph of the cubic
%% function and the tangent $l$ around the $x$ axis.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   75 (   4 equality;  10 variable)
%            Maximal formula depth :   20 (  14 average)
%            Number of connectives :   65 (   0   ~;   0   |;   4   &;  61   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   2   ?;   3   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_v: $real] :
      ? [V_l: '2d.Shape',V_S: '2d.Shape'] :
        ( ( '2d.line-type/1' @ V_l )
        & ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 2.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ -2.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) @ V_l @ ( '2d.point/2' @ 1.0 @ 0.0 ) )
        & ( V_S
          = ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 2.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ -2.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) @ ( 'cons/2' @ '2d.Shape' @ V_l @ ( 'nil/0' @ '2d.Shape' ) ) ) ) )
        & ( V_v
          = ( '3d.volume-of/1'
            @ ( '3d.solid-of-revolution/2'
              @ ( '3d.shape-of-cpfun/1'
                @ ^ [V_p: '3d.Point'] :
                    ( ( '2d.on/2' @ ( '2d.point/2' @ ( '3d.x-coord/1' @ V_p ) @ ( '3d.y-coord/1' @ V_p ) ) @ V_S )
                    & ( 0.0
                      = ( '3d.z-coord/1' @ V_p ) ) ) )
              @ '3d.x-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_v_dot_0: $real] :
      ( V_v_dot_0
      = ( $product @ ( $quotient @ 22.0 @ 105.0 ) @ 'Pi/0' ) ) ),
    answer_to(p1_question,[])).

