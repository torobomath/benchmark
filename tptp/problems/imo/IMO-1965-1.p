%% DOMAIN:    Geometry, trigonometric functions
%% THEORY:    trans
%% SOURCE:    International Mathematical Olympiad, 1965, Problem 1
%% SCORE:     4
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-17
%%
%% <PROBLEM-TEXT>
%% Determine all values $x$ in the interval $0 \leq x \leq 2\pi$ which satisfy
%% the inequality\[
%% 2 \cos x \leq | \sqrt{1 + \sin 2x} - \sqrt{1 - \sin 2x}| \leq \sqrt{2}.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   62 (   0 equality;   9 variable)
%            Maximal formula depth :   16 (  12 average)
%            Number of connectives :   60 (   0   ~;   0   |;   4   &;  56   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    4 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( ( $lesseq @ 0.0 @ V_x )
        & ( $lesseq @ V_x @ ( $product @ 2.0 @ 'Pi/0' ) )
        & ( $lesseq @ ( $product @ 2.0 @ ( 'cos/1' @ V_x ) ) @ ( 'abs/1' @ ( $difference @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( 'sin/1' @ ( $product @ 2.0 @ V_x ) ) ) ) @ ( 'sqrt/1' @ ( $difference @ 1.0 @ ( 'sin/1' @ ( $product @ 2.0 @ V_x ) ) ) ) ) ) )
        & ( $lesseq @ ( 'abs/1' @ ( $difference @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( 'sin/1' @ ( $product @ 2.0 @ V_x ) ) ) ) @ ( 'sqrt/1' @ ( $difference @ 1.0 @ ( 'sin/1' @ ( $product @ 2.0 @ V_x ) ) ) ) ) ) @ ( 'sqrt/1' @ 2.0 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $lesseq @ ( $quotient @ 'Pi/0' @ 4.0 ) @ V_x_dot_0 )
      & ( $lesseq @ V_x_dot_0 @ ( $quotient @ ( $product @ 'Pi/0' @ 7.0 ) @ 4.0 ) ) ) ),
    answer_to(p_question,[])).

