%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E077
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   46 (   7 equality;  18 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   31 (   1   ~;   3   |;   6   &;  21   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   3   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'Z'] :
      ? [V_P: 'Z' > $o,V_alpha: 'Z',V_beta: 'Z'] :
        ( ( V_P
          = ( ^ [V_x: 'Z'] :
                ( 0
                = ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_x @ 2 ) @ ( 'int.*/2' @ ( 'int.+/2' @ 2 @ V_a ) @ V_x ) ) @ 3 ) @ ( 'int.-/1' @ V_a ) ) ) ) )
        & ( 'int.is-integer/1' @ V_a )
        & ( 'int.is-integer/1' @ V_alpha )
        & ( 'int.is-integer/1' @ V_beta )
        & ( V_alpha != V_beta )
        & ( 'PLamApp/2' @ V_P @ V_alpha )
        & ( 'PLamApp/2' @ V_P @ V_beta ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: 'Z'] :
      ( ( V_a_dot_0 = -11 )
      | ( V_a_dot_0 = -9 )
      | ( V_a_dot_0 = 1 )
      | ( V_a_dot_0 = 3 ) ) ),
    answer_to(p_question,[])).
