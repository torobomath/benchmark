%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1R039
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   73 (   4 equality;  17 variable)
%            Maximal formula depth :   20 (  10 average)
%            Number of connectives :   61 (   0   ~;   2   |;   4   &;  55   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   0   ?;   7   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( ( 'int.is-natural-number/1' @ V_n )
        & ( 'maximum/3'
          @ ( 'set-by-def/1'
            @ ^ [V_n0: 'Z'] :
                ( ( 'int.is-natural-number/1' @ V_n0 )
                & ( 'rat.<=/2' @ ( 'rat.+/2' @ ( 'rat.ratio/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 3 @ V_n0 ) @ -1 ) @ 4 ) @ ( 'rat.ratio/2' @ ( 'int.-/1' @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ V_n0 ) @ -3 ) ) @ 5 ) ) @ ( 'rat.+/2' @ ( 'rat.ratio/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 7 @ V_n0 ) @ -7 ) @ 10 ) @ ( 'rat.int->rat/1' @ -1 ) ) ) ) )
          @ ^ [V_lhs: 'Z',V_rhs: 'Z'] :
              ( 'int.</2' @ V_lhs @ V_rhs )
          @ V_n ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( ( 'int.is-integer/1' @ V_x )
        & ( 'int.<=/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 5 @ V_x ) @ -2 ) @ ( 'int.*/2' @ 2 @ ( 'int.+/2' @ V_x @ 1 ) ) )
        & ( 'int.</2' @ ( 'int.*/2' @ -5 @ V_x ) @ ( 'int.+/2' @ ( 'int.*/2' @ -3 @ V_x ) @ 4 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 5 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: 'Z'] :
      ( ( V_x_dot_0 = -1 )
      | ( V_x_dot_0 = 0 )
      | ( V_x_dot_0 = 1 ) ) ),
    answer_to(p2_question,[])).
