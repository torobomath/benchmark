%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP196
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  117 (   9 equality;  57 variable)
%            Maximal formula depth :   27 (  13 average)
%            Number of connectives :   95 (   0   ~;   0   |;  16   &;  79   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   15 (   0 sgn;   0   !;  11   ?;   4   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_theta: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_Cir: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.point-outside-of/2' @ V_P @ V_Cir )
        & ( '2d.point-outside-of/2' @ V_Q @ V_Cir )
        & ( '2d.on/2' @ V_A @ V_Cir )
        & ( '2d.on/2' @ V_B @ V_Cir )
        & ( '2d.on/2' @ V_C @ V_Cir )
        & ( '2d.on/2' @ V_D @ V_Cir )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_B ) @ ( '2d.line/2' @ V_D @ V_C ) @ V_Q )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_B @ V_C ) @ V_P )
        & ( ( '*/2' @ 35 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_Q @ V_D ) ) )
        & ( ( '*/2' @ 25 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_B ) ) )
        & ( V_theta
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_D ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_theta: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( ( '*/2' @ 90 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_A @ V_D ) ) )
        & ( ( '*/2' @ 90 @ 'Degree/0' )
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_B @ V_C @ V_D ) ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_D ) ) )
        & ( V_theta
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_D ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_theta_dot_0: 'R'] :
      ( V_theta_dot_0
      = ( '*/2' @ 60 @ 'Degree/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_theta_dot_0: 'R'] :
      ( V_theta_dot_0
      = ( '*/2' @ 45 @ 'Degree/0' ) ) ),
    answer_to(p2_question,[])).
