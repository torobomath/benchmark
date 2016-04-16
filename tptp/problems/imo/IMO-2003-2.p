%% DOMAIN:    Algebra, quadratic equations
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 2003, Problem 2
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-19
%%
%% <PROBLEM-TEXT>
%% Find all pairs (m, n) of positive integers such that
%% m^2 / (2 m n^2 - n^3 + 1)
%% is a positive integer.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   98 (   4 equality;  25 variable)
%            Maximal formula depth :   17 (  16 average)
%            Number of connectives :   90 (   0   ~;   2   |;   5   &;  83   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    4 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_mn: ( 'ListOf' @ $int )] :
      ? [V_m: $int,V_n: $int] :
        ( ( V_mn
          = ( 'cons/2' @ $int @ V_m @ ( 'cons/2' @ $int @ V_n @ ( 'nil/0' @ $int ) ) ) )
        & ( $greater @ V_m @ 0 )
        & ( $greater @ V_n @ 0 )
        & ( 'int.is-divisible-by/2' @ ( 'int.^/2' @ V_m @ 2 ) @ ( $sum @ ( $product @ 2 @ ( $product @ V_m @ ( $product @ V_n @ V_n ) ) ) @ ( $sum @ ( $uminus @ ( 'int.^/2' @ V_n @ 3 ) ) @ 1 ) ) )
        & ( $greater @ ( $sum @ ( $product @ 2 @ ( $product @ V_m @ ( $product @ V_n @ V_n ) ) ) @ ( $sum @ ( $uminus @ ( 'int.^/2' @ V_n @ 3 ) ) @ 1 ) ) @ 0 ) ) )).

thf(p_answer,answer,(
    ^ [V_mn_dot_0: ( 'ListOf' @ $int )] :
    ? [V_l: $int] :
      ( ( $greater @ V_l @ 0 )
      & ( ( V_mn_dot_0
          = ( 'cons/2' @ $int @ ( $product @ 2 @ V_l ) @ ( 'cons/2' @ $int @ V_l @ ( 'nil/0' @ $int ) ) ) )
        | ( V_mn_dot_0
          = ( 'cons/2' @ $int @ V_l @ ( 'cons/2' @ $int @ ( $product @ 2 @ V_l ) @ ( 'nil/0' @ $int ) ) ) )
        | ( V_mn_dot_0
          = ( 'cons/2' @ $int @ ( $difference @ ( $product @ 8 @ ( 'int.^/2' @ V_l @ 4 ) ) @ V_l ) @ ( 'cons/2' @ $int @ ( $product @ 2 @ V_l ) @ ( 'nil/0' @ $int ) ) ) ) ) ) ),
    answer_to(p_question,[])).

