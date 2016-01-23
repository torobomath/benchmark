%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP138
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   17 (   1 equality;   7 variable)
%            Maximal formula depth :   13 (  13 average)
%            Number of connectives :   15 (   1   ~;   0   |;   2   &;  11   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   0   :)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a: 'Z',V_b: 'Z',V_n: 'Z'] :
      ( ( ( 'int.is-odd-number/1' @ V_a )
        & ( 'int.is-odd-number/1' @ V_b )
        & ( 'int.is-integer/1' @ V_n ) )
     => ( 0
       != ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_n @ 2 ) @ ( 'int.*/2' @ V_a @ V_n ) ) @ V_b ) ) ) )).
