%% DOMAIN:    Differentiation and its Applications
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P372
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   70 (   5 equality;  25 variable)
%            Maximal formula depth :   24 (  16 average)
%            Number of connectives :   60 (   0   ~;   1   |;  10   &;  49   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   5   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'Z'] :
      ? [V_P: 'Z' > $o,V_x1: 'Z',V_x2: 'Z',V_x3: 'Z',V_k: 'Z'] :
        ( ( V_P
          = ( ^ [V_x: 'Z'] :
                ( 0
                = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_x @ 3 ) @ ( 'int.*/2' @ -13 @ V_x ) ) @ V_k ) ) ) )
        & ( 'int.is-integer/1' @ V_x1 )
        & ( 'int.is-integer/1' @ V_x2 )
        & ( 'int.is-integer/1' @ V_x3 )
        & ( 'int.</2' @ V_x1 @ V_x2 )
        & ( 'int.</2' @ V_x2 @ V_x3 )
        & ( 'int.is-integer/1' @ V_k )
        & ( 'PLamApp/2' @ V_P @ V_x1 )
        & ( 'PLamApp/2' @ V_P @ V_x2 )
        & ( 'PLamApp/2' @ V_P @ V_x3 )
        & ( V_answer
          = ( 'cons/2' @ V_k @ ( 'cons/2' @ V_x1 @ ( 'cons/2' @ V_x2 @ ( 'cons/2' @ V_x3 @ 'nil/0' ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ 12 @ ( 'cons/2' @ -4 @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 3 @ 'nil/0' ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ -12 @ ( 'cons/2' @ -3 @ ( 'cons/2' @ -1 @ ( 'cons/2' @ 4 @ 'nil/0' ) ) ) ) ) ) ),
    answer_to(p_question,[])).
