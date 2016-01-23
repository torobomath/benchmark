%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1987, Science Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-17
%%
%% <PROBLEM-TEXT>
%% In the $x y z$space, assume that the point $P$ is on the parabola
%% $z = 1 - y^2$ on the $y z$ plane. Let $V$ be the volume of the region
%% enclosed by the planes $x=0$ and $x=1$, and the curved surface
%% obtained by rotating the straight line connecting the points
%% $A(1, 0, 1)$ and $P$ around the $x$ axis. Represent $V$ using the $y$
%% coordinate of $P$. Find the minimum value of $V$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  112 (  14 equality;  27 variable)
%            Maximal formula depth :   26 (  17 average)
%            Number of connectives :   80 (   0   ~;   0   |;   6   &;  74   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   26 (   8 sgn;   0   !;   7   ?;  17   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_P: '3d.Point',V_z: 'R',V_A: '3d.Point'] :
        ( ( V_P
          = ( '3d.point/3' @ 0 @ V_y @ V_z ) )
        & ( V_z
          = ( '+/2' @ 1 @ ( '-/1' @ ( '^/2' @ V_y @ 2 ) ) ) )
        & ( V_A
          = ( '3d.point/3' @ 1 @ 0 @ 1 ) )
        & ( V_V
          = ( '3d.volume-of/1'
            @ ( '3d.shape-enclosed-by/1'
              @ ( 'cons/2' @ ( '3d.solid-of-revolution/2' @ ( '3d.seg/2' @ V_P @ V_A ) @ '3d.x-axis/0' )
                @ ( 'cons/2'
                  @ ( '3d.set-of-cfun/1'
                    @ ^ [V_x_dot_0: 'R',V_y_dot_1: 'R',V_z_dot_1: 'R'] : ( V_x_dot_0 = 0 ) )
                  @ ( 'cons/2'
                    @ ( '3d.set-of-cfun/1'
                      @ ^ [V_x: 'R',V_y_dot_0: 'R',V_z_dot_0: 'R'] : ( V_x = 1 ) )
                    @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_Vmin: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_V: 'R'] :
            ? [V_P: '3d.Point',V_y: 'R',V_z: 'R',V_A: '3d.Point'] :
              ( ( V_P
                = ( '3d.point/3' @ 0 @ V_y @ V_z ) )
              & ( V_z
                = ( '+/2' @ 1 @ ( '-/1' @ ( '^/2' @ V_y @ 2 ) ) ) )
              & ( V_A
                = ( '3d.point/3' @ 1 @ 0 @ 1 ) )
              & ( V_V
                = ( '3d.volume-of/1'
                  @ ( '3d.shape-enclosed-by/1'
                    @ ( 'cons/2' @ ( '3d.solid-of-revolution/2' @ ( '3d.seg/2' @ V_P @ V_A ) @ '3d.x-axis/0' )
                      @ ( 'cons/2'
                        @ ( '3d.set-of-cfun/1'
                          @ ^ [V_x_dot_0: 'R',V_y_dot_1: 'R',V_z_dot_1: 'R'] : ( V_x_dot_0 = 0 ) )
                        @ ( 'cons/2'
                          @ ( '3d.set-of-cfun/1'
                            @ ^ [V_x: 'R',V_y_dot_0: 'R',V_z_dot_0: 'R'] : ( V_x = 1 ) )
                          @ 'nil/0' ) ) ) ) ) ) ) )
        @ V_Vmin ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '//2' @ ( '*/2' @ 'Pi/0' @ ( '+/2' @ ( '^/2' @ V_y @ 4 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 2 @ ( '^/2' @ V_y @ 2 ) ) ) @ 3 ) ) ) @ 3 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_min: 'R'] :
      ( V_V_min
      = ( '//2' @ ( '*/2' @ 2 @ 'Pi/0' ) @ 3 ) ) ),
    answer_to(p2_question,[])).
