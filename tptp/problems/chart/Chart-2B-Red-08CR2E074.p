%% DOMAIN:    Exponential and Logarithm Function
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E074
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  109 (  10 equality;  39 variable)
%            Maximal formula depth :   32 (  20 average)
%            Number of connectives :   92 (   3   ~;   2   |;  18   &;  69   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   6   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_a: 'Z',V_b: 'Z',V_c: 'Z',V_x: 'R',V_y: 'R',V_z: 'R'] :
        ( ( 'int.is-integer/1' @ V_a )
        & ( 'int.</2' @ 0 @ V_a )
        & ( 'int.is-integer/1' @ V_b )
        & ( 'int.<=/2' @ V_a @ V_b )
        & ( 'int.is-integer/1' @ V_c )
        & ( 'int.<=/2' @ V_b @ V_c )
        & ( 'real-number/1' @ V_x )
        & ( '</2' @ 0 @ V_x )
        & ( V_x
         != ( 'int->real/1' @ 1 ) )
        & ( 'real-number/1' @ V_y )
        & ( '</2' @ 0 @ V_y )
        & ( V_y
         != ( 'int->real/1' @ 1 ) )
        & ( 'real-number/1' @ V_z )
        & ( '</2' @ 0 @ V_z )
        & ( V_z
         != ( 'int->real/1' @ 1 ) )
        & ( ( '^/2' @ V_x @ ( 'int->real/1' @ V_a ) )
          = ( '*/2' @ V_x @ ( '*/2' @ V_y @ V_z ) ) )
        & ( ( '^/2' @ V_y @ ( 'int->real/1' @ V_b ) )
          = ( '*/2' @ V_x @ ( '*/2' @ V_y @ V_z ) ) )
        & ( ( '^/2' @ V_z @ ( 'int->real/1' @ V_c ) )
          = ( '*/2' @ V_x @ ( '*/2' @ V_y @ V_z ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 3 @ ( 'cons/2' @ 6 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 2 @ ( 'cons/2' @ 4 @ ( 'cons/2' @ 4 @ 'nil/0' ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ 3 @ ( 'cons/2' @ 3 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p_question,[])).
