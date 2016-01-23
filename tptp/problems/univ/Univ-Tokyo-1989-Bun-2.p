%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1989, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-13
%%
%% <PROBLEM-TEXT>
%% Consider the following two parabolas for $a > 0$:
%%
%% $C_1 : y = x^2 +\frac{1}{a^2}$
%%
%% $C_2 : y = -(x-a)^2$
%%
%% (1) Prove that there always exist $2$ straight lines that are in
%% contact with both $C_1$ and $C_2$.
%%
%% (2) Find the minimum value of the area $S(a)$ of the quadrilateral
%% defined by the four points determined in (1).
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  127 (  12 equality;  57 variable)
%            Maximal formula depth :   32 (  20 average)
%            Number of connectives :  102 (   1   ~;   0   |;  18   &;  82   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   26 (   0 sgn;   1   !;  18   ?;   7   ^)
%                                         (  26   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_a: 'R'] :
      ( ( '>/2' @ V_a @ 0 )
     => ? [V_C1: '2d.Shape',V_C2: '2d.Shape'] :
          ( ( V_C1
            = ( '2d.graph-of/1'
              @ ( 'fun/1'
                @ ^ [V_x_dot_0: 'R'] :
                    ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '//2' @ 1 @ ( '^/2' @ V_a @ 2 ) ) ) ) ) )
          & ( V_C2
            = ( '2d.graph-of/1'
              @ ( 'fun/1'
                @ ^ [V_x: 'R'] :
                    ( '-/1' @ ( '^/2' @ ( '-/2' @ V_x @ V_a ) @ 2 ) ) ) ) )
          & ? [V_p1: '2d.Point',V_p2: '2d.Point',V_q1: '2d.Point',V_q2: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape'] :
              ( ( V_l
                = ( '2d.line/2' @ V_p1 @ V_p2 ) )
              & ( V_m
                = ( '2d.line/2' @ V_q1 @ V_q2 ) )
              & ( V_l != V_m )
              & ( '2d.tangent/2' @ V_l @ V_C1 )
              & ( '2d.tangent/2' @ V_l @ V_C2 )
              & ( '2d.tangent/2' @ V_m @ V_C1 )
              & ( '2d.tangent/2' @ V_m @ V_C2 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S_min: 'R'] :
      ? [V_S_set: 'SetOf' @ 'R'] :
        ( ( V_S_set
          = ( 'set-by-def/1'
            @ ^ [V_S: 'R'] :
              ? [V_a: 'R',V_C1: '2d.Shape',V_C2: '2d.Shape'] :
                ( ( '>/2' @ V_a @ 0 )
                & ( V_C1
                  = ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x_dot_0: 'R'] :
                          ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '//2' @ 1 @ ( '^/2' @ V_a @ 2 ) ) ) ) ) )
                & ( V_C2
                  = ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: 'R'] :
                          ( '-/1' @ ( '^/2' @ ( '-/2' @ V_x @ V_a ) @ 2 ) ) ) ) )
                & ? [V_p1: '2d.Point',V_p2: '2d.Point',V_q1: '2d.Point',V_q2: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape'] :
                    ( ( V_l
                      = ( '2d.line/2' @ V_p1 @ V_p2 ) )
                    & ( V_m
                      = ( '2d.line/2' @ V_q1 @ V_q2 ) )
                    & ( '2d.tangent/3' @ V_l @ V_C1 @ V_p1 )
                    & ( '2d.tangent/3' @ V_l @ V_C2 @ V_p2 )
                    & ( '2d.tangent/3' @ V_m @ V_C1 @ V_q1 )
                    & ( '2d.tangent/3' @ V_m @ V_C2 @ V_q2 )
                    & ( V_S
                      = ( '2d.area-of/1' @ ( '2d.square/4' @ V_p1 @ V_p2 @ V_q1 @ V_q2 ) ) ) ) ) ) )
        & ( 'minimum/2' @ V_S_set @ V_S_min ) ) )).

thf(p2_answer,answer,(
    ^ [V_S_min_dot_0: 'R'] :
      ( V_S_min_dot_0
      = ( '*/2' @ 4 @ ( '^/2' @ 2 @ ( '//2' @ 1 @ 4 ) ) ) ) ),
    answer_to(p2_question,[])).
