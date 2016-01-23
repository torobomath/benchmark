%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2011, Science Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-05-26
%%
%% <PROBLEM-TEXT>
%% Assume that $-\frac{1}{4} < s <\frac{1}{3}$. Assume that there is the
%% rectangle $R_s =\{(x, y, 0)| 1\le x\le 2+4 s, 1\le y\le 2-3 s\}$ on
%% the plane $z = 0$ in the $x y z$ space. Let $K_s$ be the solid
%% obtained by rotating the rectangle $R_s$ around the $x$ axis.
%%
%% (1) Find the maximum value of the volume $V(s)$ of the solid $K_s$
%% and the value of $V(s)$ that gives the maximum value.
%%
%% (2) Let $s$ be the value found in (1). Then, find the volume of the
%% solid $L$ formed by rotating the solid $K_s$ at that time around the
%% $y$ axis.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  198 (   8 equality;  44 variable)
%            Maximal formula depth :   25 (  14 average)
%            Number of connectives :  176 (   0   ~;   0   |;  20   &; 156   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :   21 (   0 sgn;   0   !;   4   ?;  16   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_ms: 'R'] :
      ? [V_m: 'R'] :
        ( 'func-max/4'
        @ ( 'fun/1'
          @ ^ [V_s_dot_0: 'R'] :
              ( '3d.volume-of/1'
              @ ( '3d.solid-of-revolution/2'
                @ ( '3d.shape-of-cpfun/1'
                  @ ^ [V_p: '3d.Point'] :
                      ( ( '<=/2' @ 1 @ ( '3d.x-coord/1' @ V_p ) )
                      & ( '<=/2' @ ( '3d.x-coord/1' @ V_p ) @ ( '+/2' @ 2 @ ( '*/2' @ 4 @ V_s_dot_0 ) ) )
                      & ( '<=/2' @ 1 @ ( '3d.y-coord/1' @ V_p ) )
                      & ( '<=/2' @ ( '3d.y-coord/1' @ V_p ) @ ( '-/2' @ 2 @ ( '*/2' @ 3 @ V_s_dot_0 ) ) )
                      & ( ( '3d.z-coord/1' @ V_p )
                        = 0 ) ) )
                @ '3d.x-axis/0' ) ) )
        @ ( 'set-by-def/1'
          @ ^ [V_s: 'R'] :
              ( ( '</2' @ ( '-/1' @ ( '//2' @ 1 @ 4 ) ) @ V_s )
              & ( '</2' @ V_s @ ( '//2' @ 1 @ 3 ) ) ) )
        @ V_ms
        @ V_m ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_ms: 'R'] :
        ( 'func-max/4'
        @ ( 'fun/1'
          @ ^ [V_s_dot_0: 'R'] :
              ( '3d.volume-of/1'
              @ ( '3d.solid-of-revolution/2'
                @ ( '3d.shape-of-cpfun/1'
                  @ ^ [V_p: '3d.Point'] :
                      ( ( '<=/2' @ 1 @ ( '3d.x-coord/1' @ V_p ) )
                      & ( '<=/2' @ ( '3d.x-coord/1' @ V_p ) @ ( '+/2' @ 2 @ ( '*/2' @ 4 @ V_s_dot_0 ) ) )
                      & ( '<=/2' @ 1 @ ( '3d.y-coord/1' @ V_p ) )
                      & ( '<=/2' @ ( '3d.y-coord/1' @ V_p ) @ ( '-/2' @ 2 @ ( '*/2' @ 3 @ V_s_dot_0 ) ) )
                      & ( ( '3d.z-coord/1' @ V_p )
                        = 0 ) ) )
                @ '3d.x-axis/0' ) ) )
        @ ( 'set-by-def/1'
          @ ^ [V_s: 'R'] :
              ( ( '</2' @ ( '-/1' @ ( '//2' @ 1 @ 4 ) ) @ V_s )
              & ( '</2' @ V_s @ ( '//2' @ 1 @ 3 ) ) ) )
        @ V_ms
        @ V_m ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_vl: 'R'] :
      ? [V_ms: 'R',V_m: 'R'] :
        ( ( 'func-max/4'
          @ ( 'fun/1'
            @ ^ [V_s_dot_1: 'R'] :
                ( '3d.volume-of/1'
                @ ( '3d.solid-of-revolution/2'
                  @ ( '3d.shape-of-cpfun/1'
                    @ ^ [V_p_dot_0: '3d.Point'] :
                        ( ( '<=/2' @ 1 @ ( '3d.x-coord/1' @ V_p_dot_0 ) )
                        & ( '<=/2' @ ( '3d.x-coord/1' @ V_p_dot_0 ) @ ( '+/2' @ 2 @ ( '*/2' @ 4 @ V_s_dot_1 ) ) )
                        & ( '<=/2' @ 1 @ ( '3d.y-coord/1' @ V_p_dot_0 ) )
                        & ( '<=/2' @ ( '3d.y-coord/1' @ V_p_dot_0 ) @ ( '-/2' @ 2 @ ( '*/2' @ 3 @ V_s_dot_1 ) ) )
                        & ( ( '3d.z-coord/1' @ V_p_dot_0 )
                          = 0 ) ) )
                  @ '3d.x-axis/0' ) ) )
          @ ( 'set-by-def/1'
            @ ^ [V_s_dot_0: 'R'] :
                ( ( '</2' @ ( '-/1' @ ( '//2' @ 1 @ 4 ) ) @ V_s_dot_0 )
                & ( '</2' @ V_s_dot_0 @ ( '//2' @ 1 @ 3 ) ) ) )
          @ V_ms
          @ V_m )
        & ( V_vl
          = ( '3d.volume-of/1'
            @ ( '3d.solid-of-revolution/2'
              @ ( '3d.solid-of-revolution/2'
                @ ( '3d.shape-of-cpfun/1'
                  @ ^ [V_p: '3d.Point'] :
                      ( ( '<=/2' @ 1 @ ( '3d.x-coord/1' @ V_p ) )
                      & ( '<=/2' @ ( '3d.x-coord/1' @ V_p ) @ ( '+/2' @ 2 @ ( '*/2' @ 4 @ V_s ) ) )
                      & ( '<=/2' @ 1 @ ( '3d.y-coord/1' @ V_p ) )
                      & ( '<=/2' @ ( '3d.y-coord/1' @ V_p ) @ ( '-/2' @ 2 @ ( '*/2' @ 3 @ V_s ) ) )
                      & ( ( '3d.z-coord/1' @ V_p )
                        = 0 ) ) )
                @ '3d.x-axis/0' )
              @ '3d.y-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_ms_dot_0: 'R'] : ( V_ms_dot_0 = 0 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: 'R'] :
      ( V_m_dot_0
      = ( '*/2' @ 3 @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_vl_dot_0: 'R'] :
      ( V_vl_dot_0
      = ( '*/2' @ ( '//2' @ 64 @ 3 ) @ 'Pi/0' ) ) ),
    answer_to(p3_question,[])).
