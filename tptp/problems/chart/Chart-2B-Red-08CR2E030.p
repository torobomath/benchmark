%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    PA
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E030
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   65 (   4 equality;  25 variable)
%            Maximal formula depth :   24 (  16 average)
%            Number of connectives :   57 (   0   ~;   0   |;  10   &;  47   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   5   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_P: 'Z' > $o,V_x1: 'Z',V_x2: 'Z',V_x3: 'Z',V_a: 'Z'] :
        ( ( V_P
          = ( ^ [V_x: 'Z'] :
                ( 0
                = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_x @ 3 ) @ ( 'int.*/2' @ -12 @ ( 'int.^/2' @ V_x @ 2 ) ) ) @ ( 'int.*/2' @ 47 @ V_x ) ) @ V_a ) ) ) )
        & ( 'int.</2' @ V_x1 @ V_x2 )
        & ( 'int.</2' @ V_x2 @ V_x3 )
        & ( 'int.is-integer/1' @ V_x1 )
        & ( 'int.is-integer/1' @ V_x2 )
        & ( 'int.is-integer/1' @ V_x3 )
        & ( 'int.is-integer/1' @ V_a )
        & ( 'PLamApp/2' @ V_P @ V_x1 )
        & ( 'PLamApp/2' @ V_P @ V_x2 )
        & ( 'PLamApp/2' @ V_P @ V_x3 )
        & ( V_answer
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_x1 @ ( 'cons/2' @ V_x2 @ ( 'cons/2' @ V_x3 @ 'nil/0' ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ -60 @ ( 'cons/2' @ 3 @ ( 'cons/2' @ 4 @ ( 'cons/2' @ 5 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p_question,[])).
