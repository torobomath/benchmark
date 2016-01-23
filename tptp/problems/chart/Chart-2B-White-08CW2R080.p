%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2R080
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   66 (   6 equality;  18 variable)
%            Maximal formula depth :   20 (  15 average)
%            Number of connectives :   55 (   1   ~;   0   |;   6   &;  48   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ? [V_C: '2d.Shape',V_P: '2d.Point'] :
            ( ( '2d.circle-type/1' @ V_C )
            & ( V_P
             != ( '2d.point/2' @ 4 @ 2 ) )
            & ( V_C
              = ( '2d.set-of-cfun/1'
                @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                    ( 25
                    = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ 1 ) @ 2 ) @ ( '^/2' @ ( '+/2' @ V_y_dot_0 @ 2 ) @ 2 ) ) ) ) )
            & ( '2d.tangent/3' @ V_C @ ( '2d.line/2' @ ( '2d.point/2' @ 4 @ 2 ) @ V_P ) @ ( '2d.point/2' @ 4 @ 2 ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ 4 @ 2 ) @ V_P ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( V_y
        = ( '+/2' @ ( '*/2' @ ( '//2' @ -3 @ 4 ) @ V_x ) @ 5 ) ) ) ),
    answer_to(p_question,[])).
