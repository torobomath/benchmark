%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 1999, Humanities Course, Problem 3b
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-20
%%
%% <PROBLEM-TEXT>
%% Assume that the real numbers $a$ and $b$ satisfy $0 < a < b$. Find
%% the magnitude relation of the following three numbers:
%% $\frac{a+2 b}{3}$, $\sqrt{a b}$, and
%% $\sqrt[3]{\frac{b(a^2 + a b + b^2)}{3}}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   81 (   0 equality;  27 variable)
%            Maximal formula depth :   16 (  15 average)
%            Number of connectives :   81 (   3   ~;   0   |;   3   &;  72   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p12l,conjecture,(
    ~ ( ! [V_a: 'R',V_b: 'R'] :
          ( ( ( '</2' @ 0 @ V_a )
            & ( '</2' @ V_a @ V_b ) )
         => ( '</2' @ ( '//2' @ ( '+/2' @ V_a @ ( '*/2' @ 2 @ V_b ) ) @ 3 ) @ ( 'sqrt/1' @ ( '*/2' @ V_a @ V_b ) ) ) ) ) )).

thf(p13g,conjecture,(
    ~ ( ! [V_a: 'R',V_b: 'R'] :
          ( ( ( '</2' @ 0 @ V_a )
            & ( '</2' @ V_a @ V_b ) )
         => ( '>/2' @ ( '//2' @ ( '+/2' @ V_a @ ( '*/2' @ 2 @ V_b ) ) @ 3 ) @ ( '^/2' @ ( '//2' @ ( '*/2' @ V_b @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ ( '*/2' @ V_a @ V_b ) @ ( '^/2' @ V_b @ 2 ) ) ) ) @ 3 ) @ ( '//2' @ 1 @ 3 ) ) ) ) ) )).

thf(p23g,conjecture,(
    ~ ( ! [V_a: 'R',V_b: 'R'] :
          ( ( ( '</2' @ 0 @ V_a )
            & ( '</2' @ V_a @ V_b ) )
         => ( '>/2' @ ( 'sqrt/1' @ ( '*/2' @ V_a @ V_b ) ) @ ( '^/2' @ ( '//2' @ ( '*/2' @ V_b @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ ( '*/2' @ V_a @ V_b ) @ ( '^/2' @ V_b @ 2 ) ) ) ) @ 3 ) @ ( '//2' @ 1 @ 3 ) ) ) ) ) )).
