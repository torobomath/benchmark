%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2005, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-02
%%
%% <PROBLEM-TEXT>
%% Let $f(x)= 2 x^3 + x^2 - 3$.
%%
%% (1) Make an increase/decrease table of the function $f(x)$ and draw a
%% rough graph of $y = f(x)$.
%%
%% (2) Find the range of the real number $m$ such that the straight line
%% $y = m x$ intersects with the curve $y = f(x)$ at different three
%% points.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   50 (   3 equality;  19 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :   42 (   0   ~;   0   |;   6   &;  36   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   6   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_f: 'R2R',V_l: '2d.Shape',V_C: '2d.Shape',V_p: '2d.Point',V_q: '2d.Point',V_r: '2d.Point'] :
        ( ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ -3 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 2 @ 'nil/0' ) ) ) ) ) )
        & ( V_l
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '*/2' @ V_m @ V_x ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1' @ V_f ) )
        & ( 'pairwise-distinct/1' @ ( 'cons/2' @ V_p @ ( 'cons/2' @ V_q @ ( 'cons/2' @ V_r @ 'nil/0' ) ) ) )
        & ( '2d.on/2' @ V_p @ ( '2d.intersection/2' @ V_l @ V_C ) )
        & ( '2d.on/2' @ V_q @ ( '2d.intersection/2' @ V_l @ V_C ) )
        & ( '2d.on/2' @ V_r @ ( '2d.intersection/2' @ V_l @ V_C ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: 'R'] :
      ( '>/2' @ V_m_dot_0 @ 4 ) ),
    answer_to(p2_question,[])).
