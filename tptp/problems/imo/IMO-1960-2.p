%% DOMAIN:    Algebra, basics of equation/inequality
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1960, Problem 2
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-04
%%
%% <PROBLEM-TEXT>
%% For what values of the variable $x$ does the following inequality hold:\[
%% \frac{4x^2}{(1 - \sqrt{1 + 2x})^2} < 2x + 9?
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   38 (   1 equality;   6 variable)
%            Maximal formula depth :   13 (  11 average)
%            Number of connectives :   35 (   1   ~;   0   |;   2   &;  32   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   2 pred;    5 func;    7 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( $less @ ( $quotient @ ( $product @ 4.0 @ ( '^/2' @ V_x @ 2.0 ) ) @ ( '^/2' @ ( $difference @ 1.0 @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( $product @ 2.0 @ V_x ) ) ) ) @ 2.0 ) ) @ ( $sum @ ( $product @ 2.0 @ V_x ) @ 9.0 ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( V_x_dot_0 != 0.0 )
      & ( $lesseq @ ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) @ V_x_dot_0 )
      & ( $less @ V_x_dot_0 @ ( $quotient @ 45.0 @ 8.0 ) ) ) ),
    answer_to(p_question,[])).

