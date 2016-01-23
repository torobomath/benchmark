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
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   0   :)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_a: 'Z',V_b: 'Z',V_c: 'Z',V_d: 'Z'] :
      ( ( ( 'int.is-integer/1' @ V_a )
        & ( 'int.is-integer/1' @ V_b )
        & ( 'int.is-integer/1' @ V_c )
        & ( 'int.is-integer/1' @ V_d )
        & ( ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) @ ( 'int.^/2' @ V_c @ 2 ) )
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
    ! [V_a: 'Z',V_b: 'Z',V_c: 'Z',V_d: 'Z'] :
      ( ( ( 'int.is-integer/1' @ V_a )
        & ( 'int.is-integer/1' @ V_b )
        & ( 'int.is-integer/1' @ V_c )
        & ( 'int.is-integer/1' @ V_d )
        & ( ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) @ ( 'int.^/2' @ V_c @ 2 ) )
          = ( 'int.^/2' @ V_d @ 2 ) )
        & ~ ( 'int.is-divisible-by/2' @ V_d @ 6 ) )
     => ( ( 'int.is-divisible-by/2' @ V_a @ 6 )
        | ( 'int.is-divisible-by/2' @ V_b @ 6 )
        | ( 'int.is-divisible-by/2' @ V_c @ 6 ) ) ) )).
