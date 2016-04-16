%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE039
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   30 (   0 equality;  15 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   29 (   0   ~;   0   |;   6   &;  22   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    2 (   0 pred;    2 func;    0 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_a: $int,V_b: $int,V_c: $int] :
      ( ( ( 'int.is-natural-number/1' @ V_a )
        & ( 'int.is-natural-number/1' @ V_b )
        & ( 'int.is-natural-number/1' @ V_c )
        & ( 'int.is-even-number/1' @ ( $sum @ ( $sum @ V_a @ V_b ) @ V_c ) )
        & ( 'int.is-even-number/1' @ ( $sum @ ( $sum @ ( $product @ V_a @ V_b ) @ ( $product @ V_b @ V_c ) ) @ ( $product @ V_c @ V_a ) ) ) )
     => ( ( 'int.is-even-number/1' @ V_a )
        & ( 'int.is-even-number/1' @ V_b )
        & ( 'int.is-even-number/1' @ V_c ) ) ) )).

