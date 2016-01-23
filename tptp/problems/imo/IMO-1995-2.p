%% DOMAIN:    Algebra, proofs of inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1995, Problem 2
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-10
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, $c$ be positive real numbers such that $abc = 1$. Prove that
%% ¥[
%% ¥frac{1}{a^3 (b+c)} + ¥frac{1}{b^3 (c+a)} + ¥frac{1}{c^3 (a+b)} ¥ge ¥frac{3}{2}.
%% ¥]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   1 equality;  15 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   46 (   0   ~;   0   |;   3   &;  42   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a: 'R',V_b: 'R',V_c: 'R'] :
      ( ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( '</2' @ 0 @ V_c )
        & ( ( '*/2' @ V_a @ ( '*/2' @ V_b @ V_c ) )
          = 1 ) )
     => ( '>=/2' @ ( '+/2' @ ( '//2' @ 1 @ ( '*/2' @ ( '^/2' @ V_a @ 3 ) @ ( '+/2' @ V_b @ V_c ) ) ) @ ( '+/2' @ ( '//2' @ 1 @ ( '*/2' @ ( '^/2' @ V_b @ 3 ) @ ( '+/2' @ V_c @ V_a ) ) ) @ ( '//2' @ 1 @ ( '*/2' @ ( '^/2' @ V_c @ 3 ) @ ( '+/2' @ V_a @ V_b ) ) ) ) ) @ ( '//2' @ 3 @ 2 ) ) ) )).
