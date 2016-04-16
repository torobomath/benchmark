%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 1999, Humanities Course, Problem 4
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-10
%%
%% <PROBLEM-TEXT>
%% Let $p$ be a real number other than $0$, and consider the quadratic
%% equation $x^2 - p x + 5 p = 0$.
%%
%% (1) Assume that the solutions ${\alpha}$ and ${\beta}$ of
%% $x^2 - p x + 5 p = 0$ satisfies ${\alpha}^5 + {\beta}^5 = p^5$. Find
%% the value of $p$.
%%
%% (2) Assume that $x^2 - p x + 5 p = 0$ has imaginary solutions, and
%% the fifth power of the solutions are real numbers. Find the value of
%% $p$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   77 (   6 equality;  17 variable)
%            Maximal formula depth :   13 (   9 average)
%            Number of connectives :   64 (   3   ~;   1   |;   5   &;  55   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    5 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_p: $real] :
      ? [V_a: 'complex.Complex',V_b: 'complex.Complex'] :
        ( ( 0.0 != V_p )
        & ( 'complex.are-solutions-of/2' @ ( 'cons/2' @ 'complex.Complex' @ V_a @ ( 'cons/2' @ 'complex.Complex' @ V_b @ ( 'nil/0' @ 'complex.Complex' ) ) ) @ ( 'complex.quad-equation/3' @ ( $product @ 5.0 @ V_p ) @ ( $uminus @ V_p ) @ 1.0 ) )
        & ( ( 'complex.^/2' @ ( 'complex.complex/2' @ V_p @ 0.0 ) @ 5.0 )
          = ( 'complex.+/2' @ ( 'complex.^/2' @ V_a @ 5.0 ) @ ( 'complex.^/2' @ V_b @ 5.0 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_p: $real] :
      ? [V_c: 'complex.Complex'] :
        ( ( 0.0 != V_p )
        & ( 'complex.is-solution-of/2' @ V_c @ ( 'complex.quad-equation/3' @ ( $product @ 5.0 @ V_p ) @ ( $uminus @ V_p ) @ 1.0 ) )
        & ~ ( 'complex.real-number/1' @ V_c )
        & ( 'complex.real-number/1' @ ( 'complex.^/2' @ V_c @ 5.0 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_p_dot_0: $real] : ( V_p_dot_0 = 5.0 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_p_dot_0: $real] :
      ( ( V_p_dot_0
        = ( $quotient @ ( $sum @ 15.0 @ ( $product @ 5.0 @ ( 'sqrt/1' @ 5.0 ) ) ) @ 2.0 ) )
      | ( V_p_dot_0
        = ( $quotient @ ( $difference @ 15.0 @ ( $product @ 5.0 @ ( 'sqrt/1' @ 5.0 ) ) ) @ 2.0 ) ) ) ),
    answer_to(p2_question,[])).

