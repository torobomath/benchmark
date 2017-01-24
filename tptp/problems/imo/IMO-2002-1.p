%% DOMAIN:    Combinatorics, enumerative combinatorics
%% THEORY:    PA(comb)
%% SOURCE:    International Mathematical Olympiad, 2002, Problem 1
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-04
%%
%% <PROBLEM-TEXT>
%% S is the set of all (h, k) with h, k non-negative integers such
%% that h + k < n. Each element of S is colored red or blue, so that if (h, k)
%% is red and h'<= h, k'<= k, then (h', k') is also red.
%% A type 1 subset of S has n blue elements with different first member
%% and a type 2 subset of S has n blue elements with different second member.
%% Show that there are the same number of type 1 and type 2 subsets.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  188 (   9 equality;  51 variable)
%            Maximal formula depth :   28 (  28 average)
%            Number of connectives :  210 (   4   ~;   0   |;  18   &; 184   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :   15 (   0 sgn;  12   !;   0   ?;   3   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   3 pred;    1 func;    1 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_n: $int,V_S: ( 'SetOf' @ ( 'Pair' @ $int @ $int ) ),V_B: ( 'SetOf' @ ( 'Pair' @ $int @ $int ) ),V_R: ( 'SetOf' @ ( 'Pair' @ $int @ $int ) ),V_X: ( 'SetOf' @ ( 'SetOf' @ ( 'Pair' @ $int @ $int ) ) ),V_Y: ( 'SetOf' @ ( 'SetOf' @ ( 'Pair' @ $int @ $int ) ) )] :
      ( ( ( V_S
          = ( 'set-by-def/1' @ ( 'Pair' @ $int @ $int )
            @ ^ [V_z_dot_0: ( 'Pair' @ $int @ $int )] :
                ( ( $greatereq @ ( 'fst/1' @ $int @ $int @ V_z_dot_0 ) @ 0 )
                & ( $greatereq @ ( 'snd/1' @ $int @ $int @ V_z_dot_0 ) @ 0 )
                & ( $less @ ( $sum @ ( 'fst/1' @ $int @ $int @ V_z_dot_0 ) @ ( 'snd/1' @ $int @ $int @ V_z_dot_0 ) ) @ V_n ) ) ) )
        & ( 'is-subset-of/2' @ ( 'Pair' @ $int @ $int ) @ V_R @ V_S )
        & ! [V_w_dot_1: ( 'Pair' @ $int @ $int ),V_z: ( 'Pair' @ $int @ $int )] :
            ( ( ( 'elem/2' @ ( 'Pair' @ $int @ $int ) @ V_z @ V_R )
              & ( 'elem/2' @ ( 'Pair' @ $int @ $int ) @ V_w_dot_1 @ V_S )
              & ( $lesseq @ ( 'fst/1' @ $int @ $int @ V_w_dot_1 ) @ ( 'fst/1' @ $int @ $int @ V_z ) )
              & ( $lesseq @ ( 'snd/1' @ $int @ $int @ V_w_dot_1 ) @ ( 'snd/1' @ $int @ $int @ V_z ) ) )
           => ( 'elem/2' @ ( 'Pair' @ $int @ $int ) @ V_w_dot_1 @ V_R ) )
        & ( V_B
          = ( 'complement-of-in/2' @ ( 'Pair' @ $int @ $int ) @ V_R @ V_S ) )
        & ( V_X
          = ( 'set-by-def/1' @ ( 'SetOf' @ ( 'Pair' @ $int @ $int ) )
            @ ^ [V_U_dot_0: ( 'SetOf' @ ( 'Pair' @ $int @ $int ) )] :
                ( ( 'is-subset-of/2' @ ( 'Pair' @ $int @ $int ) @ V_U_dot_0 @ V_S )
                & ( 'is-cardinality-of/2' @ ( 'Pair' @ $int @ $int ) @ V_n @ ( 'set-intersection/2' @ ( 'Pair' @ $int @ $int ) @ V_B @ V_U_dot_0 ) )
                & ! [V_w_dot_0: ( 'Pair' @ $int @ $int ),V_v_dot_0: ( 'Pair' @ $int @ $int )] :
                    ( ( ( 'elem/2' @ ( 'Pair' @ $int @ $int ) @ V_w_dot_0 @ V_U_dot_0 )
                      & ( 'elem/2' @ ( 'Pair' @ $int @ $int ) @ V_v_dot_0 @ V_U_dot_0 )
                      & ( V_w_dot_0 != V_v_dot_0 ) )
                   => ( ( 'fst/1' @ $int @ $int @ V_w_dot_0 )
                     != ( 'fst/1' @ $int @ $int @ V_v_dot_0 ) ) ) ) ) )
        & ( V_Y
          = ( 'set-by-def/1' @ ( 'SetOf' @ ( 'Pair' @ $int @ $int ) )
            @ ^ [V_U: ( 'SetOf' @ ( 'Pair' @ $int @ $int ) )] :
                ( ( 'is-subset-of/2' @ ( 'Pair' @ $int @ $int ) @ V_U @ V_B )
                & ( 'is-cardinality-of/2' @ ( 'Pair' @ $int @ $int ) @ V_n @ ( 'set-intersection/2' @ ( 'Pair' @ $int @ $int ) @ V_B @ V_U ) )
                & ! [V_w: ( 'Pair' @ $int @ $int ),V_v: ( 'Pair' @ $int @ $int )] :
                    ( ( ( 'elem/2' @ ( 'Pair' @ $int @ $int ) @ V_w @ V_U )
                      & ( 'elem/2' @ ( 'Pair' @ $int @ $int ) @ V_v @ V_U )
                      & ( V_w != V_v ) )
                   => ( ( 'snd/1' @ $int @ $int @ V_w )
                     != ( 'snd/1' @ $int @ $int @ V_v ) ) ) ) ) ) )
     => ( ( 'cardinality-of/1' @ ( 'SetOf' @ ( 'Pair' @ $int @ $int ) ) @ V_X )
        = ( 'cardinality-of/1' @ ( 'SetOf' @ ( 'Pair' @ $int @ $int ) ) @ V_Y ) ) ) )).

