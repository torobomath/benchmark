%% DOMAIN:    Quadratic Functions
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2001, Humanities Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-14
%%
%% <PROBLEM-TEXT>
%% Let $R$ be the rectangle whose vertices are at the points $A(1, 0)$,
%% $B(2, 0)$, $C(2, 8)$, and $D(1, 8)$ on the coordinate plane.
%% Meanwhile, let $T(t)$ be the triangle whose vertices are at the
%% origin $O(0, 0)$, point $E(4, 0)$, and point $P(t, 8 t-2t^2)$, where
%% $0 < t < 4$.
%%
%% (1) Find the area $f(t)$ of the region common to the inside of $R$
%% and the inside of $T(t)$.
%%
%% (2) Assuming that $t$ moves in the range of $0 < t < 4$, find the
%% maximum value of $f(t)$ and the value of $t$ that gives the maximum
%% value.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  197 (  21 equality;  61 variable)
%            Maximal formula depth :   30 (  19 average)
%            Number of connectives :  153 (   0   ~;   2   |;  25   &; 126   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   38 (   0   :)
%            Number of variables   :   26 (   0 sgn;   0   !;  17   ?;   7   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_R: '2d.Shape',V_E: '2d.Point',V_T: '2d.Shape'] :
        ( ( V_A
          = ( '2d.point/2' @ 1 @ 0 ) )
        & ( V_B
          = ( '2d.point/2' @ 2 @ 0 ) )
        & ( V_C
          = ( '2d.point/2' @ 2 @ 8 ) )
        & ( V_D
          = ( '2d.point/2' @ 1 @ 8 ) )
        & ( V_R
          = ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) )
        & ( V_E
          = ( '2d.point/2' @ 4 @ 0 ) )
        & ( '</2' @ 0 @ V_t )
        & ( '</2' @ V_t @ 4 )
        & ( V_T
          = ( '2d.triangle/3' @ '2d.origin/0' @ V_E @ ( '2d.point/2' @ V_t @ ( '-/2' @ ( '*/2' @ 8 @ V_t ) @ ( '*/2' @ 2 @ ( '^/2' @ V_t @ 2 ) ) ) ) ) )
        & ( V_f
          = ( '2d.area-of/1' @ ( '2d.intersection/2' @ ( '2d.shape-inside-of/1' @ V_R ) @ ( '2d.shape-inside-of/1' @ V_T ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_maxf_t: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_R: '2d.Shape',V_E: '2d.Point',V_T: 'R' > '2d.Shape',V_f: 'R2R',V_maxf: 'R',V_maxt: 'R'] :
        ( ( V_A
          = ( '2d.point/2' @ 1 @ 0 ) )
        & ( V_B
          = ( '2d.point/2' @ 2 @ 0 ) )
        & ( V_C
          = ( '2d.point/2' @ 2 @ 8 ) )
        & ( V_D
          = ( '2d.point/2' @ 1 @ 8 ) )
        & ( V_R
          = ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) )
        & ( V_E
          = ( '2d.point/2' @ 4 @ 0 ) )
        & ( V_T
          = ( ^ [V_t_dot_0: 'R'] :
                ( '2d.triangle/3' @ '2d.origin/0' @ V_E @ ( '2d.point/2' @ V_t_dot_0 @ ( '-/2' @ ( '*/2' @ 8 @ V_t_dot_0 ) @ ( '*/2' @ 2 @ ( '^/2' @ V_t_dot_0 @ 2 ) ) ) ) ) ) )
        & ( V_f
          = ( 'fun/1'
            @ ^ [V_t: 'R'] :
                ( '2d.area-of/1' @ ( '2d.intersection/2' @ ( '2d.shape-inside-of/1' @ V_R ) @ ( '2d.shape-inside-of/1' @ ( 'LamApp/2' @ V_T @ V_t ) ) ) ) ) )
        & ( 'func-max/4' @ V_f
          @ ( 'set-by-def/1'
            @ ^ [V_t0: 'R'] :
                ( ( '</2' @ 0 @ V_t0 )
                & ( '</2' @ V_t0 @ 4 ) ) )
          @ V_maxt
          @ V_maxf )
        & ( V_maxf_t
          = ( 'cons/2' @ V_maxf @ ( 'cons/2' @ V_maxt @ 'nil/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_f_dot_0: 'R'] :
      ( ( ( '</2' @ 0 @ V_t )
        & ( '</2' @ V_t @ 1 )
        & ( V_f_dot_0
          = ( '*/2' @ 5 @ V_t ) ) )
      | ( ( '<=/2' @ 1 @ V_t )
        & ( '</2' @ V_t @ 2 )
        & ( V_f_dot_0
          = ( '+/2' @ ( '-/1' @ ( '*/2' @ 4 @ ( '^/2' @ V_t @ 2 ) ) ) @ ( '+/2' @ ( '*/2' @ 13 @ V_t ) @ ( '-/1' @ 4 ) ) ) ) )
      | ( ( '<=/2' @ 2 @ V_t )
        & ( '</2' @ V_t @ 4 )
        & ( V_f_dot_0
          = ( '-/2' @ 12 @ ( '*/2' @ 3 @ V_t ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_maxf_t_dot_0: 'ListOf' @ 'R'] :
      ( V_maxf_t_dot_0
      = ( 'cons/2' @ ( '//2' @ 105 @ 16 ) @ ( 'cons/2' @ ( '//2' @ 13 @ 8 ) @ 'nil/0' ) ) ) ),
    answer_to(p2_question,[])).
