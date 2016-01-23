%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CRBP090
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   30 (   3 equality;  20 variable)
%            Maximal formula depth :   18 (  18 average)
%            Number of connectives :   23 (   0   ~;   0   |;   2   &;  20   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    3 (   0   :)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Point',V_G: '3d.Point',V_H: '3d.Point'] :
      ( ( '3d.is-parallelopiped/8' @ V_A @ V_B @ V_C @ V_D @ V_E @ V_F @ V_G @ V_H )
     => ( ( ( '3d.midpoint-of/2' @ V_A @ V_G )
          = ( '3d.midpoint-of/2' @ V_B @ V_H ) )
        & ( ( '3d.midpoint-of/2' @ V_A @ V_G )
          = ( '3d.midpoint-of/2' @ V_C @ V_E ) )
        & ( ( '3d.midpoint-of/2' @ V_A @ V_G )
          = ( '3d.midpoint-of/2' @ V_D @ V_F ) ) ) ) )).
