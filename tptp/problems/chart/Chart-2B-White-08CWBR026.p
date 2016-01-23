%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B White Book, Problem 08CWBR026
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   43 (   4 equality;  20 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   34 (   0   ~;   0   |;   4   &;  29   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_L: '2d.Point',V_M: '2d.Point',V_N: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
      ( ( ( V_L
          = ( '2d.internally-dividing-point/3' @ V_B @ V_C @ ( '//2' @ 3 @ 5 ) ) )
        & ( V_M
          = ( '2d.internally-dividing-point/3' @ V_C @ V_A @ ( '//2' @ 3 @ 5 ) ) )
        & ( V_N
          = ( '2d.internally-dividing-point/3' @ V_A @ V_B @ ( '//2' @ 3 @ 5 ) ) )
        & ( '2d.is-right/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) )
        & ( ( '2d.distance/2' @ V_A @ V_B )
          = ( '2d.distance/2' @ V_C @ V_A ) ) )
     => ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_A @ V_L ) @ ( '2d.line/2' @ V_M @ V_N ) ) ) )).
