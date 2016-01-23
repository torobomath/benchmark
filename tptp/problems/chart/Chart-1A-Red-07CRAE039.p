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
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    5 (   0   :)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a: 'Z',V_b: 'Z',V_c: 'Z'] :
      ( ( ( 'int.is-natural-number/1' @ V_a )
        & ( 'int.is-natural-number/1' @ V_b )
        & ( 'int.is-natural-number/1' @ V_c )
        & ( 'int.is-even-number/1' @ ( 'int.+/2' @ ( 'int.+/2' @ V_a @ V_b ) @ V_c ) )
        & ( 'int.is-even-number/1' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.*/2' @ V_a @ V_b ) @ ( 'int.*/2' @ V_b @ V_c ) ) @ ( 'int.*/2' @ V_c @ V_a ) ) ) )
     => ( ( 'int.is-even-number/1' @ V_a )
        & ( 'int.is-even-number/1' @ V_b )
        & ( 'int.is-even-number/1' @ V_c ) ) ) )).
