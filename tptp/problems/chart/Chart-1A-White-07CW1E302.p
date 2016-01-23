%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E302
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   93 (  12 equality;  47 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :   65 (   0   ~;   0   |;  12   &;  51   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   14 (   0 sgn;   8   !;   2   ?;   4   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_cosA: 'R'] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
          & ? [V_circle: '2d.Shape'] :
              ( ( '2d.circle-type/1' @ V_circle )
              & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) @ V_circle ) )
          & ( 4
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( 5
            = ( '2d.distance/2' @ V_B @ V_C ) )
          & ( 7
            = ( '2d.distance/2' @ V_C @ V_D ) )
          & ( 10
            = ( '2d.distance/2' @ V_D @ V_A ) ) )
       => ( V_cosA
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_D @ V_A @ V_B ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( ( '2d.is-square/4' @ V_A @ V_B @ V_C @ V_D )
          & ? [V_circle: '2d.Shape'] :
              ( ( '2d.circle-type/1' @ V_circle )
              & ( '2d.is-inscribed-in/2' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) @ V_circle ) )
          & ( 4
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( 5
            = ( '2d.distance/2' @ V_B @ V_C ) )
          & ( 7
            = ( '2d.distance/2' @ V_C @ V_D ) )
          & ( 10
            = ( '2d.distance/2' @ V_D @ V_A ) ) )
       => ( V_S
          = ( '2d.area-of/1' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_cosA_dot_0: 'R'] :
      ( V_cosA_dot_0
      = ( '//2' @ 7 @ 25 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] : ( V_S_dot_0 = 36 ) ),
    answer_to(p2_question,[])).
