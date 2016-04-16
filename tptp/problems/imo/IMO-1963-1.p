%% DOMAIN:    Algebra, basics of equation/inequality
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1963, Problem 1
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-16
%%
%% <PROBLEM-TEXT>
%% Find all real roots of the equation\[
%% \sqrt{x^2 - p} + 2 \sqrt{x^2 - 1} = x,
%% \]where $p$ is a real parameter.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   39 (   2 equality;   4 variable)
%            Maximal formula depth :   11 (   8 average)
%            Number of connectives :   33 (   0   ~;   0   |;   2   &;  31   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   1   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('p/0_type',type,(
    'p/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( ( $sum @ ( 'sqrt/1' @ ( $difference @ ( '^/2' @ V_x @ 2.0 ) @ 'p/0' ) ) @ ( $product @ 2.0 @ ( 'sqrt/1' @ ( $difference @ ( '^/2' @ V_x @ 2.0 ) @ 1.0 ) ) ) )
        = V_x ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $lesseq @ 'p/0' @ ( $quotient @ 4.0 @ 3.0 ) )
      & ( $lesseq @ 0.0 @ 'p/0' )
      & ( V_x_dot_0
        = ( $quotient @ ( $difference @ 4.0 @ 'p/0' ) @ ( 'sqrt/1' @ ( $product @ 8.0 @ ( $difference @ 2.0 @ 'p/0' ) ) ) ) ) ) ),
    answer_to(p_question,[])).

