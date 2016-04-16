%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP118
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   48 (   0 equality;  18 variable)
%            Maximal formula depth :   12 (  11 average)
%            Number of connectives :   46 (   1   ~;   1   |;   8   &;  33   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    1 func;    1 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_a: $int,V_b: $int] :
      ( ( ( 'int.is-natural-number/1' @ V_a )
        & ( 'int.is-natural-number/1' @ V_b )
        & ( 'int.is-odd-number/1' @ V_a )
        & ( 'int.is-odd-number/1' @ V_b ) )
     => ( 'int.is-even-number/1' @ ( $sum @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) ) ) )).

thf(p2,conjecture,(
    ~ ( ! [V_a: $int,V_b: $int] :
          ( ( ( 'int.is-natural-number/1' @ V_a )
            & ( 'int.is-natural-number/1' @ V_b )
            & ( 'int.is-even-number/1' @ ( $sum @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) ) )
         => ( ( 'int.is-odd-number/1' @ V_a )
            & ( 'int.is-odd-number/1' @ V_b ) ) ) ) )).

thf(p3,conjecture,(
    ! [V_a: $int,V_b: $int] :
      ( ( ( 'int.is-natural-number/1' @ V_a )
        & ( 'int.is-natural-number/1' @ V_b )
        & ( 'int.is-odd-number/1' @ ( $sum @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) ) )
     => ( ( 'int.is-odd-number/1' @ V_a )
        | ( 'int.is-odd-number/1' @ V_b ) ) ) )).

