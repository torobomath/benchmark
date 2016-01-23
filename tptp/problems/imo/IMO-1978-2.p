%% DOMAIN:    Geometry, hexahedrons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1978, Problem 2
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-20
%%
%% <PROBLEM-TEXT>
%% $P$ is a given point inside a given sphere. Three mutually perpendicular rays
%% from $P$ intersect the sphere at points $U$, $V$, and $W$; $Q$ denotes the vertex
%% diagonally opposite to $P$ in the parallelepiped determined by $PU$, $PV$, and $PW$.
%% Find the locus of $Q$ for all such triads of rays from $P$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   85 (   3 equality;  50 variable)
%            Maximal formula depth :   30 (  20 average)
%            Number of connectives :   77 (   0   ~;   0   |;  11   &;  66   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   24 (  11 sgn;   0   !;   8   ?;   2   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_Q: '3d.Point'] :
      ? [V_P: '3d.Point',V_U: '3d.Point',V_V: '3d.Point',V_W: '3d.Point',V_S: '3d.Shape',V_U2: '3d.Point',V_V2: '3d.Point',V_W2: '3d.Point'] :
        ( ( '3d.sphere-type/1' @ V_S )
        & ( ( '3d.center-of/1' @ V_S )
          = ( '3d.point/3' @ V_cx @ V_cy @ V_cz ) )
        & ( V_r
          = ( '3d.radius-of/1' @ V_S ) )
        & ( '3d.point-inside-of/2' @ V_P @ V_S )
        & ( V_P
          = ( '3d.point/3' @ V_px @ V_py @ V_pz ) )
        & ( '3d.on/2' @ V_U @ V_S )
        & ( '3d.on/2' @ V_V @ V_S )
        & ( '3d.on/2' @ V_W @ V_S )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_P @ V_U ) @ ( '3d.line/2' @ V_P @ V_V ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_P @ V_W ) @ ( '3d.line/2' @ V_P @ V_V ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_P @ V_U ) @ ( '3d.line/2' @ V_P @ V_W ) )
        & ( '3d.is-parallelopiped/8' @ V_P @ V_U @ V_V2 @ V_W @ V_V @ V_W2 @ V_Q @ V_U2 ) ) )).

thf(p_answer,answer,(
    ^ [V_Q_dot_0: '3d.Point'] :
      ( '3d.on/2' @ V_Q_dot_0 @ ( '3d.sphere/2' @ ( '3d.point/3' @ V_cx @ V_cy @ V_cz ) @ ( 'sqrt/1' @ ( '-/2' @ ( '*/2' @ 3 @ ( '^/2' @ V_r @ 2 ) ) @ ( '3d.distance^2/2' @ ( '3d.point/3' @ V_cx @ V_cy @ V_cz ) @ ( '3d.point/3' @ V_px @ V_py @ V_pz ) ) ) ) ) ) ),
    answer_to(p_question,[])).
