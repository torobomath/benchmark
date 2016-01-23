%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1990, Problem 4
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-11-13
%%
%% <PROBLEM-TEXT>
%% Let $¥mathbb{Q}^+$ be the set of positive rational numbers. Construct a function
%% $f : ¥mathbb{Q}^+ ¥rightarrow ¥mathbb{Q}^+$ such that
%% ¥[
%% f(x f(y)) = ¥frac{f(x)}{y}
%% ¥]
%% for all $x$, $y$ in $¥mathbb{Q}^+$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   23 (   1 equality;  11 variable)
%            Maximal formula depth :   10 (  10 average)
%            Number of connectives :   20 (   0   ~;   0   |;   3   &;  16   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    7 (   0   :)
%            Number of variables   :    3 (   0 sgn;   2   !;   1   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ? [V_f: 'R' > 'R'] :
    ! [V_x: 'R',V_y: 'R'] :
      ( ( ( 'is-rational/1' @ V_x )
        & ( 'is-rational/1' @ V_y )
        & ( '</2' @ 0 @ V_x )
        & ( '</2' @ 0 @ V_y ) )
     => ( ( 'LamApp/2' @ V_f @ ( '*/2' @ V_x @ ( 'LamApp/2' @ V_f @ V_y ) ) )
        = ( '//2' @ ( 'LamApp/2' @ V_f @ V_x ) @ V_y ) ) ) )).
