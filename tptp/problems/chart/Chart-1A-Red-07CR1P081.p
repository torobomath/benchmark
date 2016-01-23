%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P081
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  103 (   9 equality;  28 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   85 (   0   ~;   3   |;  10   &;  72   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   5   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_x: 'Z',V_y: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( 'int.is-natural-number/1' @ V_x )
        & ( 'int.is-natural-number/1' @ V_y )
        & ( 'int.</2' @ V_x @ V_y )
        & ( ( 'rat.ratio/2' @ 1 @ 4 )
          = ( 'rat.+/2' @ ( 'rat.ratio/2' @ 1 @ V_x ) @ ( 'rat.ratio/2' @ 1 @ V_y ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_l: 'Z',V_m: 'Z',V_n: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_l @ ( 'cons/2' @ V_m @ ( 'cons/2' @ V_n @ 'nil/0' ) ) ) )
        & ( 'int.is-natural-number/1' @ V_l )
        & ( 'int.is-natural-number/1' @ V_m )
        & ( 'int.is-natural-number/1' @ V_n )
        & ( 'int.<=/2' @ V_l @ V_m )
        & ( 'int.<=/2' @ V_m @ V_n )
        & ( ( 'rat.int->rat/1' @ 1 )
          = ( 'rat.+/2' @ ( 'rat.+/2' @ ( 'rat.ratio/2' @ 1 @ V_l ) @ ( 'rat.ratio/2' @ 1 @ V_m ) ) @ ( 'rat.ratio/2' @ 1 @ V_n ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 5 @ ( 'cons/2' @ 20 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 6 @ ( 'cons/2' @ 12 @ 'nil/0' ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 3 @ ( 'cons/2' @ 6 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 4 @ ( 'cons/2' @ 4 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 3 @ ( 'cons/2' @ 3 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p2_question,[])).
