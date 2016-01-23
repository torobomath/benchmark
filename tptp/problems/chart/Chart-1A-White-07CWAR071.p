%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAR071
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  107 (   6 equality;  44 variable)
%            Maximal formula depth :   19 (  16 average)
%            Number of connectives :   93 (   0   ~;   0   |;  10   &;  81   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :    7 (   0 sgn;   7   !;   0   ?;   0   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( 2
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( 4
          = ( '2d.distance/2' @ V_B @ V_C ) )
        & ( 3
          = ( '2d.distance/2' @ V_C @ V_A ) ) )
     => ( ( '</2' @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) )
        & ( '</2' @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) @ ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_t: 'R'] :
      ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
        & ( V_t
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) )
        & ( '</2' @ ( '//2' @ 1 @ 2 ) @ V_t )
        & ( '</2' @ V_t @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) )
        & ( 0
          = ( '+/2' @ ( '*/2' @ 64 @ ( '^/2' @ V_t @ 6 ) ) @ ( '+/2' @ ( '*/2' @ -96 @ ( '^/2' @ V_t @ 4 ) ) @ ( '+/2' @ ( '*/2' @ 36 @ ( '^/2' @ V_t @ 2 ) ) @ -3 ) ) ) )
        & ( ( '//2' @ 1 @ 2 )
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) )
     => ( ( '</2' @ ( '2d.distance/2' @ V_B @ V_C ) @ ( '2d.distance/2' @ V_C @ V_A ) )
        & ( '</2' @ ( '2d.distance/2' @ V_C @ V_A ) @ ( '2d.distance/2' @ V_A @ V_B ) ) ) ) )).
