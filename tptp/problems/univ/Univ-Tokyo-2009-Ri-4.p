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

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  117 (  13 equality;  33 variable)
%            Maximal formula depth :   23 (  11 average)
%            Number of connectives :   87 (   0   ~;   0   |;  10   &;  76   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   1   :;   0   =)
%            Number of variables   :   18 (   1 sgn;   1   !;   8   ?;   9   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    4 func;    4 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_W: $real] :
      ? [V_D1: '3d.Shape',V_E: '3d.Shape',V_W_dot_0: $real] :
        ( ( V_D1
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '3d.Point'] :
                ( ( $lesseq @ ( $sum @ ( '^/2' @ ( '3d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) @ ( '^/2' @ ( '3d.y-coord/1' @ V_p_dot_0 ) @ 2.0 ) ) @ 1.0 )
                & ( 'a/0'
                  = ( '3d.z-coord/1' @ V_p_dot_0 ) ) ) ) )
        & ( V_E
          = ( '3d.solid-of-revolution/2' @ V_D1 @ '3d.y-axis/0' ) )
        & ( V_W_dot_0
          = ( '3d.volume-of/1'
            @ ( '3d.intersection/2' @ V_E
              @ ( '3d.shape-of-cpfun/1'
                @ ^ [V_p: '3d.Point'] :
                    ( $lesseq @ 0.0 @ ( '3d.x-coord/1' @ V_p ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V_lim: $real] :
      ! [V_a: $real] :
        ( ( $less @ 0.0 @ V_a )
       => ? [V_D1: '3d.Shape',V_D2: '3d.Shape',V_E: '3d.Shape',V_V: 'R2R',V_W: 'R2R'] :
            ( ( V_D1
              = ( '3d.shape-of-cpfun/1'
                @ ^ [V_p_dot_1: '3d.Point'] :
                    ( ( $lesseq @ ( $sum @ ( '^/2' @ ( '3d.x-coord/1' @ V_p_dot_1 ) @ 2.0 ) @ ( '^/2' @ ( '3d.y-coord/1' @ V_p_dot_1 ) @ 2.0 ) ) @ 1.0 )
                    & ( V_a
                      = ( '3d.z-coord/1' @ V_p_dot_1 ) ) ) ) )
            & ( V_D2
              = ( '3d.shape-of-cpfun/1'
                @ ^ [V_p_dot_0: '3d.Point'] :
                    ( ( $lesseq @ ( $sum @ ( '^/2' @ ( '3d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) @ ( '^/2' @ ( '3d.y-coord/1' @ V_p_dot_0 ) @ 2.0 ) ) @ 1.0 )
                    & ( ( $uminus @ V_a )
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
                        ( $lesseq @ 0.0 @ ( '3d.x-coord/1' @ V_p ) ) ) ) ) )
            & ( 'converge-plus-inf/2' @ V_V @ V_V_lim ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_W_dot_1: $real] :
      ( V_W_dot_1
      = ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ 'Pi/0' ) ) ),
    answer_to(p1_1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_lim_dot_0: $real] :
      ( V_V_lim_dot_0
      = ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).

