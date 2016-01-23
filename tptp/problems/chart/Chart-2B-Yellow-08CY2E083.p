%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E083
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   48 (   7 equality;  18 variable)
%            Maximal formula depth :   20 (  13 average)
%            Number of connectives :   33 (   1   ~;   3   |;   6   &;  23   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   3   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_k: 'Z'] :
      ? [V_P: 'Z' > $o,V_x1: 'Z',V_x2: 'Z'] :
        ( ( V_P
          = ( ^ [V_x: 'Z'] :
                ( 0
                = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_x @ 2 ) @ ( 'int.-/1' @ ( 'int.*/2' @ ( 'int.+/2' @ V_k @ 4 ) @ V_x ) ) ) @ ( 'int.*/2' @ 2 @ V_k ) ) @ 10 ) ) ) )
        & ( 'int.is-integer/1' @ V_k )
        & ( 'int.is-integer/1' @ V_x1 )
        & ( 'int.is-integer/1' @ V_x2 )
        & ( V_x1 != V_x2 )
        & ( 'PLamApp/2' @ V_P @ V_x1 )
        & ( 'PLamApp/2' @ V_P @ V_x2 ) ) )).

thf(p_answer,answer,(
    ^ [V_k_dot_0: 'Z'] :
      ( ( V_k_dot_0 = -7 )
      | ( V_k_dot_0 = -5 )
      | ( V_k_dot_0 = 7 )
      | ( V_k_dot_0 = 5 ) ) ),
    answer_to(p_question,[])).
