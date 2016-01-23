%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2003, Problem 4
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-21
%%
%% <PROBLEM-TEXT>
%% ABCD is cyclic. The feet of the perpendicular from D to the
%% lines AB, BC, CA are P, Q, R respectively. Show that the angle bisectors of
%% ABC and CDA meet on the line AC iff RP = RQ.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  100 (   2 equality;  56 variable)
%            Maximal formula depth :   25 (  25 average)
%            Number of connectives :   95 (   0   ~;   0   |;  15   &;  77   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :   10 (   0 sgn;   9   !;   1   ?;   0   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape'] :
      ( ( ? [V_S: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_S )
            & ( '2d.on/2' @ V_A @ V_S )
            & ( '2d.on/2' @ V_B @ V_S )
            & ( '2d.on/2' @ V_C @ V_S )
            & ( '2d.on/2' @ V_D @ V_S ) )
        & ( '2d.on/2' @ V_P @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_R @ ( '2d.line/2' @ V_C @ V_A ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_D @ V_P ) @ ( '2d.line/2' @ V_A @ V_B ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_D @ V_Q ) @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_D @ V_R ) @ ( '2d.line/2' @ V_C @ V_A ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.is-angle-bisector/2' @ V_l @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
        & ( '2d.is-angle-bisector/2' @ V_m @ ( '2d.angle/3' @ V_C @ V_D @ V_A ) ) )
     => ( ( ( '2d.lines-intersect-at-one/1' @ ( 'cons/2' @ V_l @ ( 'cons/2' @ V_m @ ( 'cons/2' @ ( '2d.line/2' @ V_A @ V_C ) @ 'nil/0' ) ) ) )
         => ( ( '2d.distance/2' @ V_R @ V_P )
            = ( '2d.distance/2' @ V_R @ V_Q ) ) )
        & ( ( ( '2d.distance/2' @ V_R @ V_P )
            = ( '2d.distance/2' @ V_R @ V_Q ) )
         => ( '2d.lines-intersect-at-one/1' @ ( 'cons/2' @ V_l @ ( 'cons/2' @ V_m @ ( 'cons/2' @ ( '2d.line/2' @ V_A @ V_C ) @ 'nil/0' ) ) ) ) ) ) ) )).
