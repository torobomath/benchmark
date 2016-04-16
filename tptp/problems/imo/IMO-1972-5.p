%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1972, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-02-02
%%
%% <PROBLEM-TEXT>
%% Lef $f$ and $g$ be real-valued functions defined for all real values of $x$ and $y$,
%% and satisfying the equation\[
%% f(x + y) + f(x - y) = 2f(x)g(y)
%% \]forall $x$, $y$. Prove that if $f(x)$ is not identically zero,
%% and if $|f(x)| \leq 1$ for all $x$, then $|g(x)| \leq 1$ for all $y$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   38 (   2 equality;  16 variable)
%            Maximal formula depth :   13 (  13 average)
%            Number of connectives :   34 (   1   ~;   0   |;   2   &;  30   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   6   !;   1   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    3 func;    3 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_f: 'R2R',V_g: 'R2R'] :
      ( ( ! [V_x_dot_1: $real,V_y: $real] :
            ( ( $sum @ ( 'funapp/2' @ V_f @ ( $sum @ V_x_dot_1 @ V_y ) ) @ ( 'funapp/2' @ V_f @ ( $difference @ V_x_dot_1 @ V_y ) ) )
            = ( $product @ 2.0 @ ( $product @ ( 'funapp/2' @ V_f @ V_x_dot_1 ) @ ( 'funapp/2' @ V_g @ V_x_dot_1 ) ) ) )
        & ? [V_x_dot_0: $real] :
            ( ( 'funapp/2' @ V_f @ V_x_dot_0 )
           != 0.0 )
        & ! [V_x: $real] :
            ( $lesseq @ ( 'abs/1' @ ( 'funapp/2' @ V_f @ V_x ) ) @ 1.0 ) )
     => ! [V_y_dot_0: $real] :
          ( $lesseq @ ( 'abs/1' @ ( 'funapp/2' @ V_g @ V_y_dot_0 ) ) @ 1.0 ) ) )).

