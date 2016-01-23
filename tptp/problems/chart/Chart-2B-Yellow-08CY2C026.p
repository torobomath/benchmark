%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2C026
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   27 (   4 equality;   4 variable)
%            Maximal formula depth :    8 (   6 average)
%            Number of connectives :   15 (   0   ~;   0   |;   0   &;  15   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :    4 (   0 sgn;   0   !;   0   ?;   4   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: 'R'] :
        ( V_d
        = ( '2d.distance/2' @ ( '2d.point/2' @ -2 @ 4 ) @ ( '2d.point/2' @ 7 @ -3 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: 'R'] :
        ( V_d
        = ( '2d.distance/2' @ ( '2d.point/2' @ 0 @ 0 ) @ ( '2d.point/2' @ -6 @ 8 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_d_dot_0: 'R'] :
      ( V_d_dot_0
      = ( 'sqrt/1' @ 130 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_d_dot_0: 'R'] : ( V_d_dot_0 = 10 ) ),
    answer_to(p2_question,[])).
