%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2011, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-05-15
%%
%% <PROBLEM-TEXT>
%% (1) Draw the graph of the function $y = x^3 - x^2$.
%%
%% (2) Find all the tangents to the curve $y = x^3 - x^2$ that pass
%% through the point $(\frac{3}{2}, 0)$.
%%
%% (3) Let $p$ be a constant. Find the number of different real
%% solutions of the cubic equation $x^3 - x^2 = p(x -\frac{3}{2})$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  183 (  17 equality;  22 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :  143 (   0   ~;   8   |;  12   &; 123   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   36 (   1   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   2   ?;   6   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   17 (   1 pred;    3 func;   13 numbers)

include('axioms.ax').

thf('p/0_type',type,(
    'p/0': $real )).

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_C: '2d.Shape'] :
        ( V_C
        = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_l: '2d.Shape'] :
      ? [V_p: '2d.Point',V_q: '2d.Point'] :
        ( ( $less @ ( '2d.x-coord/1' @ V_p ) @ ( '2d.x-coord/1' @ V_q ) )
        & ( V_l
          = ( '2d.line/2' @ V_p @ V_q ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ ( $quotient @ 3.0 @ 2.0 ) @ 0.0 ) @ V_l )
        & ( '2d.tangent/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) @ V_l ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_c: $int] :
        ( V_c
        = ( 'cardinality-of/1' @ $real
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_x: $real] :
                ( ( $difference @ ( '^/2' @ V_x @ 3.0 ) @ ( '^/2' @ V_x @ 2.0 ) )
                = ( $product @ 'p/0' @ ( $difference @ V_x @ ( $quotient @ 3.0 @ 2.0 ) ) ) ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_l_dot_0: '2d.Shape'] :
      ( ( V_l_dot_0
        = ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( '2d.point/2' @ 1.0 @ 0.0 ) ) )
      | ( V_l_dot_0
        = ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ ( $quotient @ -9.0 @ 32.0 ) ) @ ( '2d.point/2' @ ( $quotient @ 3.0 @ 2.0 ) @ 0.0 ) ) )
      | ( V_l_dot_0
        = ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ -12.0 ) @ ( '2d.point/2' @ ( $quotient @ 3.0 @ 2.0 ) @ 0.0 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_c_dot_0: $int] :
      ( ( ( $less @ 'p/0' @ 0.0 )
        & ( V_c_dot_0 = 1 ) )
      | ( ( 'p/0' = 0.0 )
        & ( V_c_dot_0 = 2 ) )
      | ( ( $less @ 0.0 @ 'p/0' )
        & ( $less @ 'p/0' @ ( $quotient @ 3.0 @ 16.0 ) )
        & ( V_c_dot_0 = 3 ) )
      | ( ( 'p/0'
          = ( $quotient @ 3.0 @ 16.0 ) )
        & ( V_c_dot_0 = 2 ) )
      | ( ( $less @ ( $quotient @ 3.0 @ 16.0 ) @ 'p/0' )
        & ( $less @ 'p/0' @ 8.0 )
        & ( V_c_dot_0 = 1 ) )
      | ( ( 'p/0' = 8.0 )
        & ( V_c_dot_0 = 2 ) )
      | ( ( $less @ 8.0 @ 'p/0' )
        & ( V_c_dot_0 = 3 ) ) ) ),
    answer_to(p3_question,[])).

