%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1994, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-02-02
%%
%% <PROBLEM-TEXT>
%% Let $S$ be the set of real numbers strictly greater than $-1$. Find all functions
%% $f : S ¥rightarrow S$ satisfying the two conditions:
%% ¥begin{flushleft}
%% 1. $f(x + f(y) + xf(y)) = y + f(x) + yf(x)$ for all $x$ and $y$ in $S$;¥¥
%% 2. $¥frac{f(x)}{x}$ is strictly increasing on each of the intervals $-1 < x < 0$
%% and $0 < x$.
%% ¥end{flushleft}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  101 (   4 equality;  46 variable)
%            Maximal formula depth :   17 (  13 average)
%            Number of connectives :   91 (   0   ~;   0   |;   8   &;  77   @)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   4   !;   0   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   3 pred;    4 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ 'R2R'
    @ ^ [V_f: 'R2R'] :
        ( ! [V_x_dot_0: $real,V_y: $real] :
            ( ( ( $greater @ V_x_dot_0 @ -1.0 )
              & ( $greater @ V_y @ -1.0 ) )
           => ( ( $greater @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) @ -1.0 )
              & ( ( 'funapp/2' @ V_f @ ( $sum @ V_x_dot_0 @ ( $sum @ ( 'funapp/2' @ V_f @ V_y ) @ ( $product @ V_x_dot_0 @ ( 'funapp/2' @ V_f @ V_y ) ) ) ) )
                = ( $sum @ V_y @ ( $sum @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) @ ( $product @ V_y @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) ) ) ) )
              & ( ( ( $less @ V_x_dot_0 @ V_y )
                  & ( $less @ V_y @ 0.0 ) )
               => ( $less @ ( $quotient @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) @ V_x_dot_0 ) @ ( $quotient @ ( 'funapp/2' @ V_f @ V_y ) @ V_y ) ) )
              & ( ( ( $less @ V_x_dot_0 @ V_y )
                  & ( $less @ 0.0 @ V_x_dot_0 ) )
               => ( $less @ ( $quotient @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) @ V_x_dot_0 ) @ ( $quotient @ ( 'funapp/2' @ V_f @ V_y ) @ V_y ) ) ) ) )
        & ! [V_x: $real] :
            ( ( $lesseq @ V_x @ -1.0 )
           => ( ( 'funapp/2' @ V_f @ V_x )
              = 0.0 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: 'R2R'] :
    ! [V_x_dot_1: $real] :
      ( ( ( $greater @ V_x_dot_1 @ -1.0 )
       => ( ( 'funapp/2' @ V_f_dot_0 @ V_x_dot_1 )
          = ( $quotient @ ( $uminus @ V_x_dot_1 ) @ ( $sum @ V_x_dot_1 @ 1.0 ) ) ) )
      & ( ( $lesseq @ V_x_dot_1 @ -1.0 )
       => ( ( 'funapp/2' @ V_f_dot_0 @ V_x_dot_1 )
          = 0.0 ) ) ) ),
    answer_to(p_question,[])).

