%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1990, Problem 4
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-11-13
%%
%% <PROBLEM-TEXT>
%% Let $¥mathbb{Q}^+$ be the set of positive rational numbers. Construct a function
%% $f : ¥mathbb{Q}^+ ¥rightarrow ¥mathbb{Q}^+$ such that
%% ¥[
%% f(x f(y)) = ¥frac{f(x)}{y}
%% ¥]
%% for all $x$, $y$ in $¥mathbb{Q}^+$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   20 (   1 equality;  11 variable)
%            Maximal formula depth :   10 (  10 average)
%            Number of connectives :   17 (   0   ~;   0   |;   3   &;  13   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   2   !;   1   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   2 pred;    2 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ? [V_f: ( $real > $real )] :
    ! [V_x: $real,V_y: $real] :
      ( ( ( $is_rat @ V_x )
        & ( $is_rat @ V_y )
        & ( $less @ 0.0 @ V_x )
        & ( $less @ 0.0 @ V_y ) )
     => ( ( V_f @ ( $product @ V_x @ ( V_f @ V_y ) ) )
        = ( $quotient @ ( V_f @ V_x ) @ V_y ) ) ) )).

