%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1R104
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  139 (  24 equality;  50 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :   85 (   0   ~;   3   |;  15   &;  67   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   21 (   0 sgn;   0   !;  15   ?;   6   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_b: 'R',V_c: 'R'] :
        ( ( V_a
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) ) )
        & ( V_b
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( V_c
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
          = ( '*/2' @ 30 @ 'Degree/0' ) )
        & ( V_b
          = ( 'sqrt/1' @ 2 ) )
        & ( V_c = 2 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ACB: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_b: 'R',V_c: 'R'] :
        ( ( V_b
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( V_c
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
          = ( '*/2' @ 30 @ 'Degree/0' ) )
        & ( V_b
          = ( 'sqrt/1' @ 2 ) )
        & ( V_c = 2 )
        & ( V_ACB
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_C @ V_B ) ) ) ) )).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_BAC: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_b: 'R',V_c: 'R'] :
        ( ( V_b
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_C ) ) )
        & ( V_c
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) ) )
        & ( ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) )
          = ( '*/2' @ 30 @ 'Degree/0' ) )
        & ( V_b
          = ( 'sqrt/1' @ 2 ) )
        & ( V_c = 2 )
        & ( V_BAC
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) ) ) )).

thf(p3_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( ( V_a_dot_0
        = ( '-/2' @ ( 'sqrt/1' @ 3 ) @ 1 ) )
      | ( V_a_dot_0
        = ( '+/2' @ ( 'sqrt/1' @ 3 ) @ 1 ) ) ) ),
    answer_to(p3_question,[])).

thf(p2_answer,answer,(
    ^ [V_ACB_dot_0: 'R'] :
      ( ( V_ACB_dot_0
        = ( '*/2' @ 45 @ 'Degree/0' ) )
      | ( V_ACB_dot_0
        = ( '*/2' @ 135 @ 'Degree/0' ) ) ) ),
    answer_to(p2_question,[])).

thf(p1_answer,answer,(
    ^ [V_BAC_dot_0: 'R'] :
      ( ( V_BAC_dot_0
        = ( '*/2' @ 105 @ 'Degree/0' ) )
      | ( V_BAC_dot_0
        = ( '*/2' @ 15 @ 'Degree/0' ) ) ) ),
    answer_to(p1_question,[])).
