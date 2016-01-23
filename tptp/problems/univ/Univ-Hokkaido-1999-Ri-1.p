%% DOMAIN:    Trigonometric Functions
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 1999, Science Course, Problem 1
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-14
%%
%% <PROBLEM-TEXT>
%% When the area of the triangle $ABC$ is $1$ and $AB = 2$, find the
%% magnitude of $\angle BAC$ that gives the minimum value of
%% $BC^2 +(2\sqrt{3} - 1)AC^2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   83 (   7 equality;  24 variable)
%            Maximal formula depth :   26 (  16 average)
%            Number of connectives :   67 (   0   ~;   0   |;   5   &;  62   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   6   ?;   3   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_angleBAC: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( 1
          = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) ) )
        & ( 2
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( V_angleBAC
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_x: 'R'] :
              ? [V_A0: '2d.Point',V_B0: '2d.Point',V_C0: '2d.Point'] :
                ( ( 1
                  = ( '2d.area-of/1' @ ( '2d.triangle/3' @ V_A0 @ V_B0 @ V_C0 ) ) )
                & ( 2
                  = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A0 @ V_B0 ) ) )
                & ( V_x
                  = ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B0 @ V_C0 ) ) @ 2 ) @ ( '*/2' @ ( '-/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) @ 1 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A0 @ V_C0 ) ) @ 2 ) ) ) ) ) )
          @ ( '+/2' @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) @ 2 ) @ ( '*/2' @ ( '-/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) @ 1 ) @ ( '^/2' @ ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) @ 2 ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_angleBAC_dot_0: 'R'] :
      ( V_angleBAC_dot_0
      = ( '//2' @ 'Pi/0' @ 3 ) ) ),
    answer_to(p_question,[])).
