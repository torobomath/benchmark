%% DOMAIN:    Quadratic Functions
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2001, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-08-06
%%
%% <PROBLEM-TEXT>
%% Consider the function $g(x)= - |2 f(x)- 1| + 1$ ( $0\le x\le 1$),
%% where the function $f(x)= - |2 x - 1| + 1$ ( $0\le x\le 1$). When
%% $0 < c < 1$, find $x$ that satisfies $g(x)= c$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   69 (   5 equality;   9 variable)
%            Maximal formula depth :   27 (  14 average)
%            Number of connectives :   57 (   0   ~;   3   |;   6   &;  48   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   1   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   0   !;   0   ?;   4   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    5 func;    4 numbers)

include('axioms.ax').

thf('c/0_type',type,(
    'c/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( ( $lesseq @ 0.0 @ V_x )
        & ( $lesseq @ V_x @ 1.0 )
        & ( $less @ 0.0 @ 'c/0' )
        & ( $less @ 'c/0' @ 1.0 )
        & ( 'c/0'
          = ( ^ [V_x_dot_0: $real] :
                ( $sum
                @ ( $uminus
                  @ ( 'abs/1'
                    @ ( $difference
                      @ ( $product @ 2.0
                        @ ( ^ [V_x_dot_1: $real] :
                              ( $sum @ ( $uminus @ ( 'abs/1' @ ( $difference @ ( $product @ 2.0 @ V_x_dot_1 ) @ 1.0 ) ) ) @ 1.0 )
                          @ V_x_dot_0 ) )
                      @ 1.0 ) ) )
                @ 1.0 )
            @ V_x ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_2: $real] :
      ( ( $less @ 0.0 @ 'c/0' )
      & ( $less @ 'c/0' @ 1.0 )
      & ( ( V_x_dot_2
          = ( $quotient @ 'c/0' @ 4.0 ) )
        | ( V_x_dot_2
          = ( $uminus @ ( $quotient @ ( $difference @ 'c/0' @ 2.0 ) @ 4.0 ) ) )
        | ( V_x_dot_2
          = ( $quotient @ ( $sum @ 'c/0' @ 2.0 ) @ 4.0 ) )
        | ( V_x_dot_2
          = ( $uminus @ ( $quotient @ ( $difference @ 'c/0' @ 4.0 ) @ 4.0 ) ) ) ) ) ),
    answer_to(p1_question,[])).

