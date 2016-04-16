%% DOMAIN:    Differentiation and its Applications
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2009, Science Course, Problem 6
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% For the real number $a$, find the range of $a$ such that the equation
%% of $x$: $|x(x - 2)| + 2 a |x| - 4 a |x - 2| - 1 = 0$ has four
%% different real solutions.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   79 (   1 equality;  26 variable)
%            Maximal formula depth :   20 (  14 average)
%            Number of connectives :   75 (   0   ~;   2   |;   9   &;  64   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   5   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   15 (   1 pred;    5 func;    9 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_x1: $real,V_x2: $real,V_x3: $real,V_x4: $real,V_f: ( $real > $real )] :
        ( ( V_f
          = ( ^ [V_x: $real] :
                ( $sum @ ( 'abs/1' @ ( $product @ V_x @ ( $difference @ V_x @ 2.0 ) ) ) @ ( $sum @ ( $product @ 2.0 @ ( $product @ V_a @ ( 'abs/1' @ V_x ) ) ) @ ( $sum @ ( $product @ ( $uminus @ 4.0 ) @ ( $product @ V_a @ ( 'abs/1' @ ( $difference @ V_x @ 2.0 ) ) ) ) @ ( $uminus @ 1.0 ) ) ) ) ) )
        & ( $less @ V_x1 @ V_x2 )
        & ( $less @ V_x2 @ V_x3 )
        & ( $less @ V_x3 @ V_x4 )
        & ( 'is-solution-of/2' @ V_x1 @ ( 'equation/1' @ V_f ) )
        & ( 'is-solution-of/2' @ V_x2 @ ( 'equation/1' @ V_f ) )
        & ( 'is-solution-of/2' @ V_x3 @ ( 'equation/1' @ V_f ) )
        & ( 'is-solution-of/2' @ V_x4 @ ( 'equation/1' @ V_f ) ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( ( ( $less @ ( $quotient @ -1.0 @ 8.0 ) @ V_a_dot_0 )
        & ( $less @ V_a_dot_0 @ 0.0 ) )
      | ( ( $less @ ( $quotient @ 2.0 @ 9.0 ) @ V_a_dot_0 )
        & ( $less @ V_a_dot_0 @ ( $quotient @ 1.0 @ 4.0 ) ) )
      | ( $less @ ( $sum @ 3.0 @ ( 'sqrt/1' @ 7.0 ) ) @ V_a_dot_0 ) ) ),
    answer_to(p_question,[])).

