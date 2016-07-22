%% DOMAIN:    Number Sequences
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE209
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   30 (   0 equality;   7 variable)
%            Maximal formula depth :   11 (  10 average)
%            Number of connectives :   28 (   0   ~;   0   |;   0   &;  26   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :    2 (   0 sgn;   2   !;   0   ?;   0   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    3 func;    3 numbers)

include('axioms.ax').

thf(p2,conjecture,(
    ! [V_n: $int] :
      ( ( $lesseq @ 2 @ V_n )
     => ( $greater @ ( 'rat.^/2' @ ( $sum @ ( $to_rat @ 1 ) @ ( $quotient @ ( $to_rat @ 1 ) @ ( $to_rat @ V_n ) ) ) @ V_n ) @ ( $to_rat @ 2 ) ) ) )).

thf(p3,conjecture,(
    ! [V_n: $int] :
      ( ( $lesseq @ 6 @ V_n )
     => ( $greater @ ( 'rat.^/2' @ ( $quotient @ ( $to_rat @ V_n ) @ ( $to_rat @ 2 ) ) @ V_n ) @ ( $to_rat @ ( 'int.factorial/1' @ V_n ) ) ) ) )).

