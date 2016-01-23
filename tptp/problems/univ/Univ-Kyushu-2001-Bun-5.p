%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2001, Humanities Course, Problem 5
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-28
%%
%% <PROBLEM-TEXT>
%% Let $r$ be a positive constant smaller than $1$. Let $1 - r$, $1$,
%% and $1 + r$ be the points on the half line $l$ starting from the
%% point $A$ on a plane to which the distances from $A$ are $1 - r$,
%% $1$, and $1 + r$, respectively. Draw a circle taking $BD$ as the
%% diameter, and let $m$ be one of the half lines starting from the
%% point $A$ and tangent to the circle. Let $E$, $F$, and $G$ be the
%% points on $m$ to which the distances from $A$ are $1 - r$, $1$, and
%% $1 + r$, respectively. Draw a circle passing through $E$ and $F$ and
%% in contact with $l$, and let $P$ be the point of contact. Draw a
%% circle passing through $F$ and $G$ and in contact with $l$, and let
%% $Q$ be the point of contact.
%%
%% (1) Represent the distance $AP$ between $A$ and $P$ using $r$.
%%
%% (2) Represent $CF$ using $r$.
%%
%% (3) Prove that $PQ = CF$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  387 (  29 equality; 188 variable)
%            Maximal formula depth :   46 (  30 average)
%            Number of connectives :  324 (   0   ~;   0   |;  74   &; 249   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   51 (   2 sgn;  15   !;  28   ?;   4   ^)
%                                         (  47   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_AP: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_G: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape',V_C1: '2d.Shape',V_C2: '2d.Shape'] :
        ( ( '</2' @ 0 @ V_r )
        & ( '</2' @ V_r @ 1 )
        & ( '2d.circle-type/1' @ V_C1 )
        & ( '2d.circle-type/1' @ V_C2 )
        & ( V_l
          = ( '2d.half-line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_B @ V_l )
        & ( '2d.on/2' @ V_C @ V_l )
        & ( '2d.on/2' @ V_D @ V_l )
        & ( ( '-/2' @ 1 @ V_r )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( 1
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( ( '+/2' @ 1 @ V_r )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) ) )
        & ( '2d.tangent/3' @ V_m @ ( '2d.circle/2' @ ( '2d.midpoint-of/2' @ V_B @ V_D ) @ ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_D ) ) @ 2 ) ) @ V_R )
        & ( V_m
          = ( '2d.half-line/2' @ V_A @ V_R ) )
        & ( '2d.on/2' @ V_E @ V_m )
        & ( '2d.on/2' @ V_F @ V_m )
        & ( '2d.on/2' @ V_G @ V_m )
        & ( ( '-/2' @ 1 @ V_r )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_E ) ) )
        & ( 1
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_F ) ) )
        & ( ( '+/2' @ 1 @ V_r )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_G ) ) )
        & ( '2d.on/2' @ V_E @ V_C1 )
        & ( '2d.on/2' @ V_F @ V_C1 )
        & ( '2d.tangent/3' @ V_l @ V_C1 @ V_P )
        & ( '2d.on/2' @ V_F @ V_C2 )
        & ( '2d.on/2' @ V_G @ V_C2 )
        & ( '2d.tangent/3' @ V_l @ V_C2 @ V_Q )
        & ( V_AP
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_P ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_CF: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_G: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape',V_C1: '2d.Shape',V_C2: '2d.Shape'] :
        ( ( '</2' @ 0 @ V_r )
        & ( '</2' @ V_r @ 1 )
        & ( '2d.circle-type/1' @ V_C1 )
        & ( '2d.circle-type/1' @ V_C2 )
        & ( V_l
          = ( '2d.half-line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_B @ V_l )
        & ( '2d.on/2' @ V_C @ V_l )
        & ( '2d.on/2' @ V_D @ V_l )
        & ( ( '-/2' @ 1 @ V_r )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( 1
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( ( '+/2' @ 1 @ V_r )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) ) )
        & ( '2d.tangent/3' @ V_m @ ( '2d.circle/2' @ ( '2d.midpoint-of/2' @ V_B @ V_D ) @ ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_D ) ) @ 2 ) ) @ V_R )
        & ( V_m
          = ( '2d.half-line/2' @ V_A @ V_R ) )
        & ( '2d.on/2' @ V_E @ V_m )
        & ( '2d.on/2' @ V_F @ V_m )
        & ( '2d.on/2' @ V_G @ V_m )
        & ( ( '-/2' @ 1 @ V_r )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_E ) ) )
        & ( 1
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_F ) ) )
        & ( ( '+/2' @ 1 @ V_r )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_G ) ) )
        & ( '2d.on/2' @ V_E @ V_C1 )
        & ( '2d.on/2' @ V_F @ V_C1 )
        & ( '2d.tangent/3' @ V_l @ V_C1 @ V_P )
        & ( '2d.on/2' @ V_F @ V_C2 )
        & ( '2d.on/2' @ V_G @ V_C2 )
        & ( '2d.tangent/3' @ V_l @ V_C2 @ V_Q )
        & ( V_CF
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_F ) ) ) ) )).

thf(p3,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_G: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point',V_l: '2d.Shape',V_m: '2d.Shape',V_C1: '2d.Shape',V_C2: '2d.Shape',V_r: 'R'] :
      ( ( ( '</2' @ 0 @ V_r )
        & ( '</2' @ V_r @ 1 )
        & ( '2d.circle-type/1' @ V_C1 )
        & ( '2d.circle-type/1' @ V_C2 )
        & ( V_l
          = ( '2d.half-line/2' @ V_A @ V_B ) )
        & ( '2d.on/2' @ V_B @ V_l )
        & ( '2d.on/2' @ V_C @ V_l )
        & ( '2d.on/2' @ V_D @ V_l )
        & ( ( '-/2' @ 1 @ V_r )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( 1
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( ( '+/2' @ 1 @ V_r )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) ) )
        & ( '2d.tangent/3' @ V_m @ ( '2d.circle/2' @ ( '2d.midpoint-of/2' @ V_B @ V_D ) @ ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_D ) ) @ 2 ) ) @ V_R )
        & ( V_m
          = ( '2d.half-line/2' @ V_A @ V_R ) )
        & ( '2d.on/2' @ V_E @ V_m )
        & ( '2d.on/2' @ V_F @ V_m )
        & ( '2d.on/2' @ V_G @ V_m )
        & ( ( '-/2' @ 1 @ V_r )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_E ) ) )
        & ( 1
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_F ) ) )
        & ( ( '+/2' @ 1 @ V_r )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_G ) ) )
        & ( '2d.on/2' @ V_E @ V_C1 )
        & ( '2d.on/2' @ V_F @ V_C1 )
        & ( '2d.tangent/3' @ V_l @ V_C1 @ V_P )
        & ( '2d.on/2' @ V_F @ V_C2 )
        & ( '2d.on/2' @ V_G @ V_C2 )
        & ( '2d.tangent/3' @ V_l @ V_C2 @ V_Q ) )
     => ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_P @ V_Q ) )
        = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_F ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_AP_dot_0: 'R'] :
      ( V_AP_dot_0
      = ( 'sqrt/1' @ ( '-/2' @ 1 @ V_r ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_CF_dot_0: 'R'] :
      ( V_CF_dot_0
      = ( 'sqrt/1' @ ( '-/2' @ 2 @ ( '*/2' @ 2 @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_r @ 2 ) ) ) ) ) ) ) ),
    answer_to(p2_question,[])).
