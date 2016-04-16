%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP127
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   65 (   1 equality;  22 variable)
%            Maximal formula depth :   22 (  22 average)
%            Number of connectives :   66 (   4   ~;   2   |;  15   &;  44   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   4   !;   0   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   2 pred;    1 func;    3 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_a: $int,V_b: $int,V_c: $int,V_d: $int] :
      ( ( ( $is_int @ V_a )
        & ( $less @ 0 @ V_a )
        & ( $is_int @ V_b )
        & ( $less @ 0 @ V_b )
        & ( $is_int @ V_c )
        & ( $less @ 0 @ V_c )
        & ( $is_int @ V_d )
        & ( $less @ 0 @ V_d )
        & ( ( $sum @ ( $sum @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) @ ( 'int.^/2' @ V_c @ 2 ) )
          = ( 'int.^/2' @ V_d @ 2 ) )
        & ~ ( 'int.is-divisible-by/2' @ V_d @ 3 ) )
     => ( ( ~ ( 'int.is-divisible-by/2' @ V_a @ 3 )
          & ( 'int.is-divisible-by/2' @ V_b @ 3 )
          & ( 'int.is-divisible-by/2' @ V_c @ 3 ) )
        | ( ( 'int.is-divisible-by/2' @ V_a @ 3 )
          & ~ ( 'int.is-divisible-by/2' @ V_b @ 3 )
          & ( 'int.is-divisible-by/2' @ V_c @ 3 ) )
        | ( ( 'int.is-divisible-by/2' @ V_a @ 3 )
          & ( 'int.is-divisible-by/2' @ V_b @ 3 )
          & ~ ( 'int.is-divisible-by/2' @ V_c @ 3 ) ) ) ) )).

