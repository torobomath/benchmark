%% DOMAIN:    Matrices
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1987, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-14
%%
%% <PROBLEM-TEXT>
%% When the matrix $X =(\begin{matrix} x & z\\ z & y\end{matrix})$
%% satisfies the condition
%%
%%
%% $X^2 - 4 X +(\begin{matrix} 3 & 0\\ 0 & 3\end{matrix})=(\begin{matrix} 0 & 0\\ 0 & 0\end{matrix})$,
%%
%% draw the range of the point $(x, y)$ whose coordinates are such $x$
%% and $y$, where the components of the matrix are real numbers.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   53 (   6 equality;  17 variable)
%            Maximal formula depth :   16 (  12 average)
%            Number of connectives :   39 (   0   ~;   2   |;   4   &;  33   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_xy: '2d.Point'] :
      ? [V_x: 'R',V_y: 'R',V_z: 'R',V_X: '2d.Matrix'] :
        ( ( V_X
          = ( '2d.matrix/4' @ V_x @ V_z @ V_z @ V_y ) )
        & ( ( '2d.m+/2' @ ( '2d.m-/2' @ ( '2d.m*/2' @ V_X @ V_X ) @ ( '2d.sm*/2' @ 4 @ V_X ) ) @ ( '2d.matrix/4' @ 3 @ 0 @ 0 @ 3 ) )
          = '2d.zero-matrix/0' )
        & ( V_xy
          = ( '2d.point/2' @ V_x @ V_y ) ) ) )).

thf(p_answer,answer,(
    ^ [V_xy_dot_0: '2d.Point'] :
      ( ( V_xy_dot_0
        = ( '2d.point/2' @ 1 @ 1 ) )
      | ( V_xy_dot_0
        = ( '2d.point/2' @ 3 @ 3 ) )
      | ( ( ( '+/2' @ ( '2d.x-coord/1' @ V_xy_dot_0 ) @ ( '2d.y-coord/1' @ V_xy_dot_0 ) )
          = 4 )
        & ( '<=/2' @ 1 @ ( '2d.x-coord/1' @ V_xy_dot_0 ) )
        & ( '<=/2' @ ( '2d.x-coord/1' @ V_xy_dot_0 ) @ 3 ) ) ) ),
    answer_to(p_question,[])).
