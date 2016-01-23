%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2R096
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   60 (   7 equality;  20 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :   42 (   0   ~;   1   |;   3   &;  38   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :   14 (   0 sgn;   0   !;   4   ?;  10   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'R'] :
      ? [V_l: '2d.Shape'] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 0
                = ( '+/2' @ ( '+/2' @ ( '*/2' @ ( '*/2' @ 2 @ V_k ) @ V_x ) @ V_y ) @ ( '^/2' @ V_k @ 2 ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 1 @ -8 ) @ V_l ) ) )).

thf(p2_qustion,question,
    ( 'Draw/1'
    @ ^ [V_Q: '2d.Point'] :
      ? [V_k: 'R',V_l: '2d.Shape',V_D: '2d.Shape'] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 0
                = ( '+/2' @ ( '+/2' @ ( '*/2' @ ( '*/2' @ 2 @ V_k ) @ V_x ) @ V_y ) @ ( '^/2' @ V_k @ 2 ) ) ) ) )
        & ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( '2d.on/2' @ V_P @ V_l ) ) )
        & ( '2d.on/2' @ V_Q @ V_D ) ) )).

thf(p1_answer,answer,(
    ^ [V_k_dot_0: 'R'] :
      ( ( V_k_dot_0 = 2 )
      | ( V_k_dot_0 = -4 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( '<=/2' @ V_y_dot_0 @ ( '^/2' @ V_x_dot_0 @ 2 ) ) ),
    answer_to(p2_question,[])).
