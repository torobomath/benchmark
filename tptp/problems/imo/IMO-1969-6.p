%% DOMAIN:    Algebra, proofs of inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1969, Problem 6
%% SCORE:     8
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% Prove that for all real numbers $x_1$, $x_2$, $y_1$, $y_2$, $z_1$, $z_2$, with
%% $x_1 > 0$, $x_2 > 0$, $x_1 y_1 - z_1^2 > 0$, $x_2 y_2 - z_2^2 > 0$, the inequality\[
%% \frac{8}{(x_1+x_2)(y_1+y_2) - (z_1+z_2)^2} \leq \frac{1}{x_1 y_1 - z_1^2} + \frac{1}{x_2 y_2 - z_2^2}
%% \]is satisfied. Give necessary and sufficient conditions for equality.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  174 (   6 equality;  60 variable)
%            Maximal formula depth :   22 (  19 average)
%            Number of connectives :  161 (   0   ~;   0   |;  11   &; 149   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   6   !;  12   ?;   2   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    4 func;    4 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_x1: $real,V_x2: $real,V_y1: $real,V_y2: $real,V_z1: $real,V_z2: $real] :
      ( ( ( $greater @ V_x1 @ 0.0 )
        & ( $greater @ V_x2 @ 0.0 )
        & ( $greater @ ( $difference @ ( $product @ V_x1 @ V_y1 ) @ ( '^/2' @ V_z1 @ 2.0 ) ) @ 0.0 )
        & ( $greater @ ( $difference @ ( $product @ V_x2 @ V_y2 ) @ ( '^/2' @ V_z2 @ 2.0 ) ) @ 0.0 ) )
     => ( $lesseq @ ( $quotient @ 8.0 @ ( $difference @ ( $product @ ( $sum @ V_x1 @ V_x2 ) @ ( $sum @ V_y1 @ V_y2 ) ) @ ( '^/2' @ ( $sum @ V_z1 @ V_z2 ) @ 2.0 ) ) ) @ ( $sum @ ( $quotient @ 1.0 @ ( $difference @ ( $product @ V_x1 @ V_y1 ) @ ( '^/2' @ V_z1 @ 2.0 ) ) ) @ ( $quotient @ 1.0 @ ( $difference @ ( $product @ V_x2 @ V_y2 ) @ ( '^/2' @ V_z2 @ 2.0 ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ans: ( 'ListOf' @ $real )] :
      ? [V_x1: $real,V_x2: $real,V_y1: $real,V_y2: $real,V_z1: $real,V_z2: $real] :
        ( ( V_ans
          = ( 'cons/2' @ $real @ V_x1 @ ( 'cons/2' @ $real @ V_x2 @ ( 'cons/2' @ $real @ V_y1 @ ( 'cons/2' @ $real @ V_y2 @ ( 'cons/2' @ $real @ V_z1 @ ( 'cons/2' @ $real @ V_z2 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )
        & ( $greater @ V_x1 @ 0.0 )
        & ( $greater @ V_x2 @ 0.0 )
        & ( $greater @ ( $difference @ ( $product @ V_x1 @ V_y1 ) @ ( '^/2' @ V_z1 @ 2.0 ) ) @ 0.0 )
        & ( $greater @ ( $difference @ ( $product @ V_x2 @ V_y2 ) @ ( '^/2' @ V_z2 @ 2.0 ) ) @ 0.0 )
        & ( ( $quotient @ 8.0 @ ( $difference @ ( $product @ ( $sum @ V_x1 @ V_x2 ) @ ( $sum @ V_y1 @ V_y2 ) ) @ ( '^/2' @ ( $sum @ V_z1 @ V_z2 ) @ 2.0 ) ) )
          = ( $sum @ ( $quotient @ 1.0 @ ( $difference @ ( $product @ V_x1 @ V_y1 ) @ ( '^/2' @ V_z1 @ 2.0 ) ) ) @ ( $quotient @ 1.0 @ ( $difference @ ( $product @ V_x2 @ V_y2 ) @ ( '^/2' @ V_z2 @ 2.0 ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_ans_dot_0: ( 'ListOf' @ $real )] :
    ? [V_x1_dot_0: $real,V_x2_dot_0: $real,V_y1_dot_0: $real,V_y2_dot_0: $real,V_z1_dot_0: $real,V_z2_dot_0: $real] :
      ( ( V_ans_dot_0
        = ( 'cons/2' @ $real @ V_x1_dot_0 @ ( 'cons/2' @ $real @ V_x2_dot_0 @ ( 'cons/2' @ $real @ V_y1_dot_0 @ ( 'cons/2' @ $real @ V_y2_dot_0 @ ( 'cons/2' @ $real @ V_z1_dot_0 @ ( 'cons/2' @ $real @ V_z2_dot_0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) )
      & ( V_x1_dot_0 = V_x2_dot_0 )
      & ( V_y1_dot_0 = V_y2_dot_0 )
      & ( V_z1_dot_0 = V_z2_dot_0 ) ) ),
    answer_to(p2_question,[])).

