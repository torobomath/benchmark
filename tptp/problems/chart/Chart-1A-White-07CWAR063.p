%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR063
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   21 (   1 equality;   8 variable)
%            Maximal formula depth :   13 (  13 average)
%            Number of connectives :   18 (   0   ~;   1   |;   3   &;  13   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   0   :)
%            Number of variables   :    3 (   0 sgn;   2   !;   1   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a: 'Z',V_b: 'Z'] :
      ( ( ( 'int.is-integer/1' @ V_a )
        & ( 'int.is-integer/1' @ V_b )
        & ? [V_c: 'Z'] :
            ( ( 'int.is-integer/1' @ V_c )
            & ( ( 'int.+/2' @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) )
              = ( 'int.^/2' @ V_c @ 2 ) ) ) )
     => ( ( 'int.is-even-number/1' @ V_a )
        | ( 'int.is-even-number/1' @ V_b ) ) ) )).
