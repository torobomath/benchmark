%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A Red Book, Problem 07CR1E017
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  154 (   6 equality;  49 variable)
%            Maximal formula depth :   33 (  18 average)
%            Number of connectives :  142 (   0   ~;   2   |;  20   &; 120   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   18 (   0 sgn;   0   !;   8   ?;  10   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_a: 'Z',V_b: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
        & ( 'int.is-natural-number/1' @ V_a )
        & ( 'int.is-natural-number/1' @ V_b )
        & ( 'int.</2' @ V_a @ V_b )
        & ( 'rat.</2' @ ( 'rat.+/2' @ ( 'rat.ratio/2' @ 1 @ V_a ) @ ( 'rat.ratio/2' @ 1 @ V_b ) ) @ ( 'rat.ratio/2' @ 1 @ 4 ) )
        & ( 'minimum/3'
          @ ( 'set-by-def/1'
            @ ^ [V_b0: 'Z'] :
                ( ( 'int.is-natural-number/1' @ V_b0 )
                & ? [V_a0: 'Z'] :
                    ( ( 'int.is-natural-number/1' @ V_a0 )
                    & ( 'int.</2' @ V_a0 @ V_b0 )
                    & ( 'rat.</2' @ ( 'rat.+/2' @ ( 'rat.ratio/2' @ 1 @ V_a0 ) @ ( 'rat.ratio/2' @ 1 @ V_b0 ) ) @ ( 'rat.ratio/2' @ 1 @ 4 ) ) ) ) )
          @ ^ [V_lhs: 'Z',V_rhs: 'Z'] :
              ( 'int.</2' @ V_lhs @ V_rhs )
          @ V_b ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_a: 'Z',V_b: 'Z',V_c: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) )
        & ( 'int.is-natural-number/1' @ V_a )
        & ( 'int.is-natural-number/1' @ V_b )
        & ( 'int.is-natural-number/1' @ V_c )
        & ( 'int.</2' @ V_a @ V_b )
        & ( 'int.</2' @ V_b @ V_c )
        & ( 'rat.</2' @ ( 'rat.+/2' @ ( 'rat.+/2' @ ( 'rat.ratio/2' @ 1 @ V_a ) @ ( 'rat.ratio/2' @ 1 @ V_b ) ) @ ( 'rat.ratio/2' @ 1 @ V_c ) ) @ ( 'rat.ratio/2' @ 1 @ 3 ) )
        & ( 'minimum/3'
          @ ( 'set-by-def/1'
            @ ^ [V_c0: 'Z'] :
                ( ( 'int.is-natural-number/1' @ V_c0 )
                & ? [V_a0: 'Z',V_b0: 'Z'] :
                    ( ( 'int.is-natural-number/1' @ V_b0 )
                    & ( 'int.is-natural-number/1' @ V_c0 )
                    & ( 'int.</2' @ V_a0 @ V_b0 )
                    & ( 'int.</2' @ V_b0 @ V_c0 )
                    & ( 'rat.</2' @ ( 'rat.+/2' @ ( 'rat.+/2' @ ( 'rat.ratio/2' @ 1 @ V_a0 ) @ ( 'rat.ratio/2' @ 1 @ V_b0 ) ) @ ( 'rat.ratio/2' @ 1 @ V_c0 ) ) @ ( 'rat.ratio/2' @ 1 @ 3 ) ) ) ) )
          @ ^ [V_lhs: 'Z',V_rhs: 'Z'] :
              ( 'int.</2' @ V_lhs @ V_rhs )
          @ V_c ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 8 @ ( 'cons/2' @ 9 @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 8 @ ( 'cons/2' @ 10 @ ( 'cons/2' @ 11 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 9 @ ( 'cons/2' @ 10 @ ( 'cons/2' @ 11 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 8 @ ( 'cons/2' @ 9 @ ( 'cons/2' @ 11 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p2_question,[])).
