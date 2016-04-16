%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1970, Problem 4
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-28
%%
%% <PROBLEM-TEXT>
%% Find the set of all positive integers $n$ with the property that the set
%% $\{n, n + 1, n + 2, n + 3, n + 4, n + 5\}$ can be partitioned into two sets such
%% that the product of the numbers in one set equals the product of the numbers
%% in the other set.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   67 (   6 equality;  18 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :   56 (   0   ~;   2   |;   3   &;  51   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   3   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    1 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
      ? [V_S: ( 'SetOf' @ $int ),V_S1: ( 'SetOf' @ $int ),V_S2: ( 'SetOf' @ $int )] :
        ( ( V_S
          = ( 'set-by-def/1' @ $int
            @ ^ [V_x: $int] :
                ( 'member/2' @ $int @ V_x @ ( 'cons/2' @ $int @ V_n @ ( 'cons/2' @ $int @ ( $sum @ V_n @ 1 ) @ ( 'cons/2' @ $int @ ( $sum @ V_n @ 2 ) @ ( 'cons/2' @ $int @ ( $sum @ V_n @ 3 ) @ ( 'cons/2' @ $int @ ( $sum @ V_n @ 4 ) @ ( 'cons/2' @ $int @ ( $sum @ V_n @ 5 ) @ ( 'nil/0' @ $int ) ) ) ) ) ) ) ) ) )
        & ( ( 'set-union/2' @ $int @ V_S1 @ V_S2 )
          = V_S )
        & ( 'is-empty/1' @ $int @ ( 'set-intersection/2' @ $int @ V_S1 @ V_S2 ) )
        & ( ( 'int.product/1' @ ( 'int.set-to-list/1' @ V_S1 ) )
          = ( 'int.product/1' @ ( 'int.set-to-list/1' @ V_S2 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: $int] :
      ( ( V_n_dot_0 = 2 )
      | ( V_n_dot_0 = 3 )
      | ( V_n_dot_0 = 5 ) ) ),
    answer_to(p_question,[])).

