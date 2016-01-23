%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     2
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P084
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   81 (   8 equality;  25 variable)
%            Maximal formula depth :   18 (  10 average)
%            Number of connectives :   61 (   0   ~;   1   |;   9   &;  51   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_y: 'R'] :
        ( ( V_y
          = ( '+/2' @ V_x @ ( 'int->real/1' @ 3 ) ) )
        & ( ( '+/2' @ ( '*/2' @ V_x @ V_y ) @ ( 'int->real/1' @ 42 ) )
          = ( '+/2' @ V_x @ ( '*/2' @ ( 'int->real/1' @ 10 ) @ V_y ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
      ? [V_x: 'Z',V_y: 'Z'] :
        ( ( 'int.is-integer/1' @ V_x )
        & ( 'int.<=/2' @ 0 @ V_x )
        & ( 'int.<=/2' @ V_x @ 9 )
        & ( 'int.is-integer/1' @ V_y )
        & ( 'int.</2' @ 0 @ V_y )
        & ( 'int.<=/2' @ V_y @ 9 )
        & ( V_y
          = ( 'int.+/2' @ V_x @ 3 ) )
        & ( ( 'int.+/2' @ ( 'int.*/2' @ V_x @ V_y ) @ 42 )
          = ( 'int.+/2' @ V_x @ ( 'int.*/2' @ 10 @ V_y ) ) )
        & ( V_n
          = ( 'int.+/2' @ V_x @ ( 'int.*/2' @ 10 @ V_y ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( 'int->real/1' @ 0 )
      = ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ ( 'int->real/1' @ 2 ) ) @ ( '*/2' @ ( 'int->real/1' @ -8 ) @ V_x_dot_0 ) ) @ ( 'int->real/1' @ 12 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: 'Z'] :
      ( ( V_n_dot_0 = 52 )
      | ( V_n_dot_0 = 96 ) ) ),
    answer_to(p2_question,[])).
