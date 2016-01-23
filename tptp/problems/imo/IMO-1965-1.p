%% DOMAIN:    Geometry, trigonometric functions
%% THEORY:    trans
%% SOURCE:    International Mathematical Olympiad, 1965, Problem 1
%% SCORE:     4
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-17
%%
%% <PROBLEM-TEXT>
%% Determine all values $x$ in the interval $0 \leq x \leq 2\pi$ which satisfy
%% the inequality\[
%% 2 \cos x \leq | \sqrt{1 + \sin 2x} - \sqrt{1 - \sin 2x}| \leq \sqrt{2}.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   61 (   0 equality;   9 variable)
%            Maximal formula depth :   16 (  12 average)
%            Number of connectives :   59 (   0   ~;   0   |;   4   &;  55   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :    2 (   0 sgn;   0   !;   0   ?;   2   ^)
%                                         (   2   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( ( '<=/2' @ 0 @ V_x )
        & ( '<=/2' @ V_x @ ( '*/2' @ 2 @ 'Pi/0' ) )
        & ( '<=/2' @ ( '*/2' @ 2 @ ( 'cos/1' @ V_x ) ) @ ( 'abs/1' @ ( '-/2' @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( 'sin/1' @ ( '*/2' @ 2 @ V_x ) ) ) ) @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( 'sin/1' @ ( '*/2' @ 2 @ V_x ) ) ) ) ) ) )
        & ( '<=/2' @ ( 'abs/1' @ ( '-/2' @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( 'sin/1' @ ( '*/2' @ 2 @ V_x ) ) ) ) @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( 'sin/1' @ ( '*/2' @ 2 @ V_x ) ) ) ) ) ) @ ( 'sqrt/1' @ 2 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '<=/2' @ ( '//2' @ 'Pi/0' @ 4 ) @ V_x_dot_0 )
      & ( '<=/2' @ V_x_dot_0 @ ( '//2' @ ( '*/2' @ 'Pi/0' @ 7 ) @ 4 ) ) ) ),
    answer_to(p_question,[])).
