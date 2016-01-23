%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP135
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   46 (   2 equality;  17 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :   40 (   0   ~;   2   |;   8   &;  28   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    5 (   0 sgn;   5   !;   0   ?;   0   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_n: 'Z'] :
      ( ( ( 'int.is-integer/1' @ V_n )
        & ( 'int.is-odd-number/1' @ V_n ) )
     => ( 1
        = ( 'int.mod/2' @ ( 'int.^/2' @ V_n @ 2 ) @ 8 ) ) ) )).

thf(p2,conjecture,(
    ! [V_x: 'Z',V_y: 'Z',V_z: 'Z',V_w: 'Z'] :
      ( ( ( 'int.is-natural-number/1' @ V_x )
        & ( 'int.is-natural-number/1' @ V_y )
        & ( 'int.is-natural-number/1' @ V_z )
        & ( 'int.is-natural-number/1' @ V_w )
        & ( ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_x @ 2 ) @ ( 'int.^/2' @ V_y @ 2 ) ) @ ( 'int.^/2' @ V_z @ 2 ) )
          = ( 'int.^/2' @ V_w @ 2 ) ) )
     => ( ( ( 'int.is-even-number/1' @ V_x )
          & ( 'int.is-even-number/1' @ V_y ) )
        | ( ( 'int.is-even-number/1' @ V_y )
          & ( 'int.is-even-number/1' @ V_z ) )
        | ( ( 'int.is-even-number/1' @ V_z )
          & ( 'int.is-even-number/1' @ V_x ) ) ) ) )).
