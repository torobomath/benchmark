%% DOMAIN:    Algebra, inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2001, Problem 2
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-21
%%
%% <PROBLEM-TEXT>
%% Prove that
%% a/sqrt(a^2 + 8bc) + b/sqrt(b^2 + 8ca) + c/sqrt(c^2 + 8ab) >= 1
%% for all positive real numbers a, b and c.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   0 equality;  15 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   48 (   0   ~;   0   |;   2   &;  45   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a: 'R',V_b: 'R',V_c: 'R'] :
      ( ( ( '>/2' @ V_a @ 0 )
        & ( '>/2' @ V_b @ 0 )
        & ( '>/2' @ V_c @ 0 ) )
     => ( '>=/2' @ ( '+/2' @ ( '//2' @ V_a @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '*/2' @ 8 @ ( '*/2' @ V_b @ V_c ) ) ) ) ) @ ( '+/2' @ ( '//2' @ V_b @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_b @ 2 ) @ ( '*/2' @ 8 @ ( '*/2' @ V_c @ V_a ) ) ) ) ) @ ( '//2' @ V_c @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_c @ 2 ) @ ( '*/2' @ 8 @ ( '*/2' @ V_a @ V_b ) ) ) ) ) ) ) @ 1 ) ) )).
