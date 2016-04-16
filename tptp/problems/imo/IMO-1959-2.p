%% DOMAIN:    Algebra, basics of equation/inequality
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1959, Problem 2
%% SCORE:     8
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-09
%%
%% <PROBLEM-TEXT>
%% For what real values of $x$ is\[
%% \sqrt{x + \sqrt{2x - 1}} + \sqrt{x - \sqrt{2x - 1}} = A,
%% \]given (a) $A = \sqrt{2}$, (b) $A = 1$, (c) $A = 2$, where only non-negative real
%% numbers are admitted for square roots?
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   95 (   5 equality;  18 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :   79 (   0   ~;   0   |;   4   &;  75   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    6 (   1 sgn;   0   !;   0   ?;   6   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    4 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( ( $lesseq @ 0.0 @ V_x )
        & ( ( $sum @ ( 'sqrt/1' @ ( $sum @ V_x @ ( 'sqrt/1' @ ( $difference @ ( $product @ 2.0 @ V_x ) @ 1.0 ) ) ) ) @ ( 'sqrt/1' @ ( $difference @ V_x @ ( 'sqrt/1' @ ( $difference @ ( $product @ 2.0 @ V_x ) @ 1.0 ) ) ) ) )
          = ( 'sqrt/1' @ 2.0 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( ( $lesseq @ 0.0 @ V_x )
        & ( ( $sum @ ( 'sqrt/1' @ ( $sum @ V_x @ ( 'sqrt/1' @ ( $difference @ ( $product @ 2.0 @ V_x ) @ 1.0 ) ) ) ) @ ( 'sqrt/1' @ ( $difference @ V_x @ ( 'sqrt/1' @ ( $difference @ ( $product @ 2.0 @ V_x ) @ 1.0 ) ) ) ) )
          = 1.0 ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( ( $lesseq @ 0.0 @ V_x )
        & ( ( $sum @ ( 'sqrt/1' @ ( $sum @ V_x @ ( 'sqrt/1' @ ( $difference @ ( $product @ 2.0 @ V_x ) @ 1.0 ) ) ) ) @ ( 'sqrt/1' @ ( $difference @ V_x @ ( 'sqrt/1' @ ( $difference @ ( $product @ 2.0 @ V_x ) @ 1.0 ) ) ) ) )
          = 2.0 ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $lesseq @ ( $quotient @ 1.0 @ 2.0 ) @ V_x_dot_0 )
      & ( $lesseq @ V_x_dot_0 @ 1.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: $real] : ( 0 = 1 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( V_x_dot_0
      = ( $quotient @ 3.0 @ 2.0 ) ) ),
    answer_to(p3_question,[])).

