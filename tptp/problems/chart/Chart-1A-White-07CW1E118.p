%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E118
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   75 (   6 equality;  26 variable)
%            Maximal formula depth :   28 (  18 average)
%            Number of connectives :   63 (   0   ~;   0   |;  10   &;  53   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   5   ?;   5   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_p: 'Z',V_q: 'Z',V_max: 'Z'] :
        ( ( V_answer
          = ( 'cons/2' @ V_p @ ( 'cons/2' @ V_q @ ( 'cons/2' @ V_max @ 'nil/0' ) ) ) )
        & ( 'int.is-natural-number/1' @ V_p )
        & ( 'int.is-natural-number/1' @ V_q )
        & ( 'int.</2' @ ( 'int.+/2' @ V_p @ V_q ) @ 30 )
        & ( ( 'rat.ratio/2' @ ( 'int.+/2' @ V_p @ 1 ) @ ( 'int.+/2' @ V_q @ 3 ) )
          = ( 'rat.ratio/2' @ 2 @ 5 ) )
        & ( V_max
          = ( 'int.+/2' @ V_p @ V_q ) )
        & ( 'minimum/3'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'Z'] :
              ? [V_p0: 'Z',V_q0: 'Z'] :
                ( ( 'int.is-natural-number/1' @ V_p0 )
                & ( 'int.is-natural-number/1' @ V_q0 )
                & ( 'int.</2' @ ( 'int.+/2' @ V_p0 @ V_q0 ) @ 30 )
                & ( ( 'rat.ratio/2' @ ( 'int.+/2' @ V_p0 @ 1 ) @ ( 'int.+/2' @ V_q0 @ 3 ) )
                  = ( 'rat.ratio/2' @ 2 @ 5 ) )
                & ( V_v
                  = ( 'int.+/2' @ V_p0 @ V_q0 ) ) ) )
          @ ^ [V_lhs: 'Z',V_rhs: 'Z'] :
              ( 'int.</2' @ V_lhs @ V_rhs )
          @ V_max ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 7 @ ( 'cons/2' @ 17 @ ( 'cons/2' @ 24 @ 'nil/0' ) ) ) ) ),
    answer_to(p_question,[])).
