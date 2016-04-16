%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1976, Problem 4
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-26
%%
%% <PROBLEM-TEXT>
%% Determine, with proof, the largest number which is the product of positive
%% integers whose sum is $1976$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   27 (   3 equality;   7 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :   20 (   0   ~;   0   |;   2   &;  18   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   1   ?;   4   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    1 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_M: $int] :
        ( 'int.maximum/2'
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_p: $int] :
            ? [V_ns: ( 'ListOf' @ $int )] :
              ( ( 'all/2' @ $int
                @ ^ [V_n: $int] :
                    ( $greater @ V_n @ 0 )
                @ V_ns )
              & ( 1976
                = ( 'int.sum/1' @ V_ns ) )
              & ( V_p
                = ( 'int.product/1' @ V_ns ) ) ) )
        @ V_M ) )).

thf(p_answer,answer,(
    ^ [V_M_dot_0: $int] :
      ( V_M_dot_0
      = ( $product @ 2 @ ( 'int.^/2' @ 3 @ 658 ) ) ) ),
    answer_to(p_question,[])).

