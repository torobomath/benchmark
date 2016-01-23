%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1R037
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   77 (   9 equality;  27 variable)
%            Maximal formula depth :   23 (  12 average)
%            Number of connectives :   65 (   0   ~;   0   |;  10   &;  55   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   14 (   0 sgn;   0   !;   6   ?;   8   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
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
              & ( 'int.is-natural-number/1' @ V_y )
              & ( 33
                = ( 'int.+/2' @ ( 'int.*/2' @ 2 @ V_x ) @ ( 'int.*/2' @ 3 @ V_y ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_x: 'Z',V_y: 'Z'] :
        ( ( 'minimum/3'
          @ ( 'set-by-def/1'
            @ ^ [V_pair: 'Pair' @ 'Z' @ 'Z'] :
              ? [V_x0: 'Z',V_y0: 'Z'] :
                ( ( V_x0
                  = ( 'fst/1' @ V_pair ) )
                & ( V_y0
                  = ( 'snd/1' @ V_pair ) )
                & ( 'int.is-natural-number/1' @ V_x0 )
                & ( 'int.is-natural-number/1' @ V_y0 )
                & ( 33
                  = ( 'int.+/2' @ ( 'int.*/2' @ 2 @ V_x0 ) @ ( 'int.*/2' @ 3 @ V_y0 ) ) )
                & ( 'int.<=/2' @ 10 @ V_x0 ) ) )
          @ ^ [V_lhs: 'Pair' @ 'Z' @ 'Z',V_rhs: 'Pair' @ 'Z' @ 'Z'] :
              ( 'int.</2' @ ( 'fst/1' @ V_lhs ) @ ( 'fst/1' @ V_rhs ) )
          @ ( 'pair/2' @ V_x @ V_y ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_n_dot_0: 'Z'] : ( V_n_dot_0 = 5 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 12 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) ),
    answer_to(p2_question,[])).
