%% DOMAIN:    Algebra, proofs of inequalities
%% THEORY:    RCF+PA
%% SOURCE:    International Mathematical Olympiad, 1971, Problem 1
%% SCORE:     5
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% Prove that the following assertion is true for $n = 3$ and $n = 5$, and that it
%% is false for every other natural number $n > 2$:
%% If $a_1, a_2, \ldots, a_n$ are arbitrary real numbers, then
%% $(a_1-a_2)(a_1-a_3) \cdots (a_1-a_n) + (a_2-a_1)(a_2-a_3) \cdots (a_2-a_n)
%% + \cdots +(a_n-a_1)(a_n-a_2)\cdots(a_n-a_{n-1}) \geq 0$
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  139 (   2 equality;  60 variable)
%            Maximal formula depth :   19 (  16 average)
%            Number of connectives :  136 (   3   ~;   0   |;   2   &; 130   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   9   !;   0   ?;   2   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_a1: $real,V_a2: $real,V_a3: $real] :
      ( $greatereq @ ( $sum @ ( $product @ ( $difference @ V_a1 @ V_a2 ) @ ( $difference @ V_a1 @ V_a3 ) ) @ ( $sum @ ( $product @ ( $difference @ V_a2 @ V_a1 ) @ ( $difference @ V_a2 @ V_a3 ) ) @ ( $product @ ( $difference @ V_a3 @ V_a1 ) @ ( $difference @ V_a3 @ V_a2 ) ) ) ) @ 0.0 ) )).

thf(p2,conjecture,(
    ! [V_a1: $real,V_a2: $real,V_a3: $real,V_a4: $real,V_a5: $real] :
      ( $greatereq @ ( $sum @ ( $product @ ( $difference @ V_a1 @ V_a2 ) @ ( $product @ ( $difference @ V_a1 @ V_a3 ) @ ( $product @ ( $difference @ V_a1 @ V_a4 ) @ ( $difference @ V_a1 @ V_a5 ) ) ) ) @ ( $sum @ ( $product @ ( $difference @ V_a2 @ V_a1 ) @ ( $product @ ( $difference @ V_a2 @ V_a3 ) @ ( $product @ ( $difference @ V_a2 @ V_a4 ) @ ( $difference @ V_a2 @ V_a5 ) ) ) ) @ ( $sum @ ( $product @ ( $difference @ V_a3 @ V_a1 ) @ ( $product @ ( $difference @ V_a3 @ V_a2 ) @ ( $product @ ( $difference @ V_a3 @ V_a4 ) @ ( $difference @ V_a3 @ V_a5 ) ) ) ) @ ( $sum @ ( $product @ ( $difference @ V_a4 @ V_a1 ) @ ( $product @ ( $difference @ V_a4 @ V_a2 ) @ ( $product @ ( $difference @ V_a4 @ V_a3 ) @ ( $difference @ V_a4 @ V_a5 ) ) ) ) @ ( $product @ ( $difference @ V_a5 @ V_a1 ) @ ( $product @ ( $difference @ V_a5 @ V_a2 ) @ ( $product @ ( $difference @ V_a5 @ V_a3 ) @ ( $difference @ V_a5 @ V_a4 ) ) ) ) ) ) ) ) @ 0.0 ) )).

thf(p3,conjecture,(
    ~ ( ! [V_as: ( 'ListOf' @ $real )] :
          ( ( ( $less @ 2 @ ( 'list-len/1' @ $real @ V_as ) )
            & ( ( 'list-len/1' @ $real @ V_as )
             != 3 )
            & ( ( 'list-len/1' @ $real @ V_as )
             != 5 ) )
         => ( $greatereq
            @ ( 'sum/1'
              @ ( 'map/2' @ $real @ $real
                @ ^ [V_b: $real] :
                    ( 'product/1'
                    @ ( 'map/2' @ $real @ $real
                      @ ^ [V_c: $real] :
                          ( $difference @ V_b @ V_c )
                      @ ( 'delete/2' @ $real @ V_b @ V_as ) ) )
                @ V_as ) )
            @ 0.0 ) ) ) )).

