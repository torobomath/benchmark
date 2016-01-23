%% DOMAIN:    Quadratic Functions
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1E014
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-07

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   69 (   4 equality;  21 variable)
%            Maximal formula depth :   17 (  10 average)
%            Number of connectives :   57 (   0   ~;   1   |;   6   &;  50   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   5   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_f: 'Equation',V_k: 'R'] :
        ( ( V_f
          = ( 'poly-equation/1' @ ( 'cons/2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_k @ 2 ) @ ( '*/2' @ 3 @ V_k ) ) @ -9 ) @ ( 'cons/2' @ V_k @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) )
        & ( 'is-solution-of/2' @ V_x @ V_f ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'R'] :
      ? [V_f: 'Equation',V_x1: 'Z',V_x2: 'Z'] :
        ( ( V_f
          = ( 'poly-equation/1' @ ( 'cons/2' @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_k @ 2 ) @ ( '*/2' @ 3 @ V_k ) ) @ -9 ) @ ( 'cons/2' @ V_k @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) )
        & ( 'int.is-integer/1' @ V_x1 )
        & ( 'int.is-integer/1' @ V_x2 )
        & ( 'int.</2' @ V_x1 @ V_x2 )
        & ( 'are-real-solutions-of/2' @ ( 'cons/2' @ ( 'int->real/1' @ V_x1 ) @ ( 'cons/2' @ ( 'int->real/1' @ V_x2 ) @ 'nil/0' ) ) @ V_f ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '<=/2' @ -3 @ V_x_dot_0 )
      & ( '<=/2' @ V_x_dot_0 @ 5 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_k_dot_0: 'R'] :
      ( ( V_k_dot_0 = 0 )
      | ( V_k_dot_0 = -4 ) ) ),
    answer_to(p2_question,[])).
