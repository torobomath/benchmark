%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1997, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Find all pairs $(a, b)$ of integers $a$, $b ¥ge 1$ that satisfy the equation
%% ¥[
%% a^{b^2} = b^a.
%% ¥]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   58 (   5 equality;  12 variable)
%            Maximal formula depth :   13 (  11 average)
%            Number of connectives :   48 (   0   ~;   2   |;   3   &;  43   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   1 pred;    0 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_ab: ( 'ListOf' @ $int )] :
      ? [V_a: $int,V_b: $int] :
        ( ( $lesseq @ 1 @ V_a )
        & ( $lesseq @ 1 @ V_b )
        & ( ( 'int.^/2' @ V_a @ ( 'int.^/2' @ V_b @ 2 ) )
          = ( 'int.^/2' @ V_b @ V_a ) )
        & ( V_ab
          = ( 'cons/2' @ $int @ V_a @ ( 'cons/2' @ $int @ V_b @ ( 'nil/0' @ $int ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ $int @ 1 @ ( 'cons/2' @ $int @ 1 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_ab_dot_0
        = ( 'cons/2' @ $int @ 16 @ ( 'cons/2' @ $int @ 2 @ ( 'nil/0' @ $int ) ) ) )
      | ( V_ab_dot_0
        = ( 'cons/2' @ $int @ 27 @ ( 'cons/2' @ $int @ 3 @ ( 'nil/0' @ $int ) ) ) ) ) ),
    answer_to(p_question,[])).

