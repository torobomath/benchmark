%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     2
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P123
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   68 (   7 equality;  26 variable)
%            Maximal formula depth :   21 (  16 average)
%            Number of connectives :   53 (   1   ~;   1   |;   5   &;  45   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   11 (   0 sgn;   1   !;   4   ?;   6   ^)
%                                         (  11   :;   0  !>;   0  ?*)
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
                = ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '^/2' @ V_y_dot_0 @ 2 ) ) @ ( '*/2' @ 2 @ V_x_dot_0 ) ) @ ( '*/2' @ -4 @ V_y_dot_0 ) ) @ 1 ) ) ) )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '-/2' @ ( '*/2' @ 2 @ V_x ) @ V_k ) ) ) )
        & ? [V_P: '2d.Point',V_Q: '2d.Point'] :
            ( ( V_P != V_Q )
            & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_C @ V_l ) )
            & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_C @ V_l ) )
            & ! [V_R: '2d.Point'] :
                ( ( '2d.on/2' @ V_R @ ( '2d.intersection/2' @ V_C @ V_l ) )
               => ( ( V_P = V_R )
                  | ( V_Q = V_R ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_k_dot_0: 'R'] :
      ( '</2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_k_dot_0 @ 2 ) @ ( '*/2' @ 8 @ V_k_dot_0 ) ) @ -4 ) @ 0 ) ),
    answer_to(p_question,[])).
