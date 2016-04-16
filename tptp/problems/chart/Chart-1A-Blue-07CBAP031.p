%% DOMAIN:    Enumerative Combinatorics
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP031
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   24 (   2 equality;   5 variable)
%            Maximal formula depth :   12 (   8 average)
%            Number of connectives :   18 (   0   ~;   0   |;   1   &;  17   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
        ( ( 0
          = ( $sum @ ( $sum @ ( $product @ 6 @ ( 'int.combination/2' @ V_n @ 3 ) ) @ ( $product @ ( $uminus @ V_n ) @ ( 'int.permutation/2' @ V_n @ 2 ) ) ) @ 144 ) )
        & ( $greatereq @ V_n @ 3 ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: $int] : ( V_n_dot_0 = 9 ) ),
    answer_to(p_question,[])).

