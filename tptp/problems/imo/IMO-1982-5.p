%% DOMAIN:    Geometry, polygons
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1982, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-20
%%
%% <PROBLEM-TEXT>
%% The diagonals $AC$ and $CE$ of the regular hexagon $ABCDEF$ are divided by the
%% inner points $M$ and $N$, respectively, so that
%% ¥[
%% ¥frac{AM}{AC} = ¥frac{CN}{CE} = r.
%% ¥]
%% Determine $r$ if $B$, $M$, and $N$ are collinear.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   77 (   7 equality;  37 variable)
%            Maximal formula depth :   26 (  16 average)
%            Number of connectives :   65 (   4   ~;   0   |;   9   &;  52   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   8   ?;   2   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_r: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_M: '2d.Point',V_N: '2d.Point'] :
        ( ( '2d.is-regular-polygon/1' @ ( '2d.polygon/1' @ ( 'cons/2' @ V_A @ ( 'cons/2' @ V_B @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_D @ ( 'cons/2' @ V_E @ ( 'cons/2' @ V_F @ 'nil/0' ) ) ) ) ) ) ) )
        & ( '2d.on/2' @ V_M @ ( '2d.seg/2' @ V_A @ V_C ) )
        & ( '2d.on/2' @ V_N @ ( '2d.seg/2' @ V_C @ V_E ) )
        & ( V_M != V_A )
        & ( V_M != V_C )
        & ( V_N != V_C )
        & ( V_N != V_E )
        & ( ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_M ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
          = ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_N ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_E ) ) ) )
        & ( ( '//2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_M ) ) @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
          = V_r )
        & ( '2d.colinear/3' @ V_B @ V_M @ V_N ) ) )).

thf(p_answer,answer,(
    ^ [V_r_dot_0: 'R'] :
      ( V_r_dot_0
      = ( '//2' @ 1 @ 3 ) ) ),
    answer_to(p_question,[])).
