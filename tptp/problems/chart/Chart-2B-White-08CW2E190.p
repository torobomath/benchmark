%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E190
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   52 (   7 equality;  18 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :   38 (   0   ~;   0   |;   5   &;  33   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   11 (   0 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_O: '2d.Point',V_l: '2d.Shape',V_Q: '2d.Point'] :
        ( ( V_O = '2d.origin/0' )
        & ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( 5
                = ( '+/2' @ ( '*/2' @ 2 @ V_x_dot_0 ) @ ( '*/2' @ 3 @ V_y_dot_0 ) ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.on/2' @ V_Q @ V_l )
        & ( ( '2d.point/2' @ V_x @ V_y )
          = ( '2d.internally-dividing-point/3' @ V_O @ V_Q @ ( '//2' @ 2 @ 3 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 10
        = ( '+/2' @ ( '*/2' @ 6 @ V_x ) @ ( '*/2' @ 9 @ V_y ) ) ) ) ),
    answer_to(p_question,[])).
