%% DOMAIN:    Exponential and Logarithm Function
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P235
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   76 (   4 equality;  20 variable)
%            Maximal formula depth :   19 (  11 average)
%            Number of connectives :   64 (   0   ~;   0   |;   4   &;  60   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   0   ?;  10   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( ( 'int.is-natural-number/1' @ V_n )
        & ( 'minimum/3' @ $int
          @ ( 'set-by-def/1' @ $int
            @ ^ [V_n0: $int] :
                ( ( 'int.is-natural-number/1' @ V_n0 )
                & ( 1
                  = ( 'int.^/2' @ ( $sum @ ( $sum @ ( 'int.^/2' @ V_n0 @ 2 ) @ ( $product @ -3 @ V_n0 ) ) @ 3 ) @ ( $sum @ ( $sum @ ( 'int.^/2' @ V_n0 @ 2 ) @ ( $product @ -8 @ V_n0 ) ) @ 15 ) ) ) ) )
          @ ^ [V_lhs: $int,V_rhs: $int] :
              ( $less @ V_lhs @ V_rhs )
          @ V_n ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( ( 'int.is-natural-number/1' @ V_n )
        & ( 'maximum/3' @ $int
          @ ( 'set-by-def/1' @ $int
            @ ^ [V_n0: $int] :
                ( ( 'int.is-natural-number/1' @ V_n0 )
                & ( 1
                  = ( 'int.^/2' @ ( $sum @ ( $sum @ ( 'int.^/2' @ V_n0 @ 2 ) @ ( $product @ -3 @ V_n0 ) ) @ 3 ) @ ( $sum @ ( $sum @ ( 'int.^/2' @ V_n0 @ 2 ) @ ( $product @ -8 @ V_n0 ) ) @ 15 ) ) ) ) )
          @ ^ [V_lhs: $int,V_rhs: $int] :
              ( $less @ V_lhs @ V_rhs )
          @ V_n ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 1 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 5 ) ),
    answer_to(p2_question,[])).

