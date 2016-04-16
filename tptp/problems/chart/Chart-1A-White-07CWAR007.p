%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR007
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   33 (   3 equality;  12 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :   25 (   0   ~;   0   |;   4   &;  21   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   3   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   0 pred;    2 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( 'int.is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_m: $int] :
            ? [V_x: $int,V_y: $int,V_z: $int] :
              ( ( 'int.is-natural-number/1' @ V_x )
              & ( 'int.is-natural-number/1' @ V_y )
              & ( 'int.is-natural-number/1' @ V_z )
              & ( 6
                = ( $sum @ ( $sum @ V_x @ V_y ) @ V_z ) )
              & ( V_m
                = ( $sum @ ( $sum @ ( $product @ 100 @ V_x ) @ ( $product @ 10 @ V_y ) ) @ V_z ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 10 ) ),
    answer_to(p_question,[])).

