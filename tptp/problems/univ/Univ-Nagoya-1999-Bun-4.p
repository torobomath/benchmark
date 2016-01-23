%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 1999, Humanities Course, Problem 4
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-12
%%
%% <PROBLEM-TEXT>
%% (b)
%%
%% 1) Draw the range of the point $(a_1, a_2)$ when the vector
%% $\vec{a} =(a_1, a_2)$ satisfies the following condition (*): (*)
%% There exists the vector $\vec{b} =(b_1, b_2)$ such that
%% $(\vec{a}\cdot\vec{p})^2 +(\vec{b}\cdot\vec{p})^2 = |\vec{p}|^2$ is
%% true for an arbitrary vector $\vec{p}$.
%%
%% 2) Find the vector $\vec{b} =(b_1, b_2)$ that satisfies the condition
%% (*) for $\vec{a} =(a_1, a_2)$ found in 1).
%% </PROBLEM-TEXT>
%#250?

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  173 (  22 equality;  66 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :  121 (   0   ~;   3   |;   8   &; 107   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   39 (   8 sgn;   4   !;  14   ?;   9   ^)
%                                         (  27   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Draw/1'
    @ ^ [V_a: '2d.Vector'] :
      ? [V_b: '2d.Vector'] :
      ! [V_p: '2d.Vector'] :
        ( ( '+/2' @ ( '^/2' @ ( '2d.inner-prod/2' @ V_a @ V_p ) @ 2 ) @ ( '^/2' @ ( '2d.inner-prod/2' @ V_b @ V_p ) @ 2 ) )
        = ( '^/2' @ ( '2d.radius/1' @ V_p ) @ 2 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_b: '2d.Point'] :
      ? [V_a: '2d.Vector'] :
        ( ( V_a
          = ( '2d.vec2d/2' @ V_a1 @ V_a2 ) )
        & ! [V_p: '2d.Vector'] :
            ( ? [V_p1: 'R',V_p2: 'R'] :
                ( V_p
                = ( '2d.vec2d/2' @ V_p1 @ V_p2 ) )
           => ( ( '+/2' @ ( '^/2' @ ( '2d.inner-prod/2' @ V_a @ V_p ) @ 2 ) @ ( '^/2' @ ( '2d.inner-prod/2' @ ( '2d.vec/2' @ '2d.origin/0' @ V_b ) @ V_p ) @ 2 ) )
              = ( '^/2' @ ( '2d.radius/1' @ V_p ) @ 2 ) ) ) ) )).

thf(p2_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_b1: 'R'] :
      ? [V_b: '2d.Vector',V_b2: 'R',V_a: '2d.Vector'] :
        ( ( V_b
          = ( '2d.vec2d/2' @ V_b1 @ V_b2 ) )
        & ( V_a
          = ( '2d.vec2d/2' @ V_a1 @ V_a2 ) )
        & ! [V_p: '2d.Vector'] :
            ( ? [V_p1: 'R',V_p2: 'R'] :
                ( V_p
                = ( '2d.vec2d/2' @ V_p1 @ V_p2 ) )
           => ( ( '+/2' @ ( '^/2' @ ( '2d.inner-prod/2' @ V_a @ V_p ) @ 2 ) @ ( '^/2' @ ( '2d.inner-prod/2' @ V_b @ V_p ) @ 2 ) )
              = ( '^/2' @ ( '2d.radius/1' @ V_p ) @ 2 ) ) ) ) )).

thf(p2_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_b2: 'R'] :
      ? [V_b: '2d.Vector',V_b1: 'R',V_a: '2d.Vector'] :
        ( ( V_b
          = ( '2d.vec2d/2' @ V_b1 @ V_b2 ) )
        & ( V_a
          = ( '2d.vec2d/2' @ V_a1 @ V_a2 ) )
        & ! [V_p: '2d.Vector'] :
            ( ? [V_p1: 'R',V_p2: 'R'] :
                ( V_p
                = ( '2d.vec2d/2' @ V_p1 @ V_p2 ) )
           => ( ( '+/2' @ ( '^/2' @ ( '2d.inner-prod/2' @ V_a @ V_p ) @ 2 ) @ ( '^/2' @ ( '2d.inner-prod/2' @ V_b @ V_p ) @ 2 ) )
              = ( '^/2' @ ( '2d.radius/1' @ V_p ) @ 2 ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x: 'R',V_y: 'R'] :
        ( ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '^/2' @ V_y @ 2 ) )
        = 1 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_b_dot_0: '2d.Point'] :
      ( ( ( '+/2' @ ( '^/2' @ V_a1 @ 2 ) @ ( '^/2' @ V_a2 @ 2 ) )
        = 1 )
      & ( ( V_b_dot_0
          = ( '2d.point/2' @ V_a2 @ ( '-/1' @ V_a1 ) ) )
        | ( V_b_dot_0
          = ( '2d.point/2' @ ( '-/1' @ V_a2 ) @ V_a1 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p2_1_answer,answer,(
    ^ [V_b1_dot_0: 'R'] :
      ( ( ( '+/2' @ ( '^/2' @ V_a1 @ 2 ) @ ( '^/2' @ V_a2 @ 2 ) )
        = 1 )
      & ( ( V_b1_dot_0 = V_a2 )
        | ( V_b1_dot_0
          = ( '-/1' @ V_a2 ) ) ) ) ),
    answer_to(p2_1_question,[])).

thf(p2_2_answer,answer,(
    ^ [V_b2_dot_0: 'R'] :
      ( ( ( '+/2' @ ( '^/2' @ V_a1 @ 2 ) @ ( '^/2' @ V_a2 @ 2 ) )
        = 1 )
      & ( ( V_b2_dot_0 = V_a1 )
        | ( V_b2_dot_0
          = ( '-/1' @ V_a1 ) ) ) ) ),
    answer_to(p2_2_question,[])).
