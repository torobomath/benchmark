%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR070
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   39 (   0 equality;  11 variable)
%            Maximal formula depth :   12 (  10 average)
%            Number of connectives :   36 (   0   ~;   0   |;   0   &;  33   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    2 func;    4 numbers)

include('axioms.ax').

thf(p11,conjecture,(
    ! [V_n: $int] :
      ( ( $is_int @ V_n )
     => ( 'int.is-divisible-by/2' @ ( $product @ V_n @ ( $sum @ V_n @ 1 ) ) @ 2 ) ) )).

thf(p12,conjecture,(
    ! [V_n: $int] :
      ( ( $is_int @ V_n )
     => ( 'int.is-divisible-by/2' @ ( $product @ ( $product @ V_n @ ( $sum @ V_n @ 1 ) ) @ ( $sum @ V_n @ 2 ) ) @ 6 ) ) )).

thf(p2,conjecture,(
    ! [V_n: $int] :
      ( ( $is_int @ V_n )
     => ( 'int.is-divisible-by/2' @ ( $sum @ ( $sum @ ( $product @ 2 @ ( 'int.^/2' @ V_n @ 3 ) ) @ ( $product @ 3 @ ( 'int.^/2' @ V_n @ 2 ) ) ) @ V_n ) @ 6 ) ) )).

