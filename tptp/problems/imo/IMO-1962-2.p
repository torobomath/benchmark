%% DOMAIN:    Algebra, basics of equation/inequality
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1962, Problem 2
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Determine all real numbers $x$ which satisfy the inequality:\[
%% \sqrt{3 - x} - \sqrt{x + 1} > \frac{1}{2}.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   26 (   0 equality;   4 variable)
%            Maximal formula depth :   10 (   9 average)
%            Number of connectives :   24 (   0   ~;   0   |;   1   &;  23   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   3 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( $greater @ ( $difference @ ( 'sqrt/1' @ ( $difference @ 3.0 @ V_x ) ) @ ( 'sqrt/1' @ ( $sum @ V_x @ 1.0 ) ) ) @ ( $quotient @ 1.0 @ 2.0 ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $lesseq @ -1.0 @ V_x_dot_0 )
      & ( $less @ V_x_dot_0 @ ( $difference @ 1.0 @ ( $quotient @ ( 'sqrt/1' @ 31.0 ) @ 8.0 ) ) ) ) ),
    answer_to(p_question,[])).

