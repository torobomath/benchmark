%% DOMAIN:    Algebra, quadratic equations
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 2003, Problem 2
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-19
%%
%% <PROBLEM-TEXT>
%% Find all pairs (m, n) of positive integers such that
%% m^2 / (2 m n^2 - n^3 + 1)
%% is a positive integer.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   84 (   4 equality;  25 variable)
%            Maximal formula depth :   17 (  16 average)
%            Number of connectives :   76 (   0   ~;   2   |;   5   &;  69   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_mn: 'ListOf' @ 'Z'] :
      ? [V_m: 'Z',V_n: 'Z'] :
        ( ( V_mn
          = ( 'cons/2' @ V_m @ ( 'cons/2' @ V_n @ 'nil/0' ) ) )
        & ( 'int.>/2' @ V_m @ 0 )
        & ( 'int.>/2' @ V_n @ 0 )
        & ( 'int.is-divisible-by/2' @ ( 'int.^/2' @ V_m @ 2 ) @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ ( 'int.*/2' @ V_m @ ( 'int.*/2' @ V_n @ V_n ) ) ) @ ( 'int.+/2' @ ( 'int.-/1' @ ( 'int.^/2' @ V_n @ 3 ) ) @ 1 ) ) )
        & ( 'int.>/2' @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ ( 'int.*/2' @ V_m @ ( 'int.*/2' @ V_n @ V_n ) ) ) @ ( 'int.+/2' @ ( 'int.-/1' @ ( 'int.^/2' @ V_n @ 3 ) ) @ 1 ) ) @ 0 ) ) )).

thf(p_answer,answer,(
    ^ [V_mn_dot_0: 'ListOf' @ 'Z'] :
    ? [V_l: 'Z'] :
      ( ( 'int.>/2' @ V_l @ 0 )
      & ( ( V_mn_dot_0
          = ( 'cons/2' @ ( 'int.*/2' @ 2 @ V_l ) @ ( 'cons/2' @ V_l @ 'nil/0' ) ) )
        | ( V_mn_dot_0
          = ( 'cons/2' @ V_l @ ( 'cons/2' @ ( 'int.*/2' @ 2 @ V_l ) @ 'nil/0' ) ) )
        | ( V_mn_dot_0
          = ( 'cons/2' @ ( 'int.-/2' @ ( 'int.*/2' @ 8 @ ( 'int.^/2' @ V_l @ 4 ) ) @ V_l ) @ ( 'cons/2' @ ( 'int.*/2' @ 2 @ V_l ) @ 'nil/0' ) ) ) ) ) ),
    answer_to(p_question,[])).
