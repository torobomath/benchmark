%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2009, Science Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a positive real number, and consider two discs
%% $D_1=\{(x, y, z)| x^2+y^2\le 1, z=a\}$ and
%% $D_2=\{(x, y, z)| x^2+y^2\le 1, z=-a\}$ in a space. Rotate
%% $180^{\circ}$ around the $y$ axis $180^{\circ}$ and superpose it on
%% $D_2$. Here, the rotating direction is such that the positive part of
%% the $z$ axis is inclined in the positive direction of the $x$ axis.
%% Let $E$ be the region through which $D_1$ passes during this
%% rotation. Let $V(a)$ be the volume of $E$, and let $W(a)$ be the
%% volume of the intersection of $E$ and $\{(x, y, z)| x\ge 0\}$.
%%
%% (1) Find the value of $W(a)$.
%%
%% (2) Find the value of $\lim_{a\rightarrow\infty } V(a)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  115 (  13 equality;  34 variable)
%            Maximal formula depth :   23 (  13 average)
%            Number of connectives :   85 (   0   ~;   0   |;  10   &;  74   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :)
%            Number of variables   :   18 (   1 sgn;   1   !;   6   ?;   9   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_W: 'R'] :
      ? [V_D1: '3d.Shape'] :
        ( ( V_D1
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '3d.Point'] :
                ( ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '3d.x-coord/1' @ V_p_dot_0 ) @ 2 ) @ ( '^/2' @ ( '3d.y-coord/1' @ V_p_dot_0 ) @ 2 ) ) @ 1 )
                & ( V_a
                  = ( '3d.z-coord/1' @ V_p_dot_0 ) ) ) ) )
        & ( V_E
          = ( '3d.solid-of-revolution/2' @ V_D1 @ '3d.y-axis/0' ) )
        & ( V_W
          = ( '3d.volume-of/1'
            @ ( '3d.intersection/2' @ V_E
              @ ( '3d.shape-of-cpfun/1'
                @ ^ [V_p: '3d.Point'] :
                    ( '<=/2' @ 0 @ ( '3d.x-coord/1' @ V_p ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_V_lim: 'R'] :
      ! [V_a: 'R'] :
        ( ( '</2' @ 0 @ V_a )
       => ? [V_D1: '3d.Shape',V_D2: '3d.Shape',V_E: '3d.Shape',V_V: 'R2R',V_W: 'R2R'] :
            ( ( V_D1
              = ( '3d.shape-of-cpfun/1'
                @ ^ [V_p_dot_1: '3d.Point'] :
                    ( ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '3d.x-coord/1' @ V_p_dot_1 ) @ 2 ) @ ( '^/2' @ ( '3d.y-coord/1' @ V_p_dot_1 ) @ 2 ) ) @ 1 )
                    & ( V_a
                      = ( '3d.z-coord/1' @ V_p_dot_1 ) ) ) ) )
            & ( V_D2
              = ( '3d.shape-of-cpfun/1'
                @ ^ [V_p_dot_0: '3d.Point'] :
                    ( ( '<=/2' @ ( '+/2' @ ( '^/2' @ ( '3d.x-coord/1' @ V_p_dot_0 ) @ 2 ) @ ( '^/2' @ ( '3d.y-coord/1' @ V_p_dot_0 ) @ 2 ) ) @ 1 )
                    & ( ( '-/1' @ V_a )
                      = ( '3d.z-coord/1' @ V_p_dot_0 ) ) ) ) )
            & ( V_E
              = ( '3d.solid-of-revolution/2' @ V_D1 @ '3d.y-axis/0' ) )
            & ( ( 'funapp/2' @ V_V @ V_a )
              = ( '3d.volume-of/1' @ V_E ) )
            & ( ( 'funapp/2' @ V_W @ V_a )
              = ( '3d.volume-of/1'
                @ ( '3d.intersection/2' @ V_E
                  @ ( '3d.shape-of-cpfun/1'
                    @ ^ [V_p: '3d.Point'] :
                        ( '<=/2' @ 0 @ ( '3d.x-coord/1' @ V_p ) ) ) ) ) )
            & ( 'converge-plus-inf/2' @ V_V @ V_V_lim ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_W_dot_0: 'R'] :
      ( V_W_dot_0
      = ( '*/2' @ ( '//2' @ 2 @ 3 ) @ 'Pi/0' ) ) ),
    answer_to(p1_1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_lim_dot_0: 'R'] :
      ( V_V_lim_dot_0
      = ( '*/2' @ ( '//2' @ 2 @ 3 ) @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).
