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
%            Number of atoms       :   61 (   3 equality;  19 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   53 (   0   ~;   0   |;   6   &;  47   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   6   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    1 func;    5 numbers)

include('axioms.ax').

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
      ? [V_f: 'R2R',V_l: '2d.Shape',V_C: '2d.Shape',V_p: '2d.Point',V_q: '2d.Point',V_r: '2d.Point'] :
        ( ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ -3.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 2.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( V_l
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $product @ V_m @ V_x ) ) ) )
        & ( V_C
          = ( '2d.graph-of/1' @ V_f ) )
        & ( 'pairwise-distinct/1' @ '2d.Point' @ ( 'cons/2' @ '2d.Point' @ V_p @ ( 'cons/2' @ '2d.Point' @ V_q @ ( 'cons/2' @ '2d.Point' @ V_r @ ( 'nil/0' @ '2d.Point' ) ) ) ) )
        & ( '2d.on/2' @ V_p @ ( '2d.intersection/2' @ V_l @ V_C ) )
        & ( '2d.on/2' @ V_q @ ( '2d.intersection/2' @ V_l @ V_C ) )
        & ( '2d.on/2' @ V_r @ ( '2d.intersection/2' @ V_l @ V_C ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: $real] :
      ( $greater @ V_m_dot_0 @ 4.0 ) ),
    answer_to(p2_question,[])).

