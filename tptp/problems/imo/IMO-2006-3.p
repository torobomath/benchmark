%% DOMAIN:    Algebra, inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2006, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-22
%%
%% <PROBLEM-TEXT>
%% Determine the least real number M such that the inequality
%% | ab(a^2-b^2) + bc(b^2-c^2) + ca(c^2-a^2) | <= M(a^2+b^2+c^2)^2
%% holds for all real numbers a, b and c.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   64 (   1 equality;  18 variable)
%            Maximal formula depth :   22 (  14 average)
%            Number of connectives :   60 (   0   ~;   0   |;   0   &;  60   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    6 (   0 sgn;   3   !;   0   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_minM: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_M: 'R'] :
            ! [V_a: 'R',V_b: 'R',V_c: 'R'] :
              ( '<=/2' @ ( 'abs/1' @ ( '+/2' @ ( '*/2' @ V_a @ ( '*/2' @ V_b @ ( '-/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) ) ) @ ( '+/2' @ ( '*/2' @ V_b @ ( '*/2' @ V_c @ ( '-/2' @ ( '^/2' @ V_b @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) ) ) @ ( '*/2' @ V_a @ ( '*/2' @ V_c @ ( '-/2' @ ( '^/2' @ V_c @ 2 ) @ ( '^/2' @ V_a @ 2 ) ) ) ) ) ) ) @ ( '*/2' @ V_M @ ( '^/2' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) ) @ 2 ) ) ) )
        @ V_minM ) )).

thf(p_answer,answer,(
    ^ [V_minM_dot_0: 'R'] :
      ( V_minM_dot_0
      = ( '*/2' @ ( '//2' @ 9 @ 32 ) @ ( 'sqrt/1' @ 2 ) ) ) ),
    answer_to(p_question,[])).
