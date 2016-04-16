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

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  233 (  13 equality;  99 variable)
%            Maximal formula depth :   31 (  17 average)
%            Number of connectives :  203 (   0   ~;   0   |;  36   &; 167   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   33 (   1   :;   0   =)
%            Number of variables   :   18 (   0 sgn;   0   !;  14   ?;   4   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    3 func;    8 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_h: $real] :
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
          = 'a/0' )
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
    ( 'find/1' @ $real
    @ ^ [V_volume: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_D: '3d.Point',V_E: '3d.Point',V_F: '3d.Shape',V_V: '3d.Shape'] :
        ( ( $less @ 0.0 @ 'a/0' )
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
    ^ [V_h_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( V_h_dot_0
        = ( $product @ ( $quotient @ ( 'sqrt/1' @ 2.0 ) @ 2.0 ) @ 'a/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_volume_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( V_volume_dot_0
        = ( $product @ ( $difference @ ( $quotient @ ( $product @ 7.0 @ ( 'sqrt/1' @ 6.0 ) ) @ 54.0 ) @ ( $quotient @ 1.0 @ 4.0 ) ) @ ( $product @ 'Pi/0' @ ( '^/2' @ 'a/0' @ 3.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

