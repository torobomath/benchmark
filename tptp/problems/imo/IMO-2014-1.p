%% DOMAIN:    Algebra, computation of expressions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2014, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-10
%%
%% <PROBLEM-TEXT>
%% Let $a_0 < a_1 < a_2 < \ldots$ be an infinite sequence of positive integers.
%% Prove that there exists a unique integer $n \geq 1$ such that\[
%% a_n < \frac{a_0 + a_1 + \ldots + a_n}{n} \leq a_{n+1}.
%% \]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   85 (   1 equality;  32 variable)
%            Maximal formula depth :   19 (  19 average)
%            Number of connectives :   82 (   0   ~;   0   |;   6   &;  72   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    5 (   0 sgn;   4   !;   1   ?;   0   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_a: 'Z' > 'Z'] :
      ( ( ! [V_n_dot_0: 'Z'] :
            ( ( 'int.<=/2' @ 0 @ V_n_dot_0 )
           => ( 'int.<=/2' @ 1 @ ( 'LamApp/2' @ V_a @ V_n_dot_0 ) ) )
        & ! [V_n: 'Z'] :
            ( ( 'int.<=/2' @ 0 @ V_n )
           => ( 'int.<=/2' @ ( 'LamApp/2' @ V_a @ V_n ) @ ( 'LamApp/2' @ V_a @ ( 'int.+/2' @ V_n @ 1 ) ) ) ) )
     => ? [V_n_dot_1: 'Z'] :
          ( ( 'int.<=/2' @ 1 @ V_n_dot_1 )
          & ( 'rat.</2' @ ( 'rat.int->rat/1' @ ( 'LamApp/2' @ V_a @ V_n_dot_1 ) ) @ ( 'rat.ratio/2' @ ( 'int.sum/1' @ ( 'map/2' @ V_a @ ( 'int.iota/2' @ 0 @ V_n_dot_1 ) ) ) @ V_n_dot_1 ) )
          & ( 'rat.<=/2' @ ( 'rat.ratio/2' @ ( 'int.sum/1' @ ( 'map/2' @ V_a @ ( 'int.iota/2' @ 0 @ V_n_dot_1 ) ) ) @ V_n_dot_1 ) @ ( 'rat.int->rat/1' @ ( 'LamApp/2' @ V_a @ ( 'int.+/2' @ V_n_dot_1 @ 1 ) ) ) )
          & ! [V_m: 'Z'] :
              ( ( ( 'int.<=/2' @ 1 @ V_m )
                & ( 'rat.</2' @ ( 'rat.int->rat/1' @ ( 'LamApp/2' @ V_a @ V_m ) ) @ ( 'rat.ratio/2' @ ( 'int.sum/1' @ ( 'map/2' @ V_a @ ( 'int.iota/2' @ 0 @ V_m ) ) ) @ V_m ) )
                & ( 'rat.<=/2' @ ( 'rat.ratio/2' @ ( 'int.sum/1' @ ( 'map/2' @ V_a @ ( 'int.iota/2' @ 0 @ V_m ) ) ) @ V_m ) @ ( 'rat.int->rat/1' @ ( 'LamApp/2' @ V_a @ ( 'int.+/2' @ V_m @ 1 ) ) ) ) )
             => ( V_n_dot_1 = V_m ) ) ) ) )).
