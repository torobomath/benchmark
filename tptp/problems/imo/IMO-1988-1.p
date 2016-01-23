%% DOMAIN:    Geometry, circle
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1988, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-18
%%
%% <PROBLEM-TEXT>
%% Consider two coplanar circles of radii $R$ and $r$ ($R > r$) with the same
%% center. Let $P$ be a fixed point on the smaller circle and $B$ a variable point
%% on the larger circle. The line $BP$ meets the larger circle again at $C$. The
%% perpendicular $l$ to $BP$ at $P$ meets the smaller circle again at $A$. (If $l$
%% is tangent to the circle at $P$ then $A = P$.)
%% ¥begin{flushleft}
%% (i) Find the set of values of $BC^2 + CA^2 + AB^2$.¥¥
%% (ii) Find the locus of the midpoint of $AB$.
%% ¥end{flushleft}
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  190 (  17 equality; 100 variable)
%            Maximal formula depth :   32 (  21 average)
%            Number of connectives :  156 (   4   ~;   2   |;  32   &; 118   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   35 (   8 sgn;   0   !;  14   ?;   5   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_s: 'R'] :
      ? [V_O: '2d.Point',V_K1: '2d.Shape',V_K2: '2d.Shape',V_P: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( V_K1
          = ( '2d.circle/2' @ V_O @ V_R ) )
        & ( V_K2
          = ( '2d.circle/2' @ V_O @ V_r ) )
        & ( '>/2' @ V_r @ 0 )
        & ( '>/2' @ V_R @ V_r )
        & ( '2d.on/2' @ V_P @ V_K2 )
        & ( '2d.on/2' @ V_B @ V_K1 )
        & ( '2d.on/2' @ V_C @ V_K1 )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_P ) @ V_K1 @ V_C )
        & ( V_B != V_C )
        & ( '2d.on/2' @ V_A @ V_K2 )
        & ( ( ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_P ) @ ( '2d.line/2' @ V_A @ V_P ) )
            & ( V_A != V_P ) )
          | ( ( '2d.on/2' @ V_O @ ( '2d.line/2' @ V_B @ V_P ) )
            & ( V_A = V_P ) ) )
        & ( V_s
          = ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) @ 2 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_A ) ) @ 2 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_fU: '2d.Shape'] :
        ( V_fU
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_U: '2d.Point'] :
            ? [V_O: '2d.Point',V_K1: '2d.Shape',V_K2: '2d.Shape',V_P: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
              ( ( V_O
                = ( '2d.point/2' @ V_Ox @ V_Oy ) )
              & ( V_P
                = ( '2d.point/2' @ V_Px @ V_Py ) )
              & ( V_K1
                = ( '2d.circle/2' @ V_O @ V_R ) )
              & ( V_K2
                = ( '2d.circle/2' @ V_O @ V_r ) )
              & ( '>/2' @ V_r @ 0 )
              & ( '>/2' @ V_R @ V_r )
              & ( '2d.on/2' @ V_P @ V_K2 )
              & ( '2d.on/2' @ V_B @ V_K1 )
              & ( '2d.on/2' @ V_C @ V_K1 )
              & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_P ) @ V_K1 @ V_C )
              & ( V_B != V_C )
              & ( '2d.on/2' @ V_A @ V_K2 )
              & ( ( ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_B @ V_P ) @ ( '2d.line/2' @ V_A @ V_P ) )
                  & ( V_A != V_P ) )
                | ( ( '2d.on/2' @ V_O @ ( '2d.line/2' @ V_B @ V_P ) )
                  & ( V_A = V_P ) ) )
              & ( V_U
                = ( '2d.midpoint-of/2' @ V_A @ V_B ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_s_dot_0: 'R'] :
      ( ( '>/2' @ V_R @ V_r )
      & ( '>/2' @ V_r @ 0 )
      & ( V_s_dot_0
        = ( '+/2' @ ( '*/2' @ 6 @ ( '^/2' @ V_R @ 2 ) ) @ ( '*/2' @ 2 @ ( '^/2' @ V_r @ 2 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_fU_dot_0: '2d.Shape'] :
      ( ( '>/2' @ V_R @ V_r )
      & ( '>/2' @ V_r @ 0 )
      & ( V_fU_dot_0
        = ( '2d.circle/2' @ ( '2d.midpoint-of/2' @ ( '2d.point/2' @ V_Ox @ V_Oy ) @ ( '2d.point/2' @ V_Px @ V_Py ) ) @ ( '//2' @ V_R @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).
