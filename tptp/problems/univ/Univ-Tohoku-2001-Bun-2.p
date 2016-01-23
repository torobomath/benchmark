%% DOMAIN:    Quadratic Functions
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2001, Humanities Course, Problem 2
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% Find the range of the real number $p$ such that the parabola
%% $y =(x - p)^2 - 2$ intersects with the triangle with the vertices at
%% the points $(0, 0)$, $(1, 2)$, and $(0, 2)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   43 (   2 equality;  12 variable)
%            Maximal formula depth :   16 (  12 average)
%            Number of connectives :   37 (   0   ~;   1   |;   5   &;  31   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   3   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_p: 'R'] :
      ? [V_C: '2d.Shape',V_T: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '-/2' @ ( '^/2' @ ( '-/2' @ V_x @ V_p ) @ 2 ) @ 2 ) ) ) )
        & ( V_T
          = ( '2d.triangle/3' @ ( '2d.point/2' @ 0 @ 0 ) @ ( '2d.point/2' @ 1 @ 2 ) @ ( '2d.point/2' @ 0 @ 2 ) ) )
        & ? [V_Q: '2d.Point'] :
            ( ( '2d.on/2' @ V_Q @ V_C )
            & ( '2d.on/2' @ V_Q @ V_T ) ) ) )).

thf(p_answer,answer,(
    ^ [V_p_dot_0: 'R'] :
      ( ( ( '<=/2' @ -2 @ V_p_dot_0 )
        & ( '<=/2' @ V_p_dot_0 @ -1 ) )
      | ( ( '<=/2' @ ( 'sqrt/1' @ 2 ) @ V_p_dot_0 )
        & ( '<=/2' @ V_p_dot_0 @ 3 ) ) ) ),
    answer_to(p_question,[])).
