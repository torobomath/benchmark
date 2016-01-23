%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1990, Problem 1
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-11-13
%%
%% <PROBLEM-TEXT>
%% Chords $AB$ and $CD$ of a circle intersect at a point $E$ inside the circle. Let
%% $M$ be an interior point of the segment $EB$. The tangent line at $E$ to the
%% circle through $D$, $E$, and $M$ intersects the lines $BC$ and $AC$ at $F$ and
%% $G$, respectively. If
%% ¥[
%% ¥frac{AM}{AB} = t,
%% ¥]
%% find
%% ¥[
%% ¥frac{EG}{EF}
%% ¥]
%% in terms of $t$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  100 (   6 equality;  57 variable)
%            Maximal formula depth :   37 (  22 average)
%            Number of connectives :   89 (   3   ~;   0   |;  19   &;  67   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :   14 (   1 sgn;   0   !;  10   ?;   2   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ratio: 'R'] :
      ? [V_c: '2d.Shape',V_c1: '2d.Shape',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_F: '2d.Point',V_G: '2d.Point',V_M: '2d.Point'] :
        ( ( '2d.circle-type/1' @ V_c )
        & ( '2d.on/2' @ V_A @ V_c )
        & ( '2d.on/2' @ V_B @ V_c )
        & ( '2d.on/2' @ V_C @ V_c )
        & ( '2d.on/2' @ V_D @ V_c )
        & ( ( '2d.seg/2' @ V_A @ V_B )
         != ( '2d.seg/2' @ V_C @ V_D ) )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_B ) @ ( '2d.seg/2' @ V_C @ V_D ) @ V_E )
        & ( '2d.point-inside-of/2' @ V_E @ V_c )
        & ( '2d.on/2' @ V_M @ ( '2d.seg/2' @ V_E @ V_F ) )
        & ( V_M != V_E )
        & ( V_M != V_F )
        & ( '2d.circle-type/1' @ V_c1 )
        & ( '2d.on/2' @ V_D @ V_c1 )
        & ( '2d.on/2' @ V_E @ V_c1 )
        & ( '2d.on/2' @ V_M @ V_c1 )
        & ( '2d.tangent/3' @ ( '2d.line/2' @ V_F @ V_G ) @ V_c1 @ V_E )
        & ( '2d.on/2' @ V_F @ ( '2d.line/2' @ V_B @ V_C ) )
        & ( '2d.on/2' @ V_G @ ( '2d.line/2' @ V_A @ V_C ) )
        & ( ( '*/2' @ V_t @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_M ) ) )
        & ( ( '*/2' @ V_ratio @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_F ) ) )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_E @ V_G ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ratio_dot_0: 'R'] :
      ( V_ratio_dot_0
      = ( '//2' @ V_t @ ( '-/2' @ 1 @ V_t ) ) ) ),
    answer_to(p_question,[])).
