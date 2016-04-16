%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1968, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-28
%%
%% <PROBLEM-TEXT>
%% Find all natural numbers $x$ such that the product of their digits
%% (in decimal notation) is equal to $x^2 - 10x - 22$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   21 (   2 equality;   5 variable)
%            Maximal formula depth :   11 (   7 average)
%            Number of connectives :   15 (   0   ~;   0   |;   1   &;  14   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    2 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( ( $greater @ V_x @ 0 )
        & ( ( $difference @ ( $difference @ ( 'int.^/2' @ V_x @ 2 ) @ ( $product @ 10 @ V_x ) ) @ 22 )
          = ( 'int.product/1' @ ( 'int.int2decimal/1' @ V_x ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: $int] : ( V_x_dot_0 = 12 ) ),
    answer_to(p_question,[])).

