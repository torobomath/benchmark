%% DOMAIN:    Geometry, trigonometric functions
%% THEORY:    trans
%% SOURCE:    International Mathematical Olympiad, 1962, Problem 4
%% SCORE:     5
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-23
%%
%% <PROBLEM-TEXT>
%% Solve the equation $\cos^2 x + \cos^2 2x + \cos^2 3x = 1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   71 (   5 equality;  12 variable)
%            Maximal formula depth :   14 (  13 average)
%            Number of connectives :   59 (   0   ~;   3   |;   1   &;  55   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    3 (   0 sgn;   0   !;   1   ?;   2   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( ( '+/2' @ ( '^/2' @ ( 'cos/1' @ V_x ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( 'cos/1' @ ( '*/2' @ 2 @ V_x ) ) @ 2 ) @ ( '^/2' @ ( 'cos/1' @ ( '*/2' @ 3 @ V_x ) ) @ 2 ) ) )
        = 1 ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
    ? [V_n: 'Z'] :
      ( ( 'int.is-integer/1' @ V_n )
      & ( ( V_x_dot_0
          = ( '*/2' @ ( '+/2' @ ( '*/2' @ 2 @ ( 'int->real/1' @ V_n ) ) @ ( '//2' @ 1 @ 2 ) ) @ 'Pi/0' ) )
        | ( V_x_dot_0
          = ( '*/2' @ ( '+/2' @ ( '*/2' @ 2 @ ( 'int->real/1' @ V_n ) ) @ ( '//2' @ 3 @ 2 ) ) @ 'Pi/0' ) )
        | ( V_x_dot_0
          = ( '*/2' @ ( '+/2' @ ( '*/2' @ 2 @ ( 'int->real/1' @ V_n ) ) @ ( '//2' @ 1 @ 4 ) ) @ 'Pi/0' ) )
        | ( V_x_dot_0
          = ( '*/2' @ ( '+/2' @ ( '*/2' @ 2 @ ( 'int->real/1' @ V_n ) ) @ ( '//2' @ 3 @ 4 ) ) @ 'Pi/0' ) ) ) ) ),
    answer_to(p_question,[])).
