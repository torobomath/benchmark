%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2007, Science Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-02
%%
%% <PROBLEM-TEXT>
%% Let $f(x)= x^3 - x$, and let $t$ be a real number. On the $xy$ plane,
%% let $C_1$ be the curve $y = f(x)$, and let $C_2$ be the curve
%% $y = f(2 t - x)$ which is symmetric to $C_1$ about the straight line
%% $x=t$.
%%
%% (1) When $C_1$ intersects with $C_2$ at three points, find the range
%% of the possible value of $t$.
%%
%% (2) When $t$ moves in the range found in (1), find the maximum value
%% of the area $S$ of the region enclosed by $C_1$ and $C_2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  127 (  15 equality;  57 variable)
%            Maximal formula depth :   30 (  16 average)
%            Number of connectives :  100 (   6   ~;   0   |;  19   &;  75   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   23 (   0 sgn;   0   !;  14   ?;   9   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_t: 'R'] :
      ? [V_f: 'R' > 'R',V_C1: '2d.Shape',V_C2: '2d.Shape',V_p: '2d.Point',V_q: '2d.Point',V_r: '2d.Point'] :
        ( ( V_f
          = ( ^ [V_x_dot_0: 'R'] :
                ( '-/2' @ ( '^/2' @ V_x_dot_0 @ 3 ) @ V_x_dot_0 ) ) )
        & ( V_C1
          = ( '2d.graph-of/1' @ ( 'fun/1' @ V_f ) ) )
        & ( V_C2
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( 'LamApp/2' @ V_f @ ( '-/2' @ ( '*/2' @ 2 @ V_t ) @ V_x ) ) ) ) )
        & ( V_p != V_q )
        & ( V_q != V_r )
        & ( V_r != V_p )
        & ( '2d.on/2' @ V_p @ ( '2d.intersection/2' @ V_C1 @ V_C2 ) )
        & ( '2d.on/2' @ V_q @ ( '2d.intersection/2' @ V_C1 @ V_C2 ) )
        & ( '2d.on/2' @ V_r @ ( '2d.intersection/2' @ V_C1 @ V_C2 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S_max: 'R'] :
      ? [V_S_set: 'SetOf' @ 'R'] :
        ( ( 'maximum/2' @ V_S_set @ V_S_max )
        & ( V_S_set
          = ( 'set-by-def/1'
            @ ^ [V_S: 'R'] :
              ? [V_f: 'R' > 'R',V_C1: '2d.Shape',V_C2: '2d.Shape',V_p: '2d.Point',V_q: '2d.Point',V_r: '2d.Point',V_t: 'R'] :
                ( ( V_f
                  = ( ^ [V_x_dot_0: 'R'] :
                        ( '-/2' @ ( '^/2' @ V_x_dot_0 @ 3 ) @ V_x_dot_0 ) ) )
                & ( V_C1
                  = ( '2d.graph-of/1' @ ( 'fun/1' @ V_f ) ) )
                & ( V_C2
                  = ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: 'R'] :
                          ( 'LamApp/2' @ V_f @ ( '-/2' @ ( '*/2' @ 2 @ V_t ) @ V_x ) ) ) ) )
                & ( V_p != V_q )
                & ( V_q != V_r )
                & ( V_r != V_p )
                & ( '2d.on/2' @ V_p @ ( '2d.intersection/2' @ V_C1 @ V_C2 ) )
                & ( '2d.on/2' @ V_q @ ( '2d.intersection/2' @ V_C1 @ V_C2 ) )
                & ( '2d.on/2' @ V_r @ ( '2d.intersection/2' @ V_C1 @ V_C2 ) )
                & ( V_S
                  = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C1 @ ( 'cons/2' @ V_C2 @ 'nil/0' ) ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_t_dot_0: 'R'] :
      ( ( '</2' @ ( '//2' @ ( '-/1' @ 1 ) @ ( 'sqrt/1' @ 3 ) ) @ V_t_dot_0 )
      & ( '</2' @ V_t_dot_0 @ ( '//2' @ 1 @ ( 'sqrt/1' @ 3 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_max_dot_0: 'R'] : ( V_S_max_dot_0 = 1 ) ),
    answer_to(p2_question,[])).
