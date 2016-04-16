%% DOMAIN:    Integration and its Applications
%% THEORY:    PA+trans
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3R152
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   45 (   3 equality;  10 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :   37 (   0   ~;   0   |;   2   &;  35   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   0 pred;    6 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_lim: $real] :
      ? [V_f: ( $real > $real ),V_S: ( $int > $real )] :
        ( ( V_f
          = ( ^ [V_x: $real] :
                ( $product @ ( 'exp/1' @ ( $uminus @ V_x ) ) @ ( 'sin/1' @ V_x ) ) ) )
        & ( V_S
          = ( ^ [V_n: $int] :
                ( 'integral/3' @ V_f @ ( $product @ ( $sum @ ( $product @ 2.0 @ ( $to_real @ V_n ) ) @ 0.0 ) @ 'Pi/0' ) @ ( $product @ ( $sum @ ( $product @ 2.0 @ ( $to_real @ V_n ) ) @ 1.0 ) @ 'Pi/0' ) ) ) )
        & ( 'seq.is-infinite-sum-of/2' @ V_lim @ ( 'seq.seq/1' @ V_S ) ) ) )).

thf(p_answer,answer,(
    ^ [V_lim_dot_0: $real] :
      ( V_lim_dot_0
      = ( $quotient @ ( 'exp/1' @ 'Pi/0' ) @ ( $product @ 2.0 @ ( $difference @ ( 'exp/1' @ 'Pi/0' ) @ 1.0 ) ) ) ) ),
    answer_to(p_question,[])).

