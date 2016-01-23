%% DOMAIN:    Geometric Quantities
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1R125
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   37 (   5 equality;  18 variable)
%            Maximal formula depth :   16 (  10 average)
%            Number of connectives :   25 (   0   ~;   0   |;   4   &;  20   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    6 (   0 sgn;   4   !;   0   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_AD: 'R'] :
      ! [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point'] :
        ( ( ( 15
            = ( '2d.distance/2' @ V_A @ V_B ) )
          & ( 18
            = ( '2d.distance/2' @ V_B @ V_C ) )
          & ( 12
            = ( '2d.distance/2' @ V_C @ V_A ) )
          & ( '2d.on/2' @ V_D @ ( '2d.seg/2' @ V_B @ V_C ) )
          & ( '2d.is-angle-bisector/2' @ ( '2d.line/2' @ V_A @ V_D ) @ ( '2d.angle/3' @ V_B @ V_A @ V_C ) ) )
       => ( V_AD
          = ( '2d.distance/2' @ V_A @ V_D ) ) ) )).

thf(p_answer,answer,(
    ^ [V_AD_dot_0: 'R'] : ( V_AD_dot_0 = 10 ) ),
    answer_to(p_question,[])).
