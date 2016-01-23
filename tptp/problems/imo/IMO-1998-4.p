%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1998, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-05
%%
%% <PROBLEM-TEXT>
%% Determine all pairs $(a, b)$ of positive integers such that $ab^2 + b + 7$ divides
%% $a^2 b + a + b$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   54 (   4 equality;  15 variable)
%            Maximal formula depth :   14 (  12 average)
%            Number of connectives :   46 (   0   ~;   2   |;   1   &;  43   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :    5 (   0 sgn;   0   !;   3   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_lp: 'ListOf' @ 'Z'] :
      ? [V_a: 'Z',V_b: 'Z'] :
        ( ( V_lp
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
        & ( 'int.is-divisible-by/2' @ ( 'int.+/2' @ ( 'int.*/2' @ ( 'int.^/2' @ V_a @ 2 ) @ V_b ) @ ( 'int.+/2' @ V_a @ V_b ) ) @ ( 'int.+/2' @ ( 'int.*/2' @ V_a @ ( 'int.^/2' @ V_b @ 2 ) ) @ ( 'int.+/2' @ V_b @ 7 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_lp_dot_0: 'ListOf' @ 'Z'] :
      ( ( V_lp_dot_0
        = ( 'cons/2' @ 11 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) )
      | ( V_lp_dot_0
        = ( 'cons/2' @ 49 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) )
      | ? [V_k: 'Z'] :
          ( V_lp_dot_0
          = ( 'cons/2' @ ( 'int.*/2' @ 7 @ ( 'int.^/2' @ V_k @ 2 ) ) @ ( 'cons/2' @ ( 'int.*/2' @ 7 @ V_k ) @ 'nil/0' ) ) ) ) ),
    answer_to(p_question,[])).
