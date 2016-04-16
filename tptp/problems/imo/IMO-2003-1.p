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
%            Number of atoms       :   45 (   5 equality;  15 variable)
%            Maximal formula depth :   20 (  20 average)
%            Number of connectives :   38 (   0   ~;   0   |;   6   &;  31   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   1   !;   4   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   1 pred;    1 func;    4 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ? [V_S: ( 'SetOf' @ $int )] :
      ( ( V_S
        = ( 'set-by-def/1' @ $int
          @ ^ [V_n_dot_0: $int] :
              ( ( $lesseq @ 1 @ V_n_dot_0 )
              & ( $lesseq @ V_n_dot_0 @ 1000000 ) ) ) )
      & ! [V_A: ( 'SetOf' @ $int )] :
          ( ( ( 'is-subset-of/2' @ $int @ V_A @ V_S )
            & ( ( 'int.cardinality-of/1' @ V_A )
              = 101 ) )
         => ? [V_X: ( 'SetOf' @ $int )] :
              ( ( 'is-subset-of/2' @ $int @ V_X @ V_S )
              & ( ( 'int.cardinality-of/1' @ V_X )
                = 100 )
              & ( 'pairwise-disjoint/1' @ ( 'SetOf' @ $int )
                @ ( 'set-by-def/1' @ ( 'SetOf' @ $int )
                  @ ^ [V_Ax: ( 'SetOf' @ $int )] :
                    ? [V_x: $int] :
                      ( V_Ax
                      = ( 'set-by-def/1' @ $int
                        @ ^ [V_n: $int] :
                          ? [V_a: $int] :
                            ( ( 'elem/2' @ $int @ V_a @ V_A )
                            & ( V_n
                              = ( $sum @ V_x @ V_a ) ) ) ) ) ) ) ) ) ) )).

