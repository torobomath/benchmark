%% DOMAIN:    Algebra, number sequences
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1981, Problem 3
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23
%%
%% <PROBLEM-TEXT>
%% Determine the maximum value of $m^3+n^3$, where $m$ and $n$ are integers
%% satisfying $m$, $n¥in ¥{1, 2, ¥ldots, 1981¥}$ and $(n^2 - m n - m^2)^2 = 1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   3 equality;  13 variable)
%            Maximal formula depth :   23 (  15 average)
%            Number of connectives :   41 (   0   ~;   0   |;   5   &;  36   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    5 (   0 sgn;   0   !;   2   ?;   3   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_max: 'Z'] :
        ( 'int.maximum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_var: 'Z'] :
            ? [V_m: 'Z',V_n: 'Z'] :
              ( ( 'int.<=/2' @ 1 @ V_m )
              & ( 'int.<=/2' @ V_m @ 1981 )
              & ( 'int.<=/2' @ 1 @ V_n )
              & ( 'int.<=/2' @ V_n @ 1981 )
              & ( 1
                = ( 'int.^/2' @ ( 'int.-/2' @ ( 'int.-/2' @ ( 'int.^/2' @ V_n @ 2 ) @ ( 'int.*/2' @ V_m @ V_n ) ) @ ( 'int.^/2' @ V_m @ 2 ) ) @ 2 ) )
              & ( V_var
                = ( 'int.+/2' @ ( 'int.^/2' @ V_m @ 3 ) @ ( 'int.^/2' @ V_n @ 3 ) ) ) ) )
        @ V_max ) )).

thf(p_answer,answer,(
    ^ [V_max_dot_0: 'Z'] :
      ( V_max_dot_0
      = ( 'int.+/2' @ ( 'int.^/2' @ 1597 @ 3 ) @ ( 'int.^/2' @ 987 @ 3 ) ) ) ),
    answer_to(p_question,[])).
