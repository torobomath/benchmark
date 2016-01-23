%% DOMAIN:    Analysis, misc
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2002, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-04
%%
%% <PROBLEM-TEXT>
%% Find all real-valued functions on the reals such that
%% (f(x) + f(y))((f(u) + f(v)) = f(xu - yv) + f (xv + yu)
%% for all x, y, u, v.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   4 equality;  22 variable)
%            Maximal formula depth :   15 (  12 average)
%            Number of connectives :   39 (   0   ~;   2   |;   0   &;  37   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    9 (   2 sgn;   4   !;   0   ?;   5   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'R' > 'R'] :
      ! [V_x: 'R',V_y: 'R',V_u: 'R',V_v: 'R'] :
        ( ( '*/2' @ ( '+/2' @ ( 'LamApp/2' @ V_f @ V_x ) @ ( 'LamApp/2' @ V_f @ V_y ) ) @ ( '+/2' @ ( 'LamApp/2' @ V_f @ V_u ) @ ( 'LamApp/2' @ V_f @ V_v ) ) )
        = ( '+/2' @ ( 'LamApp/2' @ V_f @ ( '-/2' @ ( '*/2' @ V_x @ V_u ) @ ( '*/2' @ V_y @ V_v ) ) ) @ ( 'LamApp/2' @ V_f @ ( '+/2' @ ( '*/2' @ V_x @ V_v ) @ ( '*/2' @ V_y @ V_u ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: 'R' > 'R'] :
      ( ( V_f_dot_0
        = ( ^ [V_x_dot_2: 'R'] : 0 ) )
      | ( V_f_dot_0
        = ( ^ [V_x_dot_1: 'R'] :
              ( '//2' @ 1 @ 2 ) ) )
      | ( V_f_dot_0
        = ( ^ [V_x_dot_0: 'R'] :
              ( '^/2' @ V_x_dot_0 @ 2 ) ) ) ) ),
    answer_to(p_question,[])).
