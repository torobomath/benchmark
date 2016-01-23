%% DOMAIN:    Algebra, functional equations
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2013, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-10-24
%%
%% <PROBLEM-TEXT>
%% Let $Q_{>0}$ be the set of positive rational numbers.
%% Let $f : Q_{>0} \rightarrow R$ be a function satisfying the following three conditions:
%% (i)   for all $x$, $y$ in $Q_{>0}$, we have $f(x)f(y) \geq f(xy)$;
%% (ii)  for all $x$, $y$ in $Q_{>0}$, we have $f(x + y) \geq f(x) + f(y)$;
%% (iii) there exists a rational number $a > 1$ such that $f(a) = a$.
%% Prove that $f(x) = x$ for all $x$ in $Q_{>0}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   56 (   2 equality;  28 variable)
%            Maximal formula depth :   14 (  14 average)
%            Number of connectives :   51 (   0   ~;   0   |;   8   &;  40   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :)
%            Number of variables   :    5 (   0 sgn;   4   !;   1   ?;   0   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_f: 'R2R'] :
      ( ( ! [V_x: 'R',V_y: 'R'] :
            ( ( ( 'is-rational/1' @ V_x )
              & ( 'is-rational/1' @ V_y )
              & ( '</2' @ 0 @ V_x )
              & ( '</2' @ 0 @ V_y ) )
           => ( ( '>=/2' @ ( '*/2' @ ( 'funapp/2' @ V_f @ V_x ) @ ( 'funapp/2' @ V_f @ V_y ) ) @ ( 'funapp/2' @ V_f @ ( '*/2' @ V_x @ V_y ) ) )
              & ( '>=/2' @ ( 'funapp/2' @ V_f @ ( '+/2' @ V_x @ V_y ) ) @ ( '+/2' @ ( 'funapp/2' @ V_f @ V_x ) @ ( 'funapp/2' @ V_f @ V_y ) ) ) ) )
        & ? [V_a: 'R'] :
            ( ( 'is-rational/1' @ V_a )
            & ( '>/2' @ V_a @ 1 )
            & ( ( 'funapp/2' @ V_f @ V_a )
              = V_a ) ) )
     => ! [V_x_dot_0: 'R'] :
          ( ( ( 'is-rational/1' @ V_x_dot_0 )
            & ( '</2' @ 0 @ V_x_dot_0 ) )
         => ( ( 'funapp/2' @ V_f @ V_x_dot_0 )
            = V_x_dot_0 ) ) ) )).
