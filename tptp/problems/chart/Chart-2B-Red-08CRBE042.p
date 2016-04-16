%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CRBE042
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   30 (   1 equality;  10 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   27 (   0   ~;   0   |;   4   &;  22   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   2   !;   2   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   1 pred;    3 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_m: $int,V_k: $int] :
      ( ( ( 'int.is-natural-number/1' @ V_m )
        & ( 'int.is-natural-number/1' @ V_k ) )
     => ? [V_l: $int,V_h: $int] :
          ( ( 'int.is-natural-number/1' @ V_l )
          & ( 'int.is-natural-number/1' @ V_h )
          & ( $less @ V_l @ V_h )
          & ( ( $to_real @ ( $product @ V_m @ ( $sum @ ( $product @ 2 @ V_k ) @ 1 ) ) )
            = ( 'seq.sum-from-to/3' @ ( 'seq.arith-seq/2' @ ( $to_real @ 1 ) @ ( $to_real @ 1 ) ) @ ( 'seq.index/1' @ V_l ) @ ( 'seq.index/1' @ V_h ) ) ) ) ) )).

