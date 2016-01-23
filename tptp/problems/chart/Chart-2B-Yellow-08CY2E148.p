%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E148
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   41 (   4 equality;  12 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   31 (   0   ~;   0   |;   2   &;  29   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   2   ?;   6   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'R'] :
      ? [V_C: '2d.Shape',V_l: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( 0
                = ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '^/2' @ V_y_dot_0 @ 2 ) ) @ ( '*/2' @ -4 @ V_x_dot_0 ) ) @ ( '*/2' @ -6 @ V_y_dot_0 ) ) @ 9 ) ) ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '+/2' @ ( '*/2' @ V_k @ V_x ) @ 2 ) ) ) )
        & ( '2d.intersect/2' @ V_C @ V_l ) ) )).

thf(p_answer,answer,(
    ^ [V_k_dot_0: 'R'] :
      ( '<=/2' @ ( '//2' @ -3 @ 4 ) @ V_k_dot_0 ) ),
    answer_to(p_question,[])).
