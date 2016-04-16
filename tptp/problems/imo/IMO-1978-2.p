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

% Syntax   : Number of formulae    :    9 (   0 unit;   7 type;   0 defn)
%            Number of atoms       :   86 (   3 equality;  33 variable)
%            Maximal formula depth :   30 (   6 average)
%            Number of connectives :   78 (   0   ~;   0   |;  11   &;  67   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   7   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   8   ?;   2   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   0 pred;    2 func;    2 numbers)

include('axioms.ax').

thf('cx/0_type',type,(
    'cx/0': $real )).

thf('cy/0_type',type,(
    'cy/0': $real )).

thf('cz/0_type',type,(
    'cz/0': $real )).

thf('px/0_type',type,(
    'px/0': $real )).

thf('py/0_type',type,(
    'py/0': $real )).

thf('pz/0_type',type,(
    'pz/0': $real )).

thf('r/0_type',type,(
    'r/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ '3d.Point'
    @ ^ [V_Q: '3d.Point'] :
      ? [V_P: '3d.Point',V_U: '3d.Point',V_V: '3d.Point',V_W: '3d.Point',V_S: '3d.Shape',V_U2: '3d.Point',V_V2: '3d.Point',V_W2: '3d.Point'] :
        ( ( '3d.sphere-type/1' @ V_S )
        & ( ( '3d.center-of/1' @ V_S )
          = ( '3d.point/3' @ 'cx/0' @ 'cy/0' @ 'cz/0' ) )
        & ( 'r/0'
          = ( '3d.radius-of/1' @ V_S ) )
        & ( '3d.point-inside-of/2' @ V_P @ V_S )
        & ( V_P
          = ( '3d.point/3' @ 'px/0' @ 'py/0' @ 'pz/0' ) )
        & ( '3d.on/2' @ V_U @ V_S )
        & ( '3d.on/2' @ V_V @ V_S )
        & ( '3d.on/2' @ V_W @ V_S )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_P @ V_U ) @ ( '3d.line/2' @ V_P @ V_V ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_P @ V_W ) @ ( '3d.line/2' @ V_P @ V_V ) )
        & ( '3d.perpendicular/2' @ ( '3d.line/2' @ V_P @ V_U ) @ ( '3d.line/2' @ V_P @ V_W ) )
        & ( '3d.is-parallelopiped/8' @ V_P @ V_U @ V_V2 @ V_W @ V_V @ V_W2 @ V_Q @ V_U2 ) ) )).

thf(p_answer,answer,(
    ^ [V_Q_dot_0: '3d.Point'] :
      ( '3d.on/2' @ V_Q_dot_0 @ ( '3d.sphere/2' @ ( '3d.point/3' @ 'cx/0' @ 'cy/0' @ 'cz/0' ) @ ( 'sqrt/1' @ ( $difference @ ( $product @ 3.0 @ ( '^/2' @ 'r/0' @ 2.0 ) ) @ ( '3d.distance^2/2' @ ( '3d.point/3' @ 'cx/0' @ 'cy/0' @ 'cz/0' ) @ ( '3d.point/3' @ 'px/0' @ 'py/0' @ 'pz/0' ) ) ) ) ) ) ),
    answer_to(p_question,[])).

