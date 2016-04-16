%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2001, Humanities Course, Problem 2
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2013-12-19
%%
%% <PROBLEM-TEXT>
%% The $2$ points $A$ and $B$ start from the origin at the time of $0$
%% and move on the $xy$ plane. The coordinates of the point $A$ at the
%% time of $t$ are given as $(t^2, 0)$. The point $B$ first moves on the
%% $y$ axis in the $y$ increasing direction at the constant speed of
%% $1$, but after reaching the point $C(0, 3)$, moves on the straight
%% line passing through that point and parallel to the $x$ axis in the
%% $x$ increasing direction at the constant speed of $1$. When $t>0$,
%% let $S(t)$ be the area of the triangle $ABC$.
%%
%% (1) Draw a rough graph of the function $S(t)$( $t>0$).
%%
%% (2) When $u$ is a positive real number, let $M(u)$ be the maximum
%% value of $S(t)$ in the range of $0<t\le u$. Draw a rough graph of the
%% function $M(u)$( $u>0$).
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  201 (  10 equality;  39 variable)
%            Maximal formula depth :   24 (  18 average)
%            Number of connectives :  177 (   0   ~;   3   |;  12   &; 162   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :   12 (   4 sgn;   0   !;   1   ?;  11   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_x: '2d.Shape'] :
        ( V_x
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
              ( ( ( '2d.y-coord/1' @ V_p )
                = ( '2d.area-of/1'
                  @ ( '2d.triangle/3' @ ( '2d.point/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) @ 0.0 )
                    @ ( '2d.point/2'
                      @ ( 'if/3' @ $real
                        @ ^ [V___dot_0: 'Unit'] :
                            ( $less @ ( '2d.x-coord/1' @ V_p ) @ 3.0 )
                        @ 0.0
                        @ ( $difference @ ( '2d.x-coord/1' @ V_p ) @ 3.0 ) )
                      @ ( 'if/3' @ $real
                        @ ^ [V__: 'Unit'] :
                            ( $less @ ( '2d.x-coord/1' @ V_p ) @ 3.0 )
                        @ ( '2d.x-coord/1' @ V_p )
                        @ 3.0 ) )
                    @ ( '2d.point/2' @ 0.0 @ 3.0 ) ) ) )
              & ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_p ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_x: '2d.Shape'] :
        ( V_x
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
              ( ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_p ) )
              & ( ( '2d.y-coord/1' @ V_p )
                = ( 'max-of/1'
                  @ ^ [V_y: $real] :
                    ? [V_t: $real] :
                      ( ( V_y
                        = ( '2d.area-of/1'
                          @ ( '2d.triangle/3' @ ( '2d.point/2' @ ( '^/2' @ V_t @ 2.0 ) @ 0.0 )
                            @ ( '2d.point/2'
                              @ ( 'if/3' @ $real
                                @ ^ [V___dot_0: 'Unit'] :
                                    ( $less @ V_t @ 3.0 )
                                @ 0.0
                                @ ( $difference @ V_t @ 3.0 ) )
                              @ ( 'if/3' @ $real
                                @ ^ [V__: 'Unit'] :
                                    ( $less @ V_t @ 3.0 )
                                @ V_t
                                @ 3.0 ) )
                            @ ( '2d.point/2' @ 0.0 @ 3.0 ) ) ) )
                      & ( $less @ 0.0 @ V_t )
                      & ( $lesseq @ V_t @ ( '2d.x-coord/1' @ V_p ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.shape-of-cpfun/1'
    @ ^ [V_p_dot_0: '2d.Point'] :
        ( ( ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
          & ( $lesseq @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 3.0 )
          & ( ( '2d.y-coord/1' @ V_p_dot_0 )
            = ( $difference @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) ) @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 3.0 ) ) ) ) )
        | ( ( $lesseq @ 3.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
          & ( ( '2d.y-coord/1' @ V_p_dot_0 )
            = ( $difference @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( $quotient @ 9.0 @ 2.0 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.shape-of-cpfun/1'
    @ ^ [V_p_dot_0: '2d.Point'] :
        ( ( ( $less @ 0.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
          & ( $lesseq @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 )
          & ( ( '2d.y-coord/1' @ V_p_dot_0 )
            = ( $difference @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) ) @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 3.0 ) ) ) ) )
        | ( ( $lesseq @ 2.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
          & ( $lesseq @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ ( $quotient @ 13.0 @ 3.0 ) )
          & ( ( '2d.y-coord/1' @ V_p_dot_0 )
            = 2.0 ) )
        | ( ( $lesseq @ ( $quotient @ 13.0 @ 3.0 ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
          & ( ( '2d.y-coord/1' @ V_p_dot_0 )
            = ( $difference @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( $quotient @ 9.0 @ 2.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

