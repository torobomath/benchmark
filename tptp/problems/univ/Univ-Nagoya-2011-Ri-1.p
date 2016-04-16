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

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  204 (   8 equality;  42 variable)
%            Maximal formula depth :   25 (  13 average)
%            Number of connectives :  182 (   0   ~;   0   |;  20   &; 162   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   1   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   0   !;   4   ?;  16   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   2 pred;    5 func;    6 numbers)

include('axioms.ax').

thf('s/0_type',type,(
    's/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_ms: $real] :
      ? [V_m: $real] :
        ( 'func-max/4'
        @ ( 'fun/1'
          @ ^ [V_s_dot_0: $real] :
              ( '3d.volume-of/1'
              @ ( '3d.solid-of-revolution/2'
                @ ( '3d.shape-of-cpfun/1'
                  @ ^ [V_p: '3d.Point'] :
                      ( ( $lesseq @ 1.0 @ ( '3d.x-coord/1' @ V_p ) )
                      & ( $lesseq @ ( '3d.x-coord/1' @ V_p ) @ ( $sum @ 2.0 @ ( $product @ 4.0 @ V_s_dot_0 ) ) )
                      & ( $lesseq @ 1.0 @ ( '3d.y-coord/1' @ V_p ) )
                      & ( $lesseq @ ( '3d.y-coord/1' @ V_p ) @ ( $difference @ 2.0 @ ( $product @ 3.0 @ V_s_dot_0 ) ) )
                      & ( ( '3d.z-coord/1' @ V_p )
                        = 0.0 ) ) )
                @ '3d.x-axis/0' ) ) )
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_s: $real] :
              ( ( $less @ ( $uminus @ ( $quotient @ 1.0 @ 4.0 ) ) @ V_s )
              & ( $less @ V_s @ ( $quotient @ 1.0 @ 3.0 ) ) ) )
        @ V_ms
        @ V_m ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
      ? [V_ms: $real] :
        ( 'func-max/4'
        @ ( 'fun/1'
          @ ^ [V_s_dot_0: $real] :
              ( '3d.volume-of/1'
              @ ( '3d.solid-of-revolution/2'
                @ ( '3d.shape-of-cpfun/1'
                  @ ^ [V_p: '3d.Point'] :
                      ( ( $lesseq @ 1.0 @ ( '3d.x-coord/1' @ V_p ) )
                      & ( $lesseq @ ( '3d.x-coord/1' @ V_p ) @ ( $sum @ 2.0 @ ( $product @ 4.0 @ V_s_dot_0 ) ) )
                      & ( $lesseq @ 1.0 @ ( '3d.y-coord/1' @ V_p ) )
                      & ( $lesseq @ ( '3d.y-coord/1' @ V_p ) @ ( $difference @ 2.0 @ ( $product @ 3.0 @ V_s_dot_0 ) ) )
                      & ( ( '3d.z-coord/1' @ V_p )
                        = 0.0 ) ) )
                @ '3d.x-axis/0' ) ) )
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_s: $real] :
              ( ( $less @ ( $uminus @ ( $quotient @ 1.0 @ 4.0 ) ) @ V_s )
              & ( $less @ V_s @ ( $quotient @ 1.0 @ 3.0 ) ) ) )
        @ V_ms
        @ V_m ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_vl: $real] :
      ? [V_ms: $real,V_m: $real] :
        ( ( 'func-max/4'
          @ ( 'fun/1'
            @ ^ [V_s_dot_1: $real] :
                ( '3d.volume-of/1'
                @ ( '3d.solid-of-revolution/2'
                  @ ( '3d.shape-of-cpfun/1'
                    @ ^ [V_p_dot_0: '3d.Point'] :
                        ( ( $lesseq @ 1.0 @ ( '3d.x-coord/1' @ V_p_dot_0 ) )
                        & ( $lesseq @ ( '3d.x-coord/1' @ V_p_dot_0 ) @ ( $sum @ 2.0 @ ( $product @ 4.0 @ V_s_dot_1 ) ) )
                        & ( $lesseq @ 1.0 @ ( '3d.y-coord/1' @ V_p_dot_0 ) )
                        & ( $lesseq @ ( '3d.y-coord/1' @ V_p_dot_0 ) @ ( $difference @ 2.0 @ ( $product @ 3.0 @ V_s_dot_1 ) ) )
                        & ( ( '3d.z-coord/1' @ V_p_dot_0 )
                          = 0.0 ) ) )
                  @ '3d.x-axis/0' ) ) )
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_s_dot_0: $real] :
                ( ( $less @ ( $uminus @ ( $quotient @ 1.0 @ 4.0 ) ) @ V_s_dot_0 )
                & ( $less @ V_s_dot_0 @ ( $quotient @ 1.0 @ 3.0 ) ) ) )
          @ V_ms
          @ V_m )
        & ( V_vl
          = ( '3d.volume-of/1'
            @ ( '3d.solid-of-revolution/2'
              @ ( '3d.solid-of-revolution/2'
                @ ( '3d.shape-of-cpfun/1'
                  @ ^ [V_p: '3d.Point'] :
                      ( ( $lesseq @ 1.0 @ ( '3d.x-coord/1' @ V_p ) )
                      & ( $lesseq @ ( '3d.x-coord/1' @ V_p ) @ ( $sum @ 2.0 @ ( $product @ 4.0 @ 's/0' ) ) )
                      & ( $lesseq @ 1.0 @ ( '3d.y-coord/1' @ V_p ) )
                      & ( $lesseq @ ( '3d.y-coord/1' @ V_p ) @ ( $difference @ 2.0 @ ( $product @ 3.0 @ 's/0' ) ) )
                      & ( ( '3d.z-coord/1' @ V_p )
                        = 0.0 ) ) )
                @ '3d.x-axis/0' )
              @ '3d.y-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_ms_dot_0: $real] : ( V_ms_dot_0 = 0.0 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: $real] :
      ( V_m_dot_0
      = ( $product @ 3.0 @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_vl_dot_0: $real] :
      ( V_vl_dot_0
      = ( $product @ ( $quotient @ 64.0 @ 3.0 ) @ 'Pi/0' ) ) ),
    answer_to(p3_question,[])).

