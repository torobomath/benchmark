%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P099
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  129 (  14 equality;  44 variable)
%            Maximal formula depth :   26 (  12 average)
%            Number of connectives :  113 (   0   ~;   0   |;  20   &;  93   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :)
%            Number of variables   :   18 (   0 sgn;   0   !;   8   ?;  10   ^)
%                                         (  18   :;   0  !>;   0  ?*)
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
        & ( 'int.</2' @ V_x @ 10 )
        & ( 'int.is-natural-number/1' @ V_y )
        & ( 'int.</2' @ V_y @ 10 )
        & ( 55
          = ( 'int.+/2' @ ( 'int.*/2' @ 4 @ V_x ) @ ( 'int.*/2' @ 3 @ V_y ) ) ) ) )).

thf(p21_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( 'is-cardinality-of/2' @ V_n
        @ ( 'set-by-def/1'
          @ ^ [V_pair: 'Pair' @ 'Z' @ 'Z'] :
            ? [V_x: 'Z',V_y: 'Z'] :
              ( ( V_x
                = ( 'fst/1' @ V_pair ) )
              & ( V_y
                = ( 'snd/1' @ V_pair ) )
              & ( 'int.is-natural-number/1' @ V_x )
              & ( 'int.<=/2' @ V_x @ 20 )
              & ( 'int.is-natural-number/1' @ V_y )
              & ( 'int.<=/2' @ V_y @ 20 )
              & ( 55
                = ( 'int.+/2' @ ( 'int.*/2' @ 4 @ V_x ) @ ( 'int.*/2' @ 3 @ V_y ) ) ) ) ) ) )).

thf(p22_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_min: 'Triple' @ 'Z' @ 'Z' @ 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ ( 'fst-of-3/1' @ V_min ) @ ( 'cons/2' @ ( 'snd-of-3/1' @ V_min ) @ 'nil/0' ) ) )
        & ( 'minimum/3'
          @ ( 'set-by-def/1'
            @ ^ [V_triple: 'Triple' @ 'Z' @ 'Z' @ 'Z'] :
              ? [V_x: 'Z',V_y: 'Z',V_xy: 'Z'] :
                ( ( V_x
                  = ( 'fst-of-3/1' @ V_triple ) )
                & ( V_y
                  = ( 'snd-of-3/1' @ V_triple ) )
                & ( V_xy
                  = ( 'third-of-3/1' @ V_triple ) )
                & ( 'int.is-natural-number/1' @ V_x )
                & ( 'int.<=/2' @ V_x @ 20 )
                & ( 'int.is-natural-number/1' @ V_y )
                & ( 'int.<=/2' @ V_y @ 20 )
                & ( 55
                  = ( 'int.+/2' @ ( 'int.*/2' @ 4 @ V_x ) @ ( 'int.*/2' @ 3 @ V_y ) ) )
                & ( V_xy
                  = ( 'int.*/2' @ V_x @ V_y ) ) ) )
          @ ^ [V_lhs: 'Triple' @ 'Z' @ 'Z' @ 'Z',V_rhs: 'Triple' @ 'Z' @ 'Z' @ 'Z'] :
              ( 'int.</2' @ ( 'third-of-3/1' @ V_lhs ) @ ( 'third-of-3/1' @ V_rhs ) )
          @ V_min ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 7 @ ( 'cons/2' @ 9 @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p21_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 5 ) ),
    answer_to(p21_question,[])).

thf(p22_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 13 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ),
    answer_to(p22_question,[])).
