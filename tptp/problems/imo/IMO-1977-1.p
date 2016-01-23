%% DOMAIN:    Geometry, polygons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1977, Problem 1
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-23
%%
%% <PROBLEM-TEXT>
%% Equilateral triangles $ABK$, $BCL$, $CDM$, $DAN$ are constructed inside the
%% square $ABCD$. Prove that the midpoints of the four segments $KL$, $LM$, $MN$, $NK$
%% and the midpoints of the eight segments $AK$, $BK$, $BL$, $CL$, $CM$, $DM$, $DN$, $AN$
%% are the twelve vertices of a regular dodecagon.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  100 (   0 equality;  60 variable)
%            Maximal formula depth :   27 (  27 average)
%            Number of connectives :   99 (   0   ~;   0   |;   8   &;  90   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :    8 (   0 sgn;   8   !;   0   ?;   0   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_M: '2d.Point',V_N: '2d.Point',V_L: '2d.Point',V_K: '2d.Point'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.is-equilateral-triangle/3' @ V_A @ V_B @ V_K )
        & ( '2d.is-equilateral-triangle/3' @ V_B @ V_C @ V_L )
        & ( '2d.is-equilateral-triangle/3' @ V_C @ V_D @ V_M )
        & ( '2d.is-equilateral-triangle/3' @ V_D @ V_A @ V_N )
        & ( '2d.point-inside-of/2' @ V_M @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) )
        & ( '2d.point-inside-of/2' @ V_N @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) )
        & ( '2d.point-inside-of/2' @ V_K @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) )
        & ( '2d.point-inside-of/2' @ V_L @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) ) )
     => ( '2d.is-regular-polygon/1' @ ( '2d.polygon/1' @ ( 'cons/2' @ ( '2d.midpoint-of/2' @ V_K @ V_L ) @ ( 'cons/2' @ ( '2d.midpoint-of/2' @ V_L @ V_M ) @ ( 'cons/2' @ ( '2d.midpoint-of/2' @ V_M @ V_N ) @ ( 'cons/2' @ ( '2d.midpoint-of/2' @ V_N @ V_K ) @ ( 'cons/2' @ ( '2d.midpoint-of/2' @ V_A @ V_K ) @ ( 'cons/2' @ ( '2d.midpoint-of/2' @ V_B @ V_K ) @ ( 'cons/2' @ ( '2d.midpoint-of/2' @ V_B @ V_L ) @ ( 'cons/2' @ ( '2d.midpoint-of/2' @ V_C @ V_L ) @ ( 'cons/2' @ ( '2d.midpoint-of/2' @ V_C @ V_M ) @ ( 'cons/2' @ ( '2d.midpoint-of/2' @ V_D @ V_M ) @ ( 'cons/2' @ ( '2d.midpoint-of/2' @ V_D @ V_N ) @ ( 'cons/2' @ ( '2d.midpoint-of/2' @ V_A @ V_N ) @ 'nil/0' ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )).
