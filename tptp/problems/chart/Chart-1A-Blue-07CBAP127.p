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
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :)
%            Number of variables   :    4 (   0 sgn;   4   !;   0   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a: 'Z',V_b: 'Z',V_c: 'Z',V_d: 'Z'] :
      ( ( ( 'int.is-integer/1' @ V_a )
        & ( 'int.</2' @ 0 @ V_a )
        & ( 'int.is-integer/1' @ V_b )
        & ( 'int.</2' @ 0 @ V_b )
        & ( 'int.is-integer/1' @ V_c )
        & ( 'int.</2' @ 0 @ V_c )
        & ( 'int.is-integer/1' @ V_d )
        & ( 'int.</2' @ 0 @ V_d )
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
