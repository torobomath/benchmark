%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2009, Science Course, Problem 4
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-30
%%
%% <PROBLEM-TEXT>
%% Let $0 < a < 1$ and $0 < {\theta} < {\pi}$. Assume that the points
%% $O(0, 0)$, $A(a, 0)$, $P(\cos {\theta}, \sin {\theta})$, and
%% $Q(x, y)$ satisfy the condition $OQ = AQ = PQ$. Answer the following
%% questions:
%%
%% (1) Represent the coordinates of the point $Q$ using $a$ and
%% ${\theta}$.
%%
%% (2) Fix $a$. When ${\theta}$ moves in the range
%% $0 < {\theta} < {\pi}$, find the minimum value of $y$.
%% </PROBLEM-TEXT>
%#250

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  351 (  34 equality; 128 variable)
%            Maximal formula depth :   30 (  19 average)
%            Number of connectives :  275 (   0   ~;   0   |;  61   &; 214   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :   49 (   1 sgn;   0   !;  20   ?;   9   ^)
%                                         (  29   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_rcf_qustion,question,
    ( 'Find/1'
    @ ^ [V_Q: '2d.Point'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_P: '2d.Point'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ V_a @ 1 )
        & ( '</2' @ 0 @ V_s )
        & ( '</2' @ V_s @ 1 )
        & ( '</2' @ ( '-/1' @ 1 ) @ V_c )
        & ( '</2' @ V_c @ 1 )
        & ( V_O
          = ( '2d.point/2' @ 0 @ 0 ) )
        & ( V_A
          = ( '2d.point/2' @ V_a @ 0 ) )
        & ( V_P
          = ( '2d.point/2' @ V_c @ V_s ) )
        & ( ( '2d.distance/2' @ V_O @ V_Q )
          = ( '2d.distance/2' @ V_A @ V_Q ) )
        & ( ( '2d.distance/2' @ V_A @ V_Q )
          = ( '2d.distance/2' @ V_P @ V_Q ) )
        & ( 1
          = ( '+/2' @ ( '^/2' @ V_s @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) ) ) )).

thf(p1_1_rcf_qustion,question,
    ( 'Find/1'
    @ ^ [V_Qx: 'R'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_Qy: 'R'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ V_a @ 1 )
        & ( '</2' @ 0 @ V_s )
        & ( '</2' @ ( '-/1' @ 1 ) @ V_c )
        & ( '</2' @ V_c @ 1 )
        & ( V_O
          = ( '2d.point/2' @ 0 @ 0 ) )
        & ( V_A
          = ( '2d.point/2' @ V_a @ 0 ) )
        & ( V_P
          = ( '2d.point/2' @ V_c @ V_s ) )
        & ( V_Q
          = ( '2d.point/2' @ V_Qx @ V_Qy ) )
        & ( ( '2d.distance/2' @ V_O @ V_Q )
          = ( '2d.distance/2' @ V_A @ V_Q ) )
        & ( ( '2d.distance/2' @ V_A @ V_Q )
          = ( '2d.distance/2' @ V_P @ V_Q ) )
        & ( 1
          = ( '+/2' @ ( '^/2' @ V_s @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) ) ) )).

thf(p1_2_rcf_qustion,question,
    ( 'Find/1'
    @ ^ [V_Qy: 'R'] :
      ? [V_O: '2d.Point',V_A: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_Qx: 'R'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ V_a @ 1 )
        & ( '</2' @ 0 @ V_s )
        & ( '</2' @ ( '-/1' @ 1 ) @ V_c )
        & ( '</2' @ V_c @ 1 )
        & ( V_O
          = ( '2d.point/2' @ 0 @ 0 ) )
        & ( V_A
          = ( '2d.point/2' @ V_a @ 0 ) )
        & ( V_P
          = ( '2d.point/2' @ V_c @ V_s ) )
        & ( V_Q
          = ( '2d.point/2' @ V_Qx @ V_Qy ) )
        & ( ( '2d.distance/2' @ V_O @ V_Q )
          = ( '2d.distance/2' @ V_A @ V_Q ) )
        & ( ( '2d.distance/2' @ V_A @ V_Q )
          = ( '2d.distance/2' @ V_P @ V_Q ) )
        & ( 1
          = ( '+/2' @ ( '^/2' @ V_s @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) ) ) )).

thf(p2_rcf_qustion,question,
    ( 'Find/1'
    @ ^ [V_ymin: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_y: 'R'] :
            ? [V_O: '2d.Point',V_A: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_x: 'R',V_c: 'R',V_s: 'R'] :
              ( ( '</2' @ 0 @ V_a )
              & ( '</2' @ V_a @ 1 )
              & ( '</2' @ 0 @ V_s )
              & ( '</2' @ ( '-/1' @ 1 ) @ V_c )
              & ( '</2' @ V_c @ 1 )
              & ( V_O
                = ( '2d.point/2' @ 0 @ 0 ) )
              & ( V_A
                = ( '2d.point/2' @ V_a @ 0 ) )
              & ( V_P
                = ( '2d.point/2' @ V_c @ V_s ) )
              & ( V_Q
                = ( '2d.point/2' @ V_x @ V_y ) )
              & ( ( '2d.distance/2' @ V_O @ V_Q )
                = ( '2d.distance/2' @ V_A @ V_Q ) )
              & ( ( '2d.distance/2' @ V_O @ V_Q )
                = ( '2d.distance/2' @ V_P @ V_Q ) )
              & ( 1
                = ( '+/2' @ ( '^/2' @ V_s @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) ) ) )
        @ V_ymin ) )).

