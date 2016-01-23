%% DOMAIN:    Plane Geometry
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CRAC035
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  153 (  14 equality;  76 variable)
%            Maximal formula depth :   24 (  13 average)
%            Number of connectives :  119 (   0   ~;   0   |;  28   &;  91   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   23 (   0 sgn;   0   !;  17   ?;   6   ^)
%                                         (  23   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_Cir: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.on/2' @ V_A @ V_Cir )
        & ( '2d.on/2' @ V_B @ V_Cir )
        & ( '2d.on/2' @ V_C @ V_Cir )
        & ( '2d.on/2' @ V_D @ V_Cir )
        & ( '2d.intersect/3' @ ( '2d.seg/2' @ V_A @ V_C ) @ ( '2d.seg/2' @ V_B @ V_D ) @ V_E )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_E ) )
          = 3 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_E ) )
          = 6 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_E ) )
          = 4 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_E ) )
          = V_x ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_Cir: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
        & ( '2d.on/2' @ V_A @ V_Cir )
        & ( '2d.on/2' @ V_B @ V_Cir )
        & ( '2d.on/2' @ V_C @ V_Cir )
        & ( '2d.on/2' @ V_D @ V_Cir )
        & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.line/2' @ V_B @ V_C ) @ V_E )
        & ( '2d.point-outside-of/2' @ V_E @ V_Cir )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_D ) )
          = 5 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = 9 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_D @ V_E ) )
          = 4 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_E ) )
          = V_x ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_Cir: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_Cir )
        & ( '2d.on/2' @ V_A @ V_Cir )
        & ( '2d.on/2' @ V_C @ V_Cir )
        & ( '2d.on/2' @ V_D @ V_Cir )
        & ( '2d.tangent/3' @ ( '2d.line/2' @ V_A @ V_B ) @ V_Cir @ V_A )
        & ( '2d.on/2' @ V_C @ ( '2d.seg/2' @ V_B @ V_D ) )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_A @ V_B ) )
          = V_x )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_B @ V_C ) )
          = 1 )
        & ( ( '2d.length-of/1' @ ( '2d.seg/2' @ V_C @ V_D ) )
          = 1 ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: 'R'] : ( V_x_dot_0 = 2 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: 'R'] : ( V_x_dot_0 = 3 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( V_x_dot_0
      = ( 'sqrt/1' @ 2 ) ) ),
    answer_to(p3_question,[])).
