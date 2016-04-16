%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAE014
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   25 (   1 equality;   8 variable)
%            Maximal formula depth :   13 (  13 average)
%            Number of connectives :   23 (   1   ~;   0   |;   3   &;  18   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   1 pred;    1 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_m: $int,V_n: $int,V_k: $int] :
      ( ( ( 'int.is-natural-number/1' @ V_m )
        & ( 'int.is-natural-number/1' @ V_n )
        & ( $less @ V_m @ V_n )
        & ( 'int.is-natural-number/1' @ V_k ) )
     => ( ( '^/2' @ ( $to_real @ 2 ) @ ( $to_real @ V_k ) )
       != ( 'seq.sum-from-to/3' @ ( 'seq.arith-seq/2' @ ( $to_real @ 1 ) @ ( $to_real @ 1 ) ) @ ( 'seq.index/1' @ V_m ) @ ( 'seq.index/1' @ V_n ) ) ) ) )).

