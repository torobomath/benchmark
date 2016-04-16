%% DOMAIN:    Algebra, inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2006, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-22
%%
%% <PROBLEM-TEXT>
%% Determine the least real number M such that the inequality
%% | ab(a^2-b^2) + bc(b^2-c^2) + ca(c^2-a^2) | <= M(a^2+b^2+c^2)^2
%% holds for all real numbers a, b and c.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   66 (   1 equality;  18 variable)
%            Maximal formula depth :   22 (  14 average)
%            Number of connectives :   62 (   0   ~;   0   |;   0   &;  62   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   3   !;   0   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    4 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_minM: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_M: $real] :
            ! [V_a: $real,V_b: $real,V_c: $real] :
              ( $lesseq @ ( 'abs/1' @ ( $sum @ ( $product @ V_a @ ( $product @ V_b @ ( $difference @ ( '^/2' @ V_a @ 2.0 ) @ ( '^/2' @ V_b @ 2.0 ) ) ) ) @ ( $sum @ ( $product @ V_b @ ( $product @ V_c @ ( $difference @ ( '^/2' @ V_b @ 2.0 ) @ ( '^/2' @ V_c @ 2.0 ) ) ) ) @ ( $product @ V_a @ ( $product @ V_c @ ( $difference @ ( '^/2' @ V_c @ 2.0 ) @ ( '^/2' @ V_a @ 2.0 ) ) ) ) ) ) ) @ ( $product @ V_M @ ( '^/2' @ ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( $sum @ ( '^/2' @ V_b @ 2.0 ) @ ( '^/2' @ V_c @ 2.0 ) ) ) @ 2.0 ) ) ) )
        @ V_minM ) )).

thf(p_answer,answer,(
    ^ [V_minM_dot_0: $real] :
      ( V_minM_dot_0
      = ( $product @ ( $quotient @ 9.0 @ 32.0 ) @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(p_question,[])).

