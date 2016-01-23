%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1991, Humanities Course, Problem 4
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-15
%%
%% <PROBLEM-TEXT>
%% Consider the sphere that has its center on the base and is in contact
%% with all the sides of the regular quadrangular pyramid $V$. Let $a$
%% be the side length of the base, then find the following quantities:
%%
%% (1) The height of $V$
%%
%% (2) The volume of the intersection of the sphere and the pyramid $V$
%%
%% Here, regular quadrangular pyramid is a solid enclosed be a square
%% base and four congruent isosceles triangles whose base is a side of
%% the square base.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  231 (  13 equality; 105 variable)
%            Maximal formula depth :   31 (  20 average)
%            Number of connectives :  201 (   0   ~;   0   |;  36   &; 165   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   0   :)
%            Number of variables   :   22 (   2 sgn;   0   !;  14   ?;   4   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_h: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Shape',V_V: '3d.Shape'] :
        ( ( '3d.square-pyramid-type/1' @ V_V )
        & ( '3d.is-regular-square/1' @ ( '3d.base-of/1' @ V_V ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_A ) )
          = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_B ) ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_B ) )
          = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_C ) ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_C ) )
          = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_D ) ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_D ) )
          = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_A ) ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_A @ V_B ) )
          = V_a )
        & ( '3d.sphere-type/1' @ V_F )
        & ( '3d.on/2' @ ( '3d.center-of/1' @ V_F ) @ ( '3d.inner-part-of/1' @ ( '3d.base-of/1' @ V_V ) ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_C @ V_D ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_D @ V_A ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_E @ V_A ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_E @ V_B ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_E @ V_C ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_E @ V_D ) )
        & ( V_h
          = ( '3d.height-of/1' @ V_V ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_volume: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Shape',V_V: '3d.Shape'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '3d.square-pyramid-type/1' @ V_V )
        & ( '3d.is-regular-square/1' @ ( '3d.base-of/1' @ V_V ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_A ) )
          = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_B ) ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_B ) )
          = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_C ) ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_C ) )
          = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_D ) ) )
        & ( ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_D ) )
          = ( '3d.length-of/1' @ ( '3d.seg/2' @ V_E @ V_A ) ) )
        & ( '3d.sphere-type/1' @ V_F )
        & ( '3d.on/2' @ ( '3d.center-of/1' @ V_F ) @ ( '3d.inner-part-of/1' @ ( '3d.base-of/1' @ V_V ) ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_A @ V_B ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_B @ V_C ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_C @ V_D ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_D @ V_A ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_E @ V_A ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_E @ V_B ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_E @ V_C ) )
        & ( '3d.tangent/2' @ V_F @ ( '3d.seg/2' @ V_E @ V_D ) )
        & ( V_volume
          = ( '3d.volume-of/1' @ ( '3d.intersection/2' @ V_V @ V_F ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_h_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( V_h_dot_0
        = ( '*/2' @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 2 ) @ V_a ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_volume_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( V_volume_dot_0
        = ( '*/2' @ ( '-/2' @ ( '//2' @ ( '*/2' @ 7 @ ( 'sqrt/1' @ 6 ) ) @ 54 ) @ ( '//2' @ 1 @ 4 ) ) @ ( '*/2' @ 'Pi/0' @ ( '^/2' @ V_a @ 3 ) ) ) ) ) ),
    answer_to(p2_question,[])).
