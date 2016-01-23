%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1977, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-23
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be positive integers. When $a^2 +b^2$ is divided by $a+b$, the
%% quotient is $q$ and the remainder is $r$. Find all pairs $(a, b)$ such that
%% $q^2 + r = 1977$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   99 (  16 equality;  37 variable)
%            Maximal formula depth :   19 (  16 average)
%            Number of connectives :   67 (   0   ~;   3   |;  13   &;  51   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   6   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'Z'] :
      ? [V_a: 'Z',V_b: 'Z',V_q: 'Z',V_r: 'Z'] :
        ( ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
        & ( 'int.</2' @ 0 @ V_a )
        & ( 'int.</2' @ 0 @ V_b )
        & ( V_q
          = ( 'int.div/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) @ ( 'int.+/2' @ V_a @ V_b ) ) )
        & ( V_r
          = ( 'int.mod/2' @ ( 'int.+/2' @ ( 'int.^/2' @ V_a @ 2 ) @ ( 'int.^/2' @ V_b @ 2 ) ) @ ( 'int.+/2' @ V_a @ V_b ) ) )
        & ( ( 'int.+/2' @ ( 'int.^/2' @ V_q @ 2 ) @ V_r )
          = 1977 ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'Z'] :
    ? [V_ab1: 'Z',V_ab2: 'Z'] :
      ( ( ( V_ab_dot_0
          = ( 'cons/2' @ V_ab1 @ ( 'cons/2' @ V_ab2 @ 'nil/0' ) ) )
        & ( V_ab1 = 50 )
        & ( V_ab2 = 37 ) )
      | ( ( V_ab_dot_0
          = ( 'cons/2' @ V_ab1 @ ( 'cons/2' @ V_ab2 @ 'nil/0' ) ) )
        & ( V_ab1 = 50 )
        & ( V_ab2 = 7 ) )
      | ( ( V_ab_dot_0
          = ( 'cons/2' @ V_ab1 @ ( 'cons/2' @ V_ab2 @ 'nil/0' ) ) )
        & ( V_ab1 = 37 )
        & ( V_ab2 = 50 ) )
      | ( ( V_ab_dot_0
          = ( 'cons/2' @ V_ab1 @ ( 'cons/2' @ V_ab2 @ 'nil/0' ) ) )
        & ( V_ab1 = 7 )
        & ( V_ab2 = 50 ) ) ) ),
    answer_to(p_question,[])).
