%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2009, Humanities Course, Problem 4
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% Let $D$ be the region on the coordinate plane defined by the
%% inequality $2 y > x + 1 + 3 |x - 1|$. For the real number $a$, define
%% the parabola $C$ as $y = x^2 - 2 a x + a^2 + a + 2$. Find the range
%% of $a$ such that all the points on $C$ are contained in $D$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  100 (   4 equality;  28 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :   88 (   0   ~;   0   |;   4   &;  82   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   13 (   0 sgn;   3   !;   2   ?;   8   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    5 func;    4 numbers)

include('axioms.ax').

thf(a_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ! [V_x: $real,V_y: $real] :
        ( ( V_y
          = ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( $sum @ ( $product @ ( $uminus @ 2.0 ) @ ( $product @ V_a @ V_x ) ) @ ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( $sum @ V_a @ 2.0 ) ) ) ) )
       => ( $greater @ ( $product @ 2.0 @ V_y ) @ ( $sum @ V_x @ ( $sum @ 1.0 @ ( $product @ 3.0 @ ( 'abs/1' @ ( $difference @ V_x @ 1.0 ) ) ) ) ) ) ) )).

thf(p_another_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_C: '2d.Shape',V_D: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( V_y_dot_0
                = ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( $sum @ ( $product @ ( $uminus @ 2.0 ) @ ( $product @ V_a @ V_x_dot_0 ) ) @ ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( $sum @ V_a @ 2.0 ) ) ) ) ) ) )
        & ( V_D
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( $greater @ ( $product @ 2.0 @ V_y ) @ ( $sum @ V_x @ ( $sum @ 1.0 @ ( $product @ 3.0 @ ( 'abs/1' @ ( $difference @ V_x @ 1.0 ) ) ) ) ) ) ) )
        & ! [V_P: '2d.Point'] :
            ( ( '2d.on/2' @ V_P @ V_C )
           => ( '2d.on/2' @ V_P @ V_D ) ) ) )).

thf(a_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( ( $less @ ( $quotient @ 1.0 @ 8.0 ) @ V_a_dot_0 )
      & ( $less @ V_a_dot_0 @ 2.0 ) ) ),
    answer_to(a_question,[])).

thf(p_another_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( ( $less @ ( $quotient @ 1.0 @ 8.0 ) @ V_a_dot_0 )
      & ( $less @ V_a_dot_0 @ 2.0 ) ) ),
    answer_to(p_another_question,[])).

