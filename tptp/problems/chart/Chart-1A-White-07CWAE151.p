%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A White Book, Problem 07CWAE151
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   44 (   1 equality;  27 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   41 (   0   ~;   0   |;   5   &;  35   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   0   :)
%            Number of variables   :    5 (   0 sgn;   5   !;   0   ?;   0   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point'] :
      ( ( ( '2d.is-acute-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.on/2' @ V_D @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_E @ ( '2d.line/2' @ V_A @ V_C ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_B @ V_E ) @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_C @ V_D ) @ ( '2d.angle/3' @ V_B @ V_C @ V_A ) )
        & ( '2d.parallel/2' @ ( '2d.line/2' @ V_D @ V_E ) @ ( '2d.line/2' @ V_B @ V_C ) ) )
     => ( ( '2d.distance/2' @ V_A @ V_B )
        = ( '2d.distance/2' @ V_A @ V_C ) ) ) )).
