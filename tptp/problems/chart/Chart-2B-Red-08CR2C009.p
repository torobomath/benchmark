%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2C009
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   93 (  12 equality;  20 variable)
%            Maximal formula depth :   11 (   8 average)
%            Number of connectives :   61 (   0   ~;   0   |;   8   &;  53   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   12 (   0 sgn;   0   !;   4   ?;   8   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: 'R'] :
      ? [V_l: '2d.Shape'] :
        ( ( V_l
          = ( '2d.line2d/3' @ 4 @ 3 @ 12 ) )
        & ( '</2' @ 0 @ V_d )
        & ( ( '^/2' @ V_d @ 2 )
          = ( '2d.point-shape-distance^2/2' @ '2d.origin/0' @ V_l ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: 'R'] :
      ? [V_l: '2d.Shape'] :
        ( ( V_l
          = ( '2d.line2d/3' @ 2 @ -3 @ -5 ) )
        & ( '</2' @ 0 @ V_d )
        & ( ( '^/2' @ V_d @ 2 )
          = ( '2d.point-shape-distance^2/2' @ ( '2d.point/2' @ 4 @ -1 ) @ V_l ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: 'R'] :
      ? [V_l: '2d.Shape'] :
        ( ( V_l
          = ( '2d.line2d/3' @ 1 @ 0 @ 2 ) )
        & ( '</2' @ 0 @ V_d )
        & ( ( '^/2' @ V_d @ 2 )
          = ( '2d.point-shape-distance^2/2' @ ( '2d.point/2' @ -1 @ 3 ) @ V_l ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_d: 'R'] :
      ? [V_l: '2d.Shape'] :
        ( ( V_l
          = ( '2d.line2d/3' @ 0 @ 1 @ 3 ) )
        & ( '</2' @ 0 @ V_d )
        & ( ( '^/2' @ V_d @ 2 )
          = ( '2d.point-shape-distance^2/2' @ ( '2d.point/2' @ 5 @ 6 ) @ V_l ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_d_dot_0: 'R'] :
      ( V_d_dot_0
      = ( '//2' @ 12 @ 5 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_d_dot_0: 'R'] :
      ( V_d_dot_0
      = ( '//2' @ ( '*/2' @ 16 @ ( 'sqrt/1' @ 13 ) ) @ 13 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_d_dot_0: 'R'] : ( V_d_dot_0 = 3 ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_d_dot_0: 'R'] : ( V_d_dot_0 = 3 ) ),
    answer_to(p4_question,[])).
