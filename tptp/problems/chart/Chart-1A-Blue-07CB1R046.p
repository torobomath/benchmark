%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1R046
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   84 (   9 equality;  20 variable)
%            Maximal formula depth :   15 (  10 average)
%            Number of connectives :   67 (   0   ~;   4   |;   6   &;  57   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   2   ?;   5   ^)
%                                         (   7   :;   0  !>;   0  ?*)
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
        & ( 33
          = ( 'int.+/2' @ ( 'int.*/2' @ 2 @ V_x ) @ ( 'int.*/2' @ 3 @ V_y ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_triple: 'Triple' @ 'Z' @ 'Z' @ 'Z'] :
              ( ( 'int.is-natural-number/1' @ ( 'fst-of-3/1' @ V_triple ) )
              & ( 'int.is-natural-number/1' @ ( 'snd-of-3/1' @ V_triple ) )
              & ( 'int.is-natural-number/1' @ ( 'third-of-3/1' @ V_triple ) )
              & ( 10
                = ( 'int.+/2' @ ( 'int.+/2' @ ( 'fst-of-3/1' @ V_triple ) @ ( 'int.*/2' @ 3 @ ( 'snd-of-3/1' @ V_triple ) ) ) @ ( 'third-of-3/1' @ V_triple ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 15 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 12 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 9 @ ( 'cons/2' @ 5 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 6 @ ( 'cons/2' @ 7 @ 'nil/0' ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 3 @ ( 'cons/2' @ 9 @ 'nil/0' ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 9 ) ),
    answer_to(p2_question,[])).
