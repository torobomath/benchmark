%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1C032
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   59 (  10 equality;  22 variable)
%            Maximal formula depth :   14 (   9 average)
%            Number of connectives :   35 (   0   ~;   0   |;   4   &;  29   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :   10 (   0 sgn;   6   !;   0   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( ( 3
            = ( '2d.distance/2' @ V_C @ V_A ) )
          & ( ( 'sqrt/1' @ 2 )
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) )
            = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_A @ V_B ) ) ) )
       => ( V_a
          = ( '2d.distance/2' @ V_B @ V_C ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_cosB: 'R'] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( ( 5
            = ( '2d.distance/2' @ V_B @ V_C ) )
          & ( 7
            = ( '2d.distance/2' @ V_C @ V_A ) )
          & ( 8
            = ( '2d.distance/2' @ V_A @ V_B ) ) )
       => ( V_cosB
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_C @ V_B @ V_A ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( V_a_dot_0
      = ( 'sqrt/1' @ 5 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_cosB_dot_0: 'R'] :
      ( V_cosB_dot_0
      = ( '//2' @ 1 @ 2 ) ) ),
    answer_to(p2_question,[])).
