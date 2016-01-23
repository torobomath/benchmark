%% DOMAIN:    Numbers and Algebraic Expressions
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2009, Science Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, and $c$ be real numbers. Answer the following
%% questions:
%%
%% (1) When $a + b = c$, prove that $a^3 + b^3 + 3 a b c = c^3$.
%%
%% (2) When $a + b\ge c$, prove that $a^3 + b^3 + 3 a b c\ge c^3$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   48 (   2 equality;  18 variable)
%            Maximal formula depth :   13 (  12 average)
%            Number of connectives :   42 (   0   ~;   0   |;   0   &;  40   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    6 (   0   :)
%            Number of variables   :    6 (   0 sgn;   6   !;   0   ?;   0   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_a: 'R',V_b: 'R',V_c: 'R'] :
      ( ( ( '+/2' @ V_a @ V_b )
        = V_c )
     => ( ( '+/2' @ ( '^/2' @ V_a @ 3 ) @ ( '+/2' @ ( '^/2' @ V_b @ 3 ) @ ( '*/2' @ 3 @ ( '*/2' @ V_a @ ( '*/2' @ V_b @ V_c ) ) ) ) )
        = ( '^/2' @ V_c @ 3 ) ) ) )).

thf(p2,conjecture,(
    ! [V_a: 'R',V_b: 'R',V_c: 'R'] :
      ( ( '>=/2' @ ( '+/2' @ V_a @ V_b ) @ V_c )
     => ( '>=/2' @ ( '+/2' @ ( '^/2' @ V_a @ 3 ) @ ( '+/2' @ ( '^/2' @ V_b @ 3 ) @ ( '*/2' @ 3 @ ( '*/2' @ V_a @ ( '*/2' @ V_b @ V_c ) ) ) ) ) @ ( '^/2' @ V_c @ 3 ) ) ) )).
