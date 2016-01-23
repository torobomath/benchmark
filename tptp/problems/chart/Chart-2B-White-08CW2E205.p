%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B White Book, Problem 08CW2E205
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-28

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   56 (   6 equality;  19 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   44 (   0   ~;   0   |;   4   &;  40   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
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
        & ? [V_t: 'R',V_C: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_C )
            & ( V_C
              = ( '2d.set-of-cfun/1'
                @ ^ [V_u: 'R',V_v: 'R'] :
                    ( 0
                    = ( '+/2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_u @ 2 ) @ ( '^/2' @ V_v @ 2 ) ) @ ( '*/2' @ ( '*/2' @ -2 @ V_t ) @ V_u ) ) @ ( '*/2' @ ( '*/2' @ -2 @ ( '-/2' @ 1 @ V_t ) ) @ V_v ) ) ) ) )
            & ( ( '2d.point/2' @ V_x @ V_y )
              = ( '2d.center-of/1' @ V_C ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 0
        = ( '+/2' @ ( '+/2' @ V_x @ V_y ) @ -1 ) ) ) ),
    answer_to(p_question,[])).
