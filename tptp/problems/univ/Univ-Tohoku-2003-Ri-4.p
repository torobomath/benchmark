%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2003, Science Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-18
%%
%% <PROBLEM-TEXT>
%% Consider the two points $P(u, u, 0)$ and $Q(u, 0, \sqrt{1-u^2})$ in
%% the $x y z$ space. When $u$ moves from $0$ to $1$, let $S$ be the
%% curved surface formed by the line segment $PQ$.
%%
%% (1) Find the distance between the point $(u, 0, 0)$ $(0\le u\le 1)$
%% and the line segment $PQ$.
%%
%% (2) Find the volume of the solid obtained by rotating the curved
%% surface $S$ around the $x$ axis.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  100 (   9 equality;  32 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   78 (   0   ~;   0   |;  11   &;  67   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   13 (   0 sgn;   0   !;   6   ?;   5   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_P: '3d.Point',V_Q: '3d.Point'] :
        ( ( V_P
          = ( '3d.point/3' @ V_u @ V_u @ 0 ) )
        & ( V_Q
          = ( '3d.point/3' @ V_u @ 0 @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_u @ 2 ) ) ) ) )
        & ( '<=/2' @ 0 @ V_u )
        & ( '<=/2' @ V_u @ 1 )
        & ( V_x
          = ( '3d.point-shape-distance/2' @ ( '3d.point/3' @ V_u @ 0 @ 0 ) @ ( '3d.line/2' @ V_P @ V_Q ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_S: '3d.Shape'] :
        ( ( V_S
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p: '3d.Point'] :
              ? [V_u: 'R',V_P: '3d.Point',V_Q: '3d.Point'] :
                ( ( '<=/2' @ 0 @ V_u )
                & ( '<=/2' @ V_u @ 1 )
                & ( V_P
                  = ( '3d.point/3' @ V_u @ V_u @ 0 ) )
                & ( V_Q
                  = ( '3d.point/3' @ V_u @ 0 @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_u @ 2 ) ) ) ) )
                & ( '3d.on/2' @ V_p @ ( '3d.line/2' @ V_P @ V_Q ) ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_S @ '3d.x-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '<=/2' @ 0 @ V_u )
      & ( '<=/2' @ V_u @ 1 )
      & ( V_x_dot_0
        = ( '*/2' @ V_u @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_u @ 2 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '+/2' @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 3 ) @ ( '//2' @ 1 @ 5 ) ) @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).
