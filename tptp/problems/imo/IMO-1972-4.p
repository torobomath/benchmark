%% DOMAIN:    Algebra, basics of equation/inequality
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1972, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-27
%%
%% <PROBLEM-TEXT>
%% Find all solutions $(x_1, x_2, x_3, x_4, x_5)$ of the system of inequalities
%% \[  (x_1^2 - x_3 x_5)(x_2^2 - x_3 x_5) \leq 0  \]
%% \[  (x_2^2 - x_4 x_1)(x_3^2 - x_4 x_1) \leq 0  \]
%% \[  (x_3^2 - x_5 x_2)(x_4^2 - x_5 x_2) \leq 0  \]
%% \[  (x_4^2 - x_1 x_3)(x_5^2 - x_1 x_3) \leq 0  \]
%% \[  (x_5^2 - x_2 x_4)(x_1^2 - x_2 x_4) \leq 0  \]
%% where $x_1$, $x_2$, $x_3$, $x_4$, $x_5$ are positive real numbers.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  168 (   6 equality;  60 variable)
%            Maximal formula depth :   26 (  22 average)
%            Number of connectives :  156 (   0   ~;   0   |;  19   &; 137   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;  10   ?;   2   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   2 pred;    2 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_XL: ( 'ListOf' @ $real )] :
      ? [V_X1: $real,V_X2: $real,V_X3: $real,V_X4: $real,V_X5: $real] :
        ( ( $lesseq @ ( $product @ ( $difference @ ( '^/2' @ V_X1 @ 2.0 ) @ ( $product @ V_X3 @ V_X5 ) ) @ ( $difference @ ( '^/2' @ V_X2 @ 2.0 ) @ ( $product @ V_X3 @ V_X5 ) ) ) @ 0.0 )
        & ( $lesseq @ ( $product @ ( $difference @ ( '^/2' @ V_X2 @ 2.0 ) @ ( $product @ V_X1 @ V_X4 ) ) @ ( $difference @ ( '^/2' @ V_X3 @ 2.0 ) @ ( $product @ V_X4 @ V_X1 ) ) ) @ 0.0 )
        & ( $lesseq @ ( $product @ ( $difference @ ( '^/2' @ V_X3 @ 2.0 ) @ ( $product @ V_X2 @ V_X5 ) ) @ ( $difference @ ( '^/2' @ V_X4 @ 2.0 ) @ ( $product @ V_X2 @ V_X5 ) ) ) @ 0.0 )
        & ( $lesseq @ ( $product @ ( $difference @ ( '^/2' @ V_X4 @ 2.0 ) @ ( $product @ V_X1 @ V_X3 ) ) @ ( $difference @ ( '^/2' @ V_X5 @ 2.0 ) @ ( $product @ V_X1 @ V_X3 ) ) ) @ 0.0 )
        & ( $lesseq @ ( $product @ ( $difference @ ( '^/2' @ V_X5 @ 2.0 ) @ ( $product @ V_X2 @ V_X4 ) ) @ ( $difference @ ( '^/2' @ V_X1 @ 2.0 ) @ ( $product @ V_X2 @ V_X4 ) ) ) @ 0.0 )
        & ( $less @ 0.0 @ V_X1 )
        & ( $less @ 0.0 @ V_X2 )
        & ( $less @ 0.0 @ V_X3 )
        & ( $less @ 0.0 @ V_X4 )
        & ( $less @ 0.0 @ V_X5 )
        & ( V_XL
          = ( 'cons/2' @ $real @ V_X1 @ ( 'cons/2' @ $real @ V_X2 @ ( 'cons/2' @ $real @ V_X3 @ ( 'cons/2' @ $real @ V_X4 @ ( 'cons/2' @ $real @ V_X5 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_XL_dot_0: ( 'ListOf' @ $real )] :
    ? [V_X1_dot_0: $real,V_X2_dot_0: $real,V_X3_dot_0: $real,V_X4_dot_0: $real,V_X5_dot_0: $real] :
      ( ( V_XL_dot_0
        = ( 'cons/2' @ $real @ V_X1_dot_0 @ ( 'cons/2' @ $real @ V_X2_dot_0 @ ( 'cons/2' @ $real @ V_X3_dot_0 @ ( 'cons/2' @ $real @ V_X4_dot_0 @ ( 'cons/2' @ $real @ V_X5_dot_0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
      & ( V_X1_dot_0 = V_X2_dot_0 )
      & ( $less @ 0.0 @ V_X1_dot_0 )
      & ( $less @ 0.0 @ V_X2_dot_0 )
      & ( $less @ 0.0 @ V_X3_dot_0 )
      & ( $less @ 0.0 @ V_X4_dot_0 )
      & ( $less @ 0.0 @ V_X5_dot_0 )
      & ( V_X2_dot_0 = V_X3_dot_0 )
      & ( V_X3_dot_0 = V_X4_dot_0 )
      & ( V_X4_dot_0 = V_X5_dot_0 ) ) ),
    answer_to(p_question,[])).

