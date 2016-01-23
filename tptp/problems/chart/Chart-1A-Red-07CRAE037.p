%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE037
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   47 (   2 equality;  14 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   41 (   0   ~;   0   |;   4   &;  35   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :    4 (   0 sgn;   4   !;   0   ?;   0   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_n: 'Z',V_S: 'Z'] :
      ( ( ( 'int.is-integer/1' @ V_n )
        & ( V_S
          = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ ( 'int.-/2' @ V_n @ 1 ) @ 3 ) @ ( 'int.^/2' @ V_n @ 3 ) ) @ ( 'int.^/2' @ ( 'int.+/2' @ V_n @ 1 ) @ 3 ) ) )
        & ( 'int.is-even-number/1' @ V_S ) )
     => ( 'int.is-even-number/1' @ V_n ) ) )).

thf(p2,conjecture,(
    ! [V_n: 'Z',V_S: 'Z'] :
      ( ( ( 'int.is-integer/1' @ V_n )
        & ( 'int.is-even-number/1' @ V_S )
        & ( V_S
          = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ ( 'int.-/2' @ V_n @ 1 ) @ 3 ) @ ( 'int.^/2' @ V_n @ 3 ) ) @ ( 'int.^/2' @ ( 'int.+/2' @ V_n @ 1 ) @ 3 ) ) ) )
     => ( 'int.is-divisible-by/2' @ V_S @ 36 ) ) )).
