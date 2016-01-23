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

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   36 (   2 equality;  17 variable)
%            Maximal formula depth :   24 (  24 average)
%            Number of connectives :   34 (   0   ~;   0   |;   6   &;  27   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    9 (   1 sgn;   4   !;   1   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_Ps: 'ListOf' @ '2d.Point',V_poly: '2d.Shape',V_sides: 'ListOf' @ '2d.Shape',V_max_areas: 'ListOf' @ 'R'] :
      ( ( ( '2d.is-convex-shape/1' @ ( '2d.polygon/1' @ V_Ps ) )
        & ( V_poly
          = ( '2d.polygon/1' @ V_Ps ) )
        & ( '2d.are-the-sides-of/2' @ V_sides @ V_poly )
        & ( 'all2/3'
          @ ^ [V_s: '2d.Shape',V_m: 'R'] :
              ( 'maximum/2'
              @ ( 'set-by-def/1'
                @ ^ [V_a: 'R'] :
                  ? [V_triangle: '2d.Shape'] :
                    ( ( '2d.triangle-type/1' @ V_triangle )
                    & ( '2d.is-a-side-of/2' @ V_s @ V_triangle )
                    & ( '2d.inside-of/2' @ V_triangle @ V_polygon )
                    & ( V_a
                      = ( '2d.area-of/1' @ V_triangle ) ) ) )
              @ V_m )
          @ V_sides
          @ V_max_areas ) )
     => ( '>=/2' @ ( 'sum/1' @ V_max_areas ) @ ( '*/2' @ ( '2d.area-of/1' @ ( '2d.polygon/1' @ V_Ps ) ) @ 2 ) ) ) )).
