%% DOMAIN:    Geometry, trigonometric functions
%% THEORY:    PA+trans
%% SOURCE:    International Mathematical Olympiad, 1961, Problem 3
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2015-01-29
%%
%% <PROBLEM-TEXT>
%% Solve the equation $\cos^n x - \sin^n x = 1$, where $n$ is a natural number.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   50 (   4 equality;  13 variable)
%            Maximal formula depth :   13 (  12 average)
%            Number of connectives :   40 (   0   ~;   2   |;   3   &;  35   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( ( ( '-/2' @ ( '^/2' @ ( 'cos/1' @ V_x ) @ ( 'int->real/1' @ V_n ) ) @ ( '^/2' @ ( 'sin/1' @ V_x ) @ ( 'int->real/1' @ V_n ) ) )
          = 1 )
        & ( '>=/2' @ ( 'int->real/1' @ V_n ) @ 1 ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( ( 'int.is-odd-number/1' @ V_n )
        & ? [V_m_dot_0: 'Z'] :
            ( ( V_x_dot_0
              = ( '*/2' @ 2 @ ( '*/2' @ ( 'int->real/1' @ V_m_dot_0 ) @ 'Pi/0' ) ) )
            | ( V_x_dot_0
              = ( '+/2' @ ( '*/2' @ 2 @ ( '*/2' @ ( 'int->real/1' @ V_m_dot_0 ) @ 'Pi/0' ) ) @ ( '//2' @ ( '*/2' @ 3 @ 'Pi/0' ) @ 2 ) ) ) ) )
      | ( ( 'int.is-even-number/1' @ V_n )
        & ? [V_m: 'Z'] :
            ( V_x_dot_0
            = ( '*/2' @ ( 'int->real/1' @ V_m ) @ 'Pi/0' ) ) ) ) ),
    answer_to(p_question,[])).
