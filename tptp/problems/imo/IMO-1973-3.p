%% DOMAIN:    Algebra, proofs of inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1973, Problem 3
%% SCORE:     8
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-22
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be real numbers for which the equation\[
%% x^4 +ax^3 +bx^2 +ax+1 = 0
%% \]has at least one real solution. For all such pairs $(a, b)$, find the minimum
%% value of $a^2 + b^2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   70 (   4 equality;  21 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :   60 (   0   ~;   0   |;   2   &;  57   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    8 (   0 sgn;   2   !;   4   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_a: 'R',V_b: 'R',V_x: 'R'] :
        ( ( ( '+/2' @ ( '^/2' @ V_x @ 4 ) @ ( '+/2' @ ( '*/2' @ V_a @ ( '^/2' @ V_x @ 3 ) ) @ ( '+/2' @ ( '*/2' @ V_b @ ( '^/2' @ V_x @ 2 ) ) @ ( '+/2' @ ( '*/2' @ V_a @ V_x ) @ 1 ) ) ) )
          = 0 )
        & ( V_m
          = ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_b @ 2 ) ) )
        & ! [V_a2: 'R',V_b2: 'R'] :
            ( ? [V_x2: 'R'] :
                ( ( '+/2' @ ( '^/2' @ V_x2 @ 4 ) @ ( '+/2' @ ( '*/2' @ V_a2 @ ( '^/2' @ V_x2 @ 3 ) ) @ ( '+/2' @ ( '*/2' @ V_b2 @ ( '^/2' @ V_x2 @ 2 ) ) @ ( '+/2' @ ( '*/2' @ V_a2 @ V_x2 ) @ 1 ) ) ) )
                = 0 )
           => ( '>=/2' @ ( '+/2' @ ( '^/2' @ V_a2 @ 2 ) @ ( '^/2' @ V_b2 @ 2 ) ) @ V_m ) ) ) )).

thf(p_answer,answer,(
    ^ [V_m_dot_0: 'R'] :
      ( V_m_dot_0
      = ( '//2' @ 4 @ 5 ) ) ),
    answer_to(p_question,[])).
