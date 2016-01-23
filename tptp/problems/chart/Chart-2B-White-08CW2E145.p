%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E145
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   56 (   8 equality;   8 variable)
%            Maximal formula depth :    8 (   6 average)
%            Number of connectives :   32 (   0   ~;   0   |;   0   &;  32   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   0   ?;   8   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: 'R'] :
        ( V_d
        = ( '2d.point-shape-distance/2' @ '2d.origin/0' @ ( '2d.line2d/3' @ 3 @ 4 @ 12 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: 'R'] :
        ( V_d
        = ( '2d.point-shape-distance/2' @ ( '2d.point/2' @ -3 @ 7 ) @ ( '2d.line2d/3' @ 12 @ -5 @ 7 ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: 'R'] :
        ( V_d
        = ( '2d.point-shape-distance/2' @ ( '2d.point/2' @ 1 @ 2 ) @ ( '2d.line2d/3' @ 0 @ 1 @ 4 ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: 'R'] :
        ( V_d
        = ( '2d.point-shape-distance/2' @ ( '2d.point/2' @ 2 @ 8 ) @ ( '2d.line2d/3' @ 1 @ 0 @ -1 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_d_dot_0: 'R'] :
      ( V_d_dot_0
      = ( '//2' @ 12 @ 5 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_d_dot_0: 'R'] : ( V_d_dot_0 = 6 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_d_dot_0: 'R'] : ( V_d_dot_0 = 2 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_d_dot_0: 'R'] : ( V_d_dot_0 = 3 ) ),
    answer_to(p4_question,[])).