thf(p1_rcf_answer,answer,(
    ^ [V_Q_dot_0: '2d.Point'] :
      ( ( 1
        = ( '+/2' @ ( '^/2' @ V_s @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) )
      & ( '</2' @ 0 @ V_a )
      & ( '</2' @ V_a @ 1 )
      & ( '</2' @ 0 @ V_s )
      & ( '</2' @ V_s @ 1 )
      & ( V_Q_dot_0
        = ( '2d.point/2' @ ( '//2' @ V_a @ 2 ) @ ( '//2' @ ( '-/2' @ 1 @ ( '*/2' @ V_a @ V_c ) ) @ ( '*/2' @ 2 @ V_s ) ) ) ) ) ),
    answer_to(p1_rcf_question,[])).

thf(p1_1_rcf_answer,answer,(
    ^ [V_Qx_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( '</2' @ V_a @ 1 )
      & ( '</2' @ ( '-/1' @ 1 ) @ V_c )
      & ( '</2' @ V_c @ 1 )
      & ( V_s
        = ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_c @ 2 ) ) ) )
      & ( V_Qx_dot_0
        = ( '//2' @ V_a @ 2 ) ) ) ),
    answer_to(p1_1_rcf_question,[])).

thf(p1_2_rcf_answer,answer,(
    ^ [V_Qy_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( '</2' @ V_a @ 1 )
      & ( '</2' @ ( '-/1' @ 1 ) @ V_c )
      & ( '</2' @ V_c @ 1 )
      & ( V_s
        = ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_c @ 2 ) ) ) )
      & ( V_Qy_dot_0
        = ( '//2' @ ( '-/2' @ 1 @ ( '*/2' @ V_a @ V_c ) ) @ ( '*/2' @ 2 @ V_s ) ) ) ) ),
    answer_to(p1_2_rcf_question,[])).

thf(p2_rcf_answer,answer,(
    ^ [V_ymin_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( '</2' @ V_a @ 1 )
      & ( V_ymin_dot_0
        = ( '//2' @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_a @ 2 ) ) ) @ 2 ) ) ) ),
    answer_to(p2_rcf_question,[])).
