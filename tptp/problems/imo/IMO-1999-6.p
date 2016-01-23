%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1999, Problem 6
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Determine all functions $f : ¥mathbf{R} ¥rightarrow ¥mathbf{R}$ such that
%% ¥[
%% f(x - f(y)) = f(f(y)) + xf(y) + f(x) - 1
%% ¥]
%% for all real numbers $x$, $y$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   36 (   2 equality;  14 variable)
%            Maximal formula depth :   12 (  11 average)
%            Number of connectives :   30 (   0   ~;   0   |;   0   &;  30   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    5 (   0 sgn;   2   !;   0   ?;   3   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'R2R'] :
      ! [V_x: 'R',V_y: 'R'] :
        ( ( 'funapp/2' @ V_f @ ( '-/2' @ V_x @ ( 'funapp/2' @ V_f @ V_y ) ) )
        = ( '+/2' @ ( 'funapp/2' @ V_f @ ( 'funapp/2' @ V_f @ V_y ) ) @ ( '+/2' @ ( '*/2' @ V_x @ ( 'funapp/2' @ V_f @ V_y ) ) @ ( '+/2' @ ( 'funapp/2' @ V_f @ V_x ) @ -1 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: 'R2R'] :
      ( V_f_dot_0
      = ( 'fun/1'
        @ ^ [V_x_dot_0: 'R'] :
            ( '-/2' @ 1 @ ( '//2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ 2 ) ) ) ) ),
    answer_to(p_question,[])).
