%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2C012
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   28 (   2 equality;   5 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :   22 (   0   ~;   0   |;   0   &;  22   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :    3 (   0 sgn;   0   !;   0   ?;   3   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: 'R',V_y: 'R'] :
              ( 0
              = ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '^/2' @ V_y @ 2 ) ) @ ( '*/2' @ -2 @ V_x ) ) @ ( '*/2' @ 6 @ V_y ) ) @ -6 ) ) ) ) )).

thf(p_answer,answer,
    ( '2d.circle/2' @ ( '2d.point/2' @ 1 @ -3 ) @ 4 ),
    answer_to(p_question,[])).
