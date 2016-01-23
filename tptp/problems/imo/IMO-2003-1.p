%% DOMAIN:    Combinatorics, misc
%% THEORY:    PA(comb)
%% SOURCE:    International Mathematical Olympiad, 2003, Problem 1
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-19
%%
%% <PROBLEM-TEXT>
%% S is the set {1, 2, 3, ..., 1000000}. Show that for any subset A of S with
%% 101 elements we can find 100 distinct elements xi of S, such that the sets
%% { a + xi | a in A } are all pairwise disjoint.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   36 (   5 equality;  15 variable)
%            Maximal formula depth :   20 (  20 average)
%            Number of connectives :   29 (   0   ~;   0   |;   6   &;  22   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    8 (   0 sgn;   1   !;   4   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ? [V_S: 'SetOf' @ 'Z'] :
      ( ( V_S
        = ( 'set-by-def/1'
          @ ^ [V_n_dot_0: 'Z'] :
              ( ( 'int.<=/2' @ 1 @ V_n_dot_0 )
              & ( 'int.<=/2' @ V_n_dot_0 @ 1000000 ) ) ) )
      & ! [V_A: 'SetOf' @ 'Z'] :
          ( ( ( 'is-subset-of/2' @ V_A @ V_S )
            & ( ( 'int.cardinality-of/1' @ V_A )
              = 101 ) )
         => ? [V_X: 'SetOf' @ 'Z'] :
              ( ( 'is-subset-of/2' @ V_X @ V_S )
              & ( ( 'int.cardinality-of/1' @ V_X )
                = 100 )
              & ( 'pairwise-disjoint/1'
                @ ( 'set-by-def/1'
                  @ ^ [V_Ax: 'SetOf' @ 'Z'] :
                    ? [V_x: 'Z'] :
                      ( V_Ax
                      = ( 'set-by-def/1'
                        @ ^ [V_n: 'Z'] :
                          ? [V_a: 'Z'] :
                            ( ( 'elem/2' @ V_a @ V_A )
                            & ( V_n
                              = ( 'int.+/2' @ V_x @ V_a ) ) ) ) ) ) ) ) ) ) )).
