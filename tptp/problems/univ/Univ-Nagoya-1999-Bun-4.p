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

% Syntax   : Number of formulae    :   10 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  182 (  23 equality;  47 variable)
%            Maximal formula depth :   17 (  10 average)
%            Number of connectives :  128 (   0   ~;   3   |;   8   &; 114   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   2   :;   0   =)
%            Number of variables   :   28 (   0 sgn;   4   !;  14   ?;  10   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   0 pred;    2 func;    2 numbers)

include('axioms.ax').

thf('a1/0_type',type,(
    'a1/0': $real )).

thf('a2/0_type',type,(
    'a2/0': $real )).

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_a: '2d.Point'] :
            ? [V_b: '2d.Vector'] :
            ! [V_p: '2d.Vector'] :
              ( ( $sum @ ( '^/2' @ ( '2d.inner-prod/2' @ ( '2d.vec/2' @ '2d.origin/0' @ V_a ) @ V_p ) @ 2.0 ) @ ( '^/2' @ ( '2d.inner-prod/2' @ V_b @ V_p ) @ 2.0 ) )
              = ( '^/2' @ ( '2d.radius/1' @ V_p ) @ 2.0 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_b: '2d.Point'] :
      ? [V_a: '2d.Vector'] :
        ( ( V_a
          = ( '2d.vec2d/2' @ 'a1/0' @ 'a2/0' ) )
        & ! [V_p: '2d.Vector'] :
            ( ? [V_p1: $real,V_p2: $real] :
                ( V_p
                = ( '2d.vec2d/2' @ V_p1 @ V_p2 ) )
           => ( ( $sum @ ( '^/2' @ ( '2d.inner-prod/2' @ V_a @ V_p ) @ 2.0 ) @ ( '^/2' @ ( '2d.inner-prod/2' @ ( '2d.vec/2' @ '2d.origin/0' @ V_b ) @ V_p ) @ 2.0 ) )
              = ( '^/2' @ ( '2d.radius/1' @ V_p ) @ 2.0 ) ) ) ) )).

thf(p2_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_b1: $real] :
      ? [V_b: '2d.Vector',V_b2: $real,V_a: '2d.Vector'] :
        ( ( V_b
          = ( '2d.vec2d/2' @ V_b1 @ V_b2 ) )
        & ( V_a
          = ( '2d.vec2d/2' @ 'a1/0' @ 'a2/0' ) )
        & ! [V_p: '2d.Vector'] :
            ( ? [V_p1: $real,V_p2: $real] :
                ( V_p
                = ( '2d.vec2d/2' @ V_p1 @ V_p2 ) )
           => ( ( $sum @ ( '^/2' @ ( '2d.inner-prod/2' @ V_a @ V_p ) @ 2.0 ) @ ( '^/2' @ ( '2d.inner-prod/2' @ V_b @ V_p ) @ 2.0 ) )
              = ( '^/2' @ ( '2d.radius/1' @ V_p ) @ 2.0 ) ) ) ) )).

thf(p2_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_b2: $real] :
      ? [V_b: '2d.Vector',V_b1: $real,V_a: '2d.Vector'] :
        ( ( V_b
          = ( '2d.vec2d/2' @ V_b1 @ V_b2 ) )
        & ( V_a
          = ( '2d.vec2d/2' @ 'a1/0' @ 'a2/0' ) )
        & ! [V_p: '2d.Vector'] :
            ( ? [V_p1: $real,V_p2: $real] :
                ( V_p
                = ( '2d.vec2d/2' @ V_p1 @ V_p2 ) )
           => ( ( $sum @ ( '^/2' @ ( '2d.inner-prod/2' @ V_a @ V_p ) @ 2.0 ) @ ( '^/2' @ ( '2d.inner-prod/2' @ V_b @ V_p ) @ 2.0 ) )
              = ( '^/2' @ ( '2d.radius/1' @ V_p ) @ 2.0 ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x: $real,V_y: $real] :
        ( ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) )
        = 1.0 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_b_dot_0: '2d.Point'] :
      ( ( ( $sum @ ( '^/2' @ 'a1/0' @ 2.0 ) @ ( '^/2' @ 'a2/0' @ 2.0 ) )
        = 1.0 )
      & ( ( V_b_dot_0
          = ( '2d.point/2' @ 'a2/0' @ ( $uminus @ 'a1/0' ) ) )
        | ( V_b_dot_0
          = ( '2d.point/2' @ ( $uminus @ 'a2/0' ) @ 'a1/0' ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p2_1_answer,answer,(
    ^ [V_b1_dot_0: $real] :
      ( ( ( $sum @ ( '^/2' @ 'a1/0' @ 2.0 ) @ ( '^/2' @ 'a2/0' @ 2.0 ) )
        = 1.0 )
      & ( ( V_b1_dot_0 = 'a2/0' )
        | ( V_b1_dot_0
          = ( $uminus @ 'a2/0' ) ) ) ) ),
    answer_to(p2_1_question,[])).

thf(p2_2_answer,answer,(
    ^ [V_b2_dot_0: $real] :
      ( ( ( $sum @ ( '^/2' @ 'a1/0' @ 2.0 ) @ ( '^/2' @ 'a2/0' @ 2.0 ) )
        = 1.0 )
      & ( ( V_b2_dot_0 = 'a1/0' )
        | ( V_b2_dot_0
          = ( $uminus @ 'a1/0' ) ) ) ) ),
    answer_to(p2_2_question,[])).

