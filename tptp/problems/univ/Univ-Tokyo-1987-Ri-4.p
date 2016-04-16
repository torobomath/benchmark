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

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  123 (  14 equality;  23 variable)
%            Maximal formula depth :   26 (  14 average)
%            Number of connectives :   91 (   0   ~;   0   |;   6   &;  85   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   1   :;   0   =)
%            Number of variables   :   24 (   8 sgn;   0   !;   7   ?;  17   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    4 func;    5 numbers)

include('axioms.ax').

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_P: '3d.Point',V_z: $real,V_A: '3d.Point'] :
        ( ( V_P
          = ( '3d.point/3' @ 0.0 @ 'y/0' @ V_z ) )
        & ( V_z
          = ( $sum @ 1.0 @ ( $uminus @ ( '^/2' @ 'y/0' @ 2.0 ) ) ) )
        & ( V_A
          = ( '3d.point/3' @ 1.0 @ 0.0 @ 1.0 ) )
        & ( V_V
          = ( '3d.volume-of/1'
            @ ( '3d.shape-enclosed-by/1'
              @ ( 'cons/2' @ '3d.Shape' @ ( '3d.solid-of-revolution/2' @ ( '3d.seg/2' @ V_P @ V_A ) @ '3d.x-axis/0' )
                @ ( 'cons/2' @ '3d.Shape'
                  @ ( '3d.set-of-cfun/1'
                    @ ^ [V_x_dot_0: $real,V_y_dot_1: $real,V_z_dot_1: $real] : ( V_x_dot_0 = 0.0 ) )
                  @ ( 'cons/2' @ '3d.Shape'
                    @ ( '3d.set-of-cfun/1'
                      @ ^ [V_x: $real,V_y_dot_0: $real,V_z_dot_0: $real] : ( V_x = 1.0 ) )
                    @ ( 'nil/0' @ '3d.Shape' ) ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_Vmin: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_V: $real] :
            ? [V_P: '3d.Point',V_y: $real,V_z: $real,V_A: '3d.Point'] :
              ( ( V_P
                = ( '3d.point/3' @ 0.0 @ V_y @ V_z ) )
              & ( V_z
                = ( $sum @ 1.0 @ ( $uminus @ ( '^/2' @ V_y @ 2.0 ) ) ) )
              & ( V_A
                = ( '3d.point/3' @ 1.0 @ 0.0 @ 1.0 ) )
              & ( V_V
                = ( '3d.volume-of/1'
                  @ ( '3d.shape-enclosed-by/1'
                    @ ( 'cons/2' @ '3d.Shape' @ ( '3d.solid-of-revolution/2' @ ( '3d.seg/2' @ V_P @ V_A ) @ '3d.x-axis/0' )
                      @ ( 'cons/2' @ '3d.Shape'
                        @ ( '3d.set-of-cfun/1'
                          @ ^ [V_x_dot_0: $real,V_y_dot_1: $real,V_z_dot_1: $real] : ( V_x_dot_0 = 0.0 ) )
                        @ ( 'cons/2' @ '3d.Shape'
                          @ ( '3d.set-of-cfun/1'
                            @ ^ [V_x: $real,V_y_dot_0: $real,V_z_dot_0: $real] : ( V_x = 1.0 ) )
                          @ ( 'nil/0' @ '3d.Shape' ) ) ) ) ) ) ) ) )
        @ V_Vmin ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $quotient @ ( $product @ 'Pi/0' @ ( $sum @ ( '^/2' @ 'y/0' @ 4.0 ) @ ( $sum @ ( $uminus @ ( $product @ 2.0 @ ( '^/2' @ 'y/0' @ 2.0 ) ) ) @ 3.0 ) ) ) @ 3.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_min: $real] :
      ( V_V_min
      = ( $quotient @ ( $product @ 2.0 @ 'Pi/0' ) @ 3.0 ) ) ),
    answer_to(p2_question,[])).

