%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1987, Problem 6
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-11
%%
%% <PROBLEM-TEXT>
%% Let $n$ be an integer greater than or equal to $2$. Prove that if $k^2 + k + n$ is
%% prime for all integers $k$ such that $0 ¥le k ¥le ¥sqrt {n/3}$, then $k^2 + k + n$
%% is prime for all integers $k$ such that $0 ¥le k ¥le n - 2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   39 (   0 equality;  13 variable)
%            Maximal formula depth :   12 (  12 average)
%            Number of connectives :   38 (   0   ~;   0   |;   3   &;  32   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_n: 'Z'] :
      ( ( ( 'int.<=/2' @ 2 @ V_n )
        & ! [V_k: 'Z'] :
            ( ( ( 'int.<=/2' @ 0 @ V_k )
              & ( '<=/2' @ ( 'int->real/1' @ V_k ) @ ( 'sqrt/1' @ ( '//2' @ ( 'int->real/1' @ V_n ) @ ( 'int->real/1' @ 3 ) ) ) ) )
           => ( 'int.is-prime/1' @ ( 'int.+/2' @ ( 'int.^/2' @ V_k @ 2 ) @ ( 'int.+/2' @ V_k @ V_n ) ) ) ) )
     => ! [V_k_dot_0: 'Z'] :
          ( ( ( 'int.<=/2' @ 0 @ V_k_dot_0 )
            & ( 'int.<=/2' @ V_k_dot_0 @ ( 'int.-/2' @ V_n @ 2 ) ) )
         => ( 'int.is-prime/1' @ ( 'int.+/2' @ ( 'int.^/2' @ V_k_dot_0 @ 2 ) @ ( 'int.+/2' @ V_k_dot_0 @ V_n ) ) ) ) ) )).
