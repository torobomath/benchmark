%% DOMAIN:    Algebra, proofs of inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1974, Problem 5
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-26
%%
%% <PROBLEM-TEXT>
%% Determine all possible values of\[
%% S = \frac{a}{a+b+d} + \frac{b}{a+b+c} + \frac{c}{b+c+d} + \frac{d}{a+c+d}
%% \]where $a$, $b$, $c$, $d$ are arbitrary positive numbers.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   52 (   1 equality;  23 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :   48 (   0   ~;   0   |;   5   &;  43   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_a: 'R',V_b: 'R',V_c: 'R',V_d: 'R'] :
        ( ( '>/2' @ V_a @ 0 )
        & ( '>/2' @ V_b @ 0 )
        & ( '>/2' @ V_c @ 0 )
        & ( '>/2' @ V_d @ 0 )
        & ( V_S
          = ( '+/2' @ ( '//2' @ V_a @ ( '+/2' @ V_a @ ( '+/2' @ V_b @ V_d ) ) ) @ ( '+/2' @ ( '//2' @ V_b @ ( '+/2' @ V_a @ ( '+/2' @ V_b @ V_c ) ) ) @ ( '+/2' @ ( '//2' @ V_c @ ( '+/2' @ V_b @ ( '+/2' @ V_c @ V_d ) ) ) @ ( '//2' @ V_d @ ( '+/2' @ V_a @ ( '+/2' @ V_c @ V_d ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( '</2' @ 1 @ V_S_dot_0 )
      & ( '</2' @ V_S_dot_0 @ 2 ) ) ),
    answer_to(p_question,[])).
