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

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  165 (  18 equality;  33 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :  123 (   0   ~;   8   |;  12   &; 103   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   0   :)
%            Number of variables   :   13 (   2 sgn;   1   !;   3   ?;   7   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_C: '2d.Shape'] :
        ( V_C
        = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ -1 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p2_qustion,question,(
    ! [Tv3: $tType] :
      ( 'Find/1'
      @ ^ [V_l: '2d.Shape'] :
        ? [V_p: '2d.Point',V_q: '2d.Point',V_t: Tv3] :
          ( ( '</2' @ ( '2d.x-coord/1' @ V_p ) @ ( '2d.x-coord/1' @ V_q ) )
          & ( V_l
            = ( '2d.line/2' @ V_p @ V_q ) )
          & ( '2d.on/2' @ ( '2d.point/2' @ ( '//2' @ 3 @ 2 ) @ 0 ) @ V_l )
          & ( '2d.tangent/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ -1 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ) @ V_l ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_c: 'Z'] :
        ( V_c
        = ( 'cardinality-of/1'
          @ ( 'set-by-def/1'
            @ ^ [V_x: 'R'] :
                ( ( '-/2' @ ( '^/2' @ V_x @ 3 ) @ ( '^/2' @ V_x @ 2 ) )
                = ( '*/2' @ V_p @ ( '-/2' @ V_x @ ( '//2' @ 3 @ 2 ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_C_dot_0: '2d.Shape'] :
      ( V_C_dot_0
      = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ -1 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_l_dot_0: '2d.Shape'] :
      ( ( V_l_dot_0
        = ( '2d.line/2' @ ( '2d.point/2' @ 0 @ 0 ) @ ( '2d.point/2' @ 1 @ 0 ) ) )
      | ( V_l_dot_0
        = ( '2d.line/2' @ ( '2d.point/2' @ 0 @ ( '//2' @ -9 @ 32 ) ) @ ( '2d.point/2' @ ( '//2' @ 3 @ 2 ) @ 0 ) ) )
      | ( V_l_dot_0
        = ( '2d.line/2' @ ( '2d.point/2' @ 0 @ -12 ) @ ( '2d.point/2' @ ( '//2' @ 3 @ 2 ) @ 0 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_c_dot_0: 'Z'] :
      ( ( ( '</2' @ V_p @ 0 )
        & ( V_c_dot_0 = 1 ) )
      | ( ( V_p = 0 )
        & ( V_c_dot_0 = 2 ) )
      | ( ( '</2' @ 0 @ V_p )
        & ( '</2' @ V_p @ ( '//2' @ 3 @ 16 ) )
        & ( V_c_dot_0 = 3 ) )
      | ( ( V_p
          = ( '//2' @ 3 @ 16 ) )
        & ( V_c_dot_0 = 2 ) )
      | ( ( '</2' @ ( '//2' @ 3 @ 16 ) @ V_p )
        & ( '</2' @ V_p @ 8 )
        & ( V_c_dot_0 = 1 ) )
      | ( ( V_p = 8 )
        & ( V_c_dot_0 = 2 ) )
      | ( ( '</2' @ 8 @ V_p )
        & ( V_c_dot_0 = 3 ) ) ) ),
    answer_to(p3_question,[])).
