%% DOMAIN:    Quadratic Functions
%% THEORY:    PA
%% LEVEL:     3
%% SOURCE:    Chart System Math I+A White Book, Problem 07CW1E203
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  101 (   2 equality;  19 variable)
%            Maximal formula depth :   11 (   8 average)
%            Number of connectives :   91 (   0   ~;   1   |;   6   &;  84   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   0   ?;   6   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p11_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( ( '</2' @ ( 'abs/1' @ ( '+/2' @ V_x @ ( 'int->real/1' @ 1 ) ) ) @ ( '//2' @ ( 'int->real/1' @ 3 ) @ ( 'int->real/1' @ 2 ) ) )
        & ( '</2' @ ( 'int->real/1' @ 0 ) @ ( '+/2' @ ( '+/2' @ ( '^/2' @ V_x @ ( 'int->real/1' @ 2 ) ) @ ( '*/2' @ ( 'int->real/1' @ -2 ) @ V_x ) ) @ ( 'int->real/1' @ -3 ) ) ) ) )).

thf(p12_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( ( '<=/2' @ ( 'int->real/1' @ 2 ) @ ( '+/2' @ ( '^/2' @ V_x @ ( 'int->real/1' @ 2 ) ) @ ( '-/1' @ V_x ) ) )
        & ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_x @ ( 'int->real/1' @ 2 ) ) @ ( '-/1' @ V_x ) ) @ ( '+/2' @ ( '*/2' @ ( 'int->real/1' @ 4 ) @ V_x ) @ ( 'int->real/1' @ -4 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'Z'] :
        ( ( 'int.is-integer/1' @ V_x )
        & ( 'int.</2' @ ( 'int.*/2' @ 2 @ ( 'int.^/2' @ V_x @ 2 ) ) @ ( 'int.+/2' @ ( 'int.*/2' @ 7 @ V_x ) @ 4 ) )
        & ( 'int.<=/2' @ ( 'int.*/2' @ 3 @ V_x ) @ ( 'int.+/2' @ ( 'int.^/2' @ V_x @ 2 ) @ 1 ) ) ) )).

thf(p11_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '</2' @ ( '//2' @ ( 'int->real/1' @ -5 ) @ ( 'int->real/1' @ 2 ) ) @ V_x_dot_0 )
      & ( '</2' @ V_x_dot_0 @ ( 'int->real/1' @ -1 ) ) ) ),
    answer_to(p11_question,[])).

thf(p12_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '<=/2' @ ( 'int->real/1' @ 2 ) @ V_x_dot_0 )
      & ( '<=/2' @ V_x_dot_0 @ ( 'int->real/1' @ 4 ) ) ) ),
    answer_to(p12_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: 'Z'] :
      ( ( V_x_dot_0 = 0 )
      | ( V_x_dot_0 = 3 ) ) ),
    answer_to(p2_question,[])).
