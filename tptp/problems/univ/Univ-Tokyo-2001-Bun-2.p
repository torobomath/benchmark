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
%            Number of atoms       :  199 (  12 equality;  41 variable)
%            Maximal formula depth :   24 (  18 average)
%            Number of connectives :  171 (   0   ~;   3   |;  12   &; 156   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   14 (   4 sgn;   0   !;   1   ?;  13   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: '2d.Shape'] :
        ( V_x
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
              ( ( ( '2d.y-coord/1' @ V_p )
                = ( '2d.area-of/1'
                  @ ( '2d.triangle/3' @ ( '2d.point/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) @ 0 )
                    @ ( '2d.point/2'
                      @ ( 'if/3'
                        @ ^ [V___dot_0: 'Unit'] :
                            ( '</2' @ ( '2d.x-coord/1' @ V_p ) @ 3 )
                        @ 0
                        @ ( '-/2' @ ( '2d.x-coord/1' @ V_p ) @ 3 ) )
                      @ ( 'if/3'
                        @ ^ [V__: 'Unit'] :
                            ( '</2' @ ( '2d.x-coord/1' @ V_p ) @ 3 )
                        @ ( '2d.x-coord/1' @ V_p )
                        @ 3 ) )
                    @ ( '2d.point/2' @ 0 @ 3 ) ) ) )
              & ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_p ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: '2d.Shape'] :
        ( V_x
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
              ( ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_p ) )
              & ( ( '2d.y-coord/1' @ V_p )
                = ( 'max-of/1'
                  @ ^ [V_y: 'R'] :
                    ? [V_t: 'R'] :
                      ( ( V_y
                        = ( '2d.area-of/1'
                          @ ( '2d.triangle/3' @ ( '2d.point/2' @ ( '^/2' @ V_t @ 2 ) @ 0 )
                            @ ( '2d.point/2'
                              @ ( 'if/3'
                                @ ^ [V___dot_0: 'Unit'] :
                                    ( '</2' @ V_t @ 3 )
                                @ 0
                                @ ( '-/2' @ V_t @ 3 ) )
                              @ ( 'if/3'
                                @ ^ [V__: 'Unit'] :
                                    ( '</2' @ V_t @ 3 )
                                @ V_t
                                @ 3 ) )
                            @ ( '2d.point/2' @ 0 @ 3 ) ) ) )
                      & ( '</2' @ 0 @ V_t )
                      & ( '<=/2' @ V_t @ ( '2d.x-coord/1' @ V_p ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: '2d.Shape'] :
      ( V_x_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_p_dot_0: '2d.Point'] :
            ( ( ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 3 )
              & ( ( '2d.y-coord/1' @ V_p_dot_0 )
                = ( '-/2' @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) ) @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 3 ) ) ) ) )
            | ( ( '<=/2' @ 3 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( ( '2d.y-coord/1' @ V_p_dot_0 )
                = ( '-/2' @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( '//2' @ 9 @ 2 ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: '2d.Shape'] :
      ( V_x_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_p_dot_0: '2d.Point'] :
            ( ( ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 )
              & ( ( '2d.y-coord/1' @ V_p_dot_0 )
                = ( '-/2' @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2 ) ) @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 3 ) ) ) ) )
            | ( ( '<=/2' @ 2 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ ( '//2' @ 13 @ 3 ) )
              & ( ( '2d.y-coord/1' @ V_p_dot_0 )
                = 2 ) )
            | ( ( '<=/2' @ ( '//2' @ 13 @ 3 ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( ( '2d.y-coord/1' @ V_p_dot_0 )
                = ( '-/2' @ ( '*/2' @ ( '//2' @ 3 @ 2 ) @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( '//2' @ 9 @ 2 ) ) ) ) ) ) ) ),
    answer_to(p2_question,[])).
