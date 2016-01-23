%% DOMAIN:    Geometry, misc
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2005, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-19
%%
%% <PROBLEM-TEXT>
%% Let ABCD be a fixed convex quadrilateral with BC = DA
%% and BC not parallel with DA. Let two variable points E and F lie of the
%% sides BC and DA, respectively and satisfy BE = DF. The lines AC and
%% BD meet at P, the lines BD and EF meet at Q, the lines EF and AC meet
%% at R.
%% Prove that the circumcircles of the triangles PQR, as E and F vary, have a
%% common point other than P.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   74 (   3 equality;  46 variable)
%            Maximal formula depth :   23 (  23 average)
%            Number of connectives :   69 (   2   ~;   0   |;  10   &;  55   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :   11 (   0 sgn;   9   !;   2   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
      ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( ( '2d.distance/2' @ V_B @ V_C )
          = ( '2d.distance/2' @ V_D @ V_A ) )
        & ~ ( '2d.parallel/2' @ ( '2d.line/2' @ V_B @ V_C ) @ ( '2d.line/2' @ V_D @ V_A ) ) )
     => ? [V_S: '2d.Point'] :
        ! [V_E: '2d.Point',V_F: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_R: '2d.Point'] :
          ( ( ( '2d.on/2' @ V_E @ ( '2d.seg/2' @ V_B @ V_C ) )
            & ( '2d.on/2' @ V_F @ ( '2d.seg/2' @ V_D @ V_A ) )
            & ( ( '2d.distance/2' @ V_B @ V_E )
              = ( '2d.distance/2' @ V_D @ V_F ) )
            & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_C ) @ ( '2d.line/2' @ V_B @ V_D ) @ V_P )
            & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_D ) @ ( '2d.line/2' @ V_E @ V_F ) @ V_Q )
            & ( '2d.intersect/3' @ ( '2d.line/2' @ V_E @ V_F ) @ ( '2d.line/2' @ V_A @ V_C ) @ V_R ) )
         => ( ( V_S != V_P )
            & ? [V_O: '2d.Shape'] :
                ( ( '2d.circle-type/1' @ V_O )
                & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_P @ V_Q @ V_R ) @ V_O )
                & ( '2d.on/2' @ V_S @ V_O ) ) ) ) ) )).
