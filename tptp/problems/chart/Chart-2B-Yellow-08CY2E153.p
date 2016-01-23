%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E153
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  129 (   8 equality;  41 variable)
%            Maximal formula depth :   26 (  19 average)
%            Number of connectives :  113 (   0   ~;   1   |;  12   &; 100   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   0   :)
%            Number of variables   :   15 (   0 sgn;   0   !;   5   ?;   6   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_C: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( 8
                = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_1 @ 2 ) @ 2 ) @ ( '^/2' @ ( '+/2' @ V_y_dot_1 @ 1 ) @ 2 ) ) ) ) )
        & ( V_C2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( 10
                = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ 1 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y_dot_0 @ 2 ) @ 2 ) ) ) ) )
        & ( ( '</2' @ ( '2d.x-coord/1' @ V_P ) @ ( '2d.x-coord/1' @ V_Q ) )
          | ( ( ( '2d.x-coord/1' @ V_P )
              = ( '2d.x-coord/1' @ V_Q ) )
            & ( '</2' @ ( '2d.y-coord/1' @ V_P ) @ ( '2d.y-coord/1' @ V_Q ) ) ) )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_C1 @ V_C2 ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_C1 @ V_C2 ) )
        & ( '2d.circle-type/1' @ V_C )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( '2d.on/2' @ '2d.origin/0' @ V_C )
        & ( V_answer
          = ( 'cons/2' @ ( '2d.x-coord/1' @ V_P ) @ ( 'cons/2' @ ( '2d.y-coord/1' @ V_P ) @ ( 'cons/2' @ ( '2d.x-coord/1' @ V_Q ) @ ( 'cons/2' @ ( '2d.y-coord/1' @ V_Q ) @ ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_C ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ ( '//2' @ -4 @ 5 ) @ ( 'cons/2' @ ( '//2' @ -3 @ 5 ) @ ( 'cons/2' @ 4 @ ( 'cons/2' @ 1 @ ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) ) ) ) ) )
      & ( 0
        = ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '^/2' @ V_y @ 2 ) ) @ ( '*/2' @ -7 @ V_x ) ) @ ( '*/2' @ 11 @ V_y ) ) ) ) ),
    answer_to(p_question,[])).
