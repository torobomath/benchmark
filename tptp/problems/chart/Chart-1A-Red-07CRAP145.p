%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP145
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   88 (   2 equality;  30 variable)
%            Maximal formula depth :   18 (  18 average)
%            Number of connectives :   87 (   5   ~;   4   |;  16   &;  60   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   1 pred;    1 func;    3 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_a: $int,V_b: $int,V_c: $int,V_d: $int] :
      ( ( ( $is_int @ V_a )
        & ( $is_int @ V_b )
        & ( $is_int @ V_c )
        & ( $is_int @ V_d )
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

thf(p2,conjecture,(
    ! [V_a: $int,V_b: $int,V_c: $int,V_d: $int] :
      ( ( ( $is_int @ V_a )
        & ( $is_int @ V_b )
        & ( $is_int @ V_c )
        & ( $is_int @ V_d )
        & ( ( $sum @ ( $sum @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) @ ( 'int.^/2' @ V_c @ 2 ) )
          = ( 'int.^/2' @ V_d @ 2 ) )
        & ~ ( 'int.is-divisible-by/2' @ V_d @ 6 ) )
     => ( ( 'int.is-divisible-by/2' @ V_a @ 6 )
        | ( 'int.is-divisible-by/2' @ V_b @ 6 )
        | ( 'int.is-divisible-by/2' @ V_c @ 6 ) ) ) )).

