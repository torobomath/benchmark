%% DOMAIN:    Geometry, geometric inequalities
%% THEORY:    RCF+PA(comb)
%% SOURCE:    International Mathematical Olympiad, 2006, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-31
%%
%% <PROBLEM-TEXT>
%% Assign to each side b of a convex polygon P the maximum area of a triangle
%% that has b as a side and is contained in P. Show that the sum of the areas
%% assigned to the sides of P is at least twice the area of P .
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   39 (   2 equality;  16 variable)
%            Maximal formula depth :   24 (  13 average)
%            Number of connectives :   37 (   0   ~;   0   |;   6   &;  30   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   1   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   4   !;   1   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   1 pred;    1 func;    1 numbers)

include('axioms.ax').

thf('polygon/0_type',type,(
    'polygon/0': '2d.Shape' )).

thf(p,conjecture,(
    ! [V_Ps: ( 'ListOf' @ '2d.Point' ),V_poly: '2d.Shape',V_sides: ( 'ListOf' @ '2d.Shape' ),V_max_areas: ( 'ListOf' @ $real )] :
      ( ( ( '2d.is-convex-shape/1' @ ( '2d.polygon/1' @ V_Ps ) )
        & ( V_poly
          = ( '2d.polygon/1' @ V_Ps ) )
        & ( '2d.are-the-sides-of/2' @ V_sides @ V_poly )
        & ( 'all2/3' @ $real @ '2d.Shape'
          @ ^ [V_s: '2d.Shape',V_m: $real] :
              ( 'maximum/2'
              @ ( 'set-by-def/1' @ $real
                @ ^ [V_a: $real] :
                  ? [V_triangle: '2d.Shape'] :
                    ( ( '2d.triangle-type/1' @ V_triangle )
                    & ( '2d.is-a-side-of/2' @ V_s @ V_triangle )
                    & ( '2d.inside-of/2' @ V_triangle @ 'polygon/0' )
                    & ( V_a
                      = ( '2d.area-of/1' @ V_triangle ) ) ) )
              @ V_m )
          @ V_sides
          @ V_max_areas ) )
     => ( $greatereq @ ( 'sum/1' @ V_max_areas ) @ ( $product @ ( '2d.area-of/1' @ ( '2d.polygon/1' @ V_Ps ) ) @ 2.0 ) ) ) )).

