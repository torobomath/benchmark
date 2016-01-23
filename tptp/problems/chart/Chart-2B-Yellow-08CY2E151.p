%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E151
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  109 (  14 equality;  36 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :   78 (   1   ~;   1   |;   9   &;  67   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   19 (   0 sgn;   0   !;   7   ?;  12   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_l: '2d.Shape',V_C: '2d.Shape',V_C0: '2d.Shape'] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( V_y_dot_0
                = ( '+/2' @ ( '*/2' @ V_m @ V_x_dot_0 ) @ 1 ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 0
                = ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '^/2' @ V_y @ 2 ) @ ( '+/2' @ ( '*/2' @ -2 @ V_x ) @ ( '+/2' @ ( '*/2' @ -4 @ V_y ) @ 4 ) ) ) ) ) ) )
        & ( V_C0 = V_C )
        & ( '2d.circle-type/1' @ V_C0 )
        & ( '2d.on/2' @ ( '2d.center-of/1' @ V_C0 ) @ V_l ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_l: '2d.Shape',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( V_y_dot_0
                = ( '+/2' @ ( '*/2' @ V_m @ V_x_dot_0 ) @ 1 ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 0
                = ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '^/2' @ V_y @ 2 ) @ ( '+/2' @ ( '*/2' @ -2 @ V_x ) @ ( '+/2' @ ( '*/2' @ -4 @ V_y ) @ 4 ) ) ) ) ) ) )
        & ( V_P != V_Q )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_l @ V_C ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_l @ V_C ) )
        & ( ( 'sqrt/1' @ 2 )
          = ( '2d.distance/2' @ V_P @ V_Q ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_m_dot_0: 'R'] : ( V_m_dot_0 = 1 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: 'R'] :
      ( ( V_m_dot_0
        = ( '+/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) )
      | ( V_m_dot_0
        = ( '-/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) ) ) ),
    answer_to(p2_question,[])).
