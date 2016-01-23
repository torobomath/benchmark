%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E267
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-25

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   57 (  10 equality;  22 variable)
%            Maximal formula depth :   12 (   8 average)
%            Number of connectives :   33 (   0   ~;   0   |;   4   &;  27   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :   10 (   0 sgn;   6   !;   0   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_cosB: 'R'] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( ( 5
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( 3
            = ( '2d.distance/2' @ V_A @ V_C ) )
          & ( 6
            = ( '2d.distance/2' @ V_B @ V_C ) ) )
       => ( V_cosB
          = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_AM: 'R'] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point'] :
        ( ( ( 5
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( 3
            = ( '2d.distance/2' @ V_A @ V_C ) )
          & ( 6
            = ( '2d.distance/2' @ V_B @ V_C ) ) )
       => ( V_AM
          = ( '2d.distance/2' @ V_A @ ( '2d.midpoint-of/2' @ V_B @ V_C ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_cosB_dot_0: 'R'] :
      ( V_cosB_dot_0
      = ( '//2' @ 13 @ 15 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_AM_dot_0: 'R'] :
      ( V_AM_dot_0
      = ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) ) ),
    answer_to(p2_question,[])).
