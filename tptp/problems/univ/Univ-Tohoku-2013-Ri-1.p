%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2013, Science Course, Problem 1
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2015-01-08
%%
%% <PROBLEM-TEXT>
%% Let $k$ be a real number. For the cubic equation
%% $f(x)= x^3 - k x^2 - 1$, let ${\alpha}$, ${\beta}$, and ${\gamma}$ be
%% the three solutions of the equation $f(x)= 0$. Assume that $g(x)$ is
%% a cubic equation of which the coefficient of $x^3$ is $1$, and let
%% ${\alpha} {\beta}$, ${\beta} {\gamma}$, and ${\gamma} {\alpha}$ be
%% the three solutions of the equation $g(x)= 0$.
%%
%% (1) Represent $g(x)$ using $k$.
%%
%% (2) Find the value of $k$ such that the equations $f(x)= 0$ and
%% $g(x)= 0$ have common solutions.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  194 (   6 equality;  36 variable)
%            Maximal formula depth :   23 (  11 average)
%            Number of connectives :  180 (   0   ~;   1   |;   5   &; 174   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   1   :;   0   =)
%            Number of variables   :   17 (   0 sgn;   0   !;  13   ?;   4   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    2 func;    4 numbers)

include('axioms.ax').

thf('k/0_type',type,(
    'k/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_gc: ( 'ListOf' @ $real )] :
      ? [V_c0: $real,V_c1: $real,V_c2: $real] :
        ( ( V_gc
          = ( 'cons/2' @ $real @ V_c0 @ ( 'cons/2' @ $real @ V_c1 @ ( 'cons/2' @ $real @ V_c2 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ? [V_alpha: $real,V_beta: $real,V_gamma: $real] :
            ( ( 'are-solutions-of/2' @ ( 'cons/2' @ $real @ V_alpha @ ( 'cons/2' @ $real @ V_beta @ ( 'cons/2' @ $real @ V_gamma @ ( 'nil/0' @ $real ) ) ) ) @ ( 'poly-equation/1' @ ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $uminus @ 'k/0' ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
            & ( 'are-solutions-of/2' @ ( 'cons/2' @ $real @ ( $product @ V_alpha @ V_beta ) @ ( 'cons/2' @ $real @ ( $product @ V_beta @ V_gamma ) @ ( 'cons/2' @ $real @ ( $product @ V_gamma @ V_alpha ) @ ( 'nil/0' @ $real ) ) ) ) @ ( 'poly-equation/1' @ V_gc ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
      ? [V_c0: $real,V_c1: $real,V_c2: $real,V_alpha: $real,V_beta: $real,V_gamma: $real] :
        ( ( 'are-solutions-of/2' @ ( 'cons/2' @ $real @ V_alpha @ ( 'cons/2' @ $real @ V_beta @ ( 'cons/2' @ $real @ V_gamma @ ( 'nil/0' @ $real ) ) ) ) @ ( 'poly-equation/1' @ ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $uminus @ V_k ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( 'are-solutions-of/2' @ ( 'cons/2' @ $real @ ( $product @ V_alpha @ V_beta ) @ ( 'cons/2' @ $real @ ( $product @ V_beta @ V_gamma ) @ ( 'cons/2' @ $real @ ( $product @ V_gamma @ V_alpha ) @ ( 'nil/0' @ $real ) ) ) ) @ ( 'poly-equation/1' @ ( 'cons/2' @ $real @ V_c0 @ ( 'cons/2' @ $real @ V_c1 @ ( 'cons/2' @ $real @ V_c2 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ? [V_x: $real] :
            ( ( ( 'funapp/2' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $uminus @ V_k ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_x )
              = 0.0 )
            & ( ( 'funapp/2' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c0 @ ( 'cons/2' @ $real @ V_c1 @ ( 'cons/2' @ $real @ V_c2 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_x )
              = 0.0 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_gc_dot_0: ( 'ListOf' @ $real )] :
      ( V_gc_dot_0
      = ( 'cons/2' @ $real @ -1.0 @ ( 'cons/2' @ $real @ 'k/0' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_k_dot_0: $real] :
      ( ( V_k_dot_0 = 0.0 )
      | ( V_k_dot_0 = -2.0 ) ) ),
    answer_to(p2_question,[])).

