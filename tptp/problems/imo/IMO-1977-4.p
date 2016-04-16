%% DOMAIN:    Geometry, trigonometric functions
%% THEORY:    trans
%% SOURCE:    International Mathematical Olympiad, 1977, Problem 4
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-23
%%
%% <PROBLEM-TEXT>
%% Four real constants $a$, $b$, $A$, $B$ are given, and\[
%% f (\theta) = 1 - a \cos\theta - b \sin\theta
%% - A \cos 2\theta - B \sin 2\theta.
%% \]Prove that if $f(\theta) \geq 0$ for all real $\theta$, then
%% \begin{center} $a^2+b^2 \leq 2$ and $A^2 + B^2 \leq 1$. \end{center}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   0 equality;  12 variable)
%            Maximal formula depth :   19 (  19 average)
%            Number of connectives :   48 (   0   ~;   0   |;   1   &;  46   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   5   !;   0   ?;   0   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    3 func;    3 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_a: $real,V_b: $real,V_A: $real,V_B: $real] :
      ( ! [V_theta: $real] :
          ( $greatereq @ ( $sum @ 1.0 @ ( $sum @ ( $uminus @ ( $product @ V_a @ ( 'cos/1' @ V_theta ) ) ) @ ( $sum @ ( $uminus @ ( $product @ V_b @ ( 'sin/1' @ V_theta ) ) ) @ ( $sum @ ( $uminus @ ( $product @ V_A @ ( 'cos/1' @ ( $product @ 2.0 @ V_theta ) ) ) ) @ ( $uminus @ ( $product @ V_B @ ( 'sin/1' @ ( $product @ 2.0 @ V_theta ) ) ) ) ) ) ) ) @ 0.0 )
     => ( ( $lesseq @ ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( '^/2' @ V_b @ 2.0 ) ) @ 2.0 )
        & ( $lesseq @ ( $sum @ ( '^/2' @ V_A @ 2.0 ) @ ( '^/2' @ V_B @ 2.0 ) ) @ 1.0 ) ) ) )).

