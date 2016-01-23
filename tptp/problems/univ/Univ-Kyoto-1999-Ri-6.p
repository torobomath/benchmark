%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 1999, Science Course, Problem 6
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-14
%%
%% <PROBLEM-TEXT>
%% Assume that $x$ and $y$ are given as follows using $t$ as a
%% parameter.
%% $x=\frac{3 t-t^2}{t+1}$ $y=\frac{3 t^2-t^3}{t+1}$ When the parameter
%% $t$ moves in the range $0\le t\le 3$, find the ranges in which $x$
%% and $y$ move, respectively. Find the area of the intersection of the
%% figure formed by $(x, y)$ and the region $y\ge x$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  150 (   8 equality;  38 variable)
%            Maximal formula depth :   24 (  12 average)
%            Number of connectives :  128 (   0   ~;   0   |;  11   &; 117   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   15 (   0 sgn;   0   !;   5   ?;  10   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_x_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_t: 'R',V_y: 'R'] :
        ( ( V_x
          = ( '//2' @ ( '+/2' @ ( '*/2' @ 3 @ V_t ) @ ( '-/1' @ ( '^/2' @ V_t @ 2 ) ) ) @ ( '+/2' @ V_t @ 1 ) ) )
        & ( V_y
          = ( '//2' @ ( '+/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_t @ 2 ) ) @ ( '-/1' @ ( '^/2' @ V_t @ 3 ) ) ) @ ( '+/2' @ V_t @ 1 ) ) )
        & ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 3 ) ) )).

thf(p1_y_qustion,question,
    ( 'Find/1'
    @ ^ [V_y: 'R'] :
      ? [V_t: 'R',V_x: 'R'] :
        ( ( V_x
          = ( '//2' @ ( '+/2' @ ( '*/2' @ 3 @ V_t ) @ ( '-/1' @ ( '^/2' @ V_t @ 2 ) ) ) @ ( '+/2' @ V_t @ 1 ) ) )
        & ( V_y
          = ( '//2' @ ( '+/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_t @ 2 ) ) @ ( '-/1' @ ( '^/2' @ V_t @ 3 ) ) ) @ ( '+/2' @ V_t @ 1 ) ) )
        & ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 3 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
        ( V_S
        = ( '2d.area-of/1'
          @ ( '2d.intersection/2'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2'
                @ ( '2d.set-of-cfun/1'
                  @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                    ? [V_t: 'R'] :
                      ( ( V_x_dot_0
                        = ( '//2' @ ( '+/2' @ ( '*/2' @ 3 @ V_t ) @ ( '-/1' @ ( '^/2' @ V_t @ 2 ) ) ) @ ( '+/2' @ V_t @ 1 ) ) )
                      & ( V_y_dot_0
                        = ( '//2' @ ( '+/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_t @ 2 ) ) @ ( '-/1' @ ( '^/2' @ V_t @ 3 ) ) ) @ ( '+/2' @ V_t @ 1 ) ) )
                      & ( '<=/2' @ 0 @ V_t )
                      & ( '<=/2' @ V_t @ 3 ) ) )
                @ 'nil/0' ) )
            @ ( '2d.set-of-cfun/1'
              @ ^ [V_x: 'R',V_y: 'R'] :
                  ( '>=/2' @ V_y @ V_x ) ) ) ) ) )).

thf(p1_x_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '<=/2' @ 0 @ V_x_dot_0 )
      & ( '<=/2' @ V_x_dot_0 @ 1 ) ) ),
    answer_to(p1_x_question,[])).

thf(p1_y_answer,answer,(
    ^ [V_y_dot_0: 'R'] :
      ( ( '<=/2' @ 0 @ V_y_dot_0 )
      & ( '<=/2' @ V_y_dot_0 @ ( '-/2' @ ( '*/2' @ 6 @ ( 'sqrt/1' @ 3 ) ) @ 9 ) ) ) ),
    answer_to(p1_y_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '-/2' @ ( '//2' @ 43 @ 3 ) @ ( '*/2' @ 20 @ ( 'ln/1' @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).
