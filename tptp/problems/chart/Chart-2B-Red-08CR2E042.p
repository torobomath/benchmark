%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    ZF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E042
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   67 (   4 equality;  27 variable)
%            Maximal formula depth :   25 (  14 average)
%            Number of connectives :   58 (   1   ~;   0   |;   5   &;  50   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :    9 (   0 sgn;   2   !;   3   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'R'] :
      ? [V_S: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_S
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( 0
                = ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '*/2' @ 10 @ ( '^/2' @ V_x_dot_0 @ 2 ) ) @ ( '*/2' @ ( '*/2' @ V_k @ V_x_dot_0 ) @ V_y_dot_0 ) ) @ ( '*/2' @ 2 @ ( '^/2' @ V_y_dot_0 @ 2 ) ) ) @ ( '*/2' @ -9 @ V_x_dot_0 ) ) @ ( '*/2' @ -4 @ V_y_dot_0 ) ) @ 2 ) ) ) )
        & ( '2d.line-type/1' @ V_l1 )
        & ( '2d.line-type/1' @ V_l2 )
        & ( V_l1 != V_l2 )
        & ! [V_x: 'R',V_y: 'R'] :
            ( ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_S )
             => ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.union/2' @ V_l1 @ V_l2 ) ) )
            & ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.union/2' @ V_l1 @ V_l2 ) )
             => ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_S ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_k_dot_0: 'R'] : ( V_k_dot_0 = 9 ) ),
    answer_to(p_question,[])).
