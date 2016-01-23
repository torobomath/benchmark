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
%            Number of atoms       :   99 (   9 equality;  50 variable)
%            Maximal formula depth :   25 (  25 average)
%            Number of connectives :  106 (   4   ~;   0   |;  18   &;  80   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :   15 (   0 sgn;  11   !;   0   ?;   3   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_n: 'Z',V_S: 'SetOf' @ ( 'ListOf' @ 'Z' ),V_B: 'SetOf' @ ( 'ListOf' @ 'Z' ),V_R: 'SetOf' @ ( 'ListOf' @ 'Z' ),V_X: 'SetOf' @ ( 'SetOf' @ ( 'ListOf' @ 'Z' ) ),V_Y: 'SetOf' @ ( 'SetOf' @ ( 'ListOf' @ 'Z' ) )] :
      ( ( ( V_S
          = ( 'set-by-def/1'
            @ ^ [V_z_dot_0: 'ListOf' @ 'Z'] :
                ( ( 'int.is-lattice-point/1' @ V_z_dot_0 )
                & ( 'int.>=/2' @ ( 'int.x-coord/1' @ V_z_dot_0 ) @ 0 )
                & ( 'int.>=/2' @ ( 'int.y-coord/1' @ V_z_dot_0 ) @ 0 )
                & ( 'int.</2' @ ( 'int.+/2' @ ( 'int.x-coord/1' @ V_z_dot_0 ) @ ( 'int.y-coord/1' @ V_z_dot_0 ) ) @ V_n ) ) ) )
        & ( 'is-subset-of/2' @ V_R @ V_S )
        & ! [V_w_dot_1: 'ListOf' @ 'Z'] :
            ( ( ( 'elem/2' @ V_w_dot_1 @ V_R )
              & ( 'int.<=/2' @ ( 'int.x-coord/1' @ V_w_dot_1 ) @ ( 'int.x-coord/1' @ V_z ) )
              & ( 'int.<=/2' @ ( 'int.y-coord/1' @ V_w_dot_1 ) @ ( 'int.y-coord/1' @ V_z ) ) )
           => ( 'elem/2' @ V_w_dot_1 @ V_R ) )
        & ( V_B
          = ( 'complement-of-in/2' @ V_R @ V_S ) )
        & ( V_X
          = ( 'set-by-def/1'
            @ ^ [V_U_dot_0: 'SetOf' @ ( 'ListOf' @ 'Z' )] :
                ( ( 'is-subset-of/2' @ V_U_dot_0 @ V_S )
                & ( 'is-cardinality-of/2' @ V_n @ ( 'set-intersection/2' @ V_B @ V_U_dot_0 ) )
                & ! [V_w_dot_0: 'ListOf' @ 'Z',V_v_dot_0: 'ListOf' @ 'Z'] :
                    ( ( ( 'elem/2' @ V_w_dot_0 @ V_U_dot_0 )
                      & ( 'elem/2' @ V_v_dot_0 @ V_U_dot_0 )
                      & ( V_w_dot_0 != V_v_dot_0 ) )
                   => ( ( 'int.x-coord/1' @ V_w_dot_0 )
                     != ( 'int.x-coord/1' @ V_v_dot_0 ) ) ) ) ) )
        & ( V_Y
          = ( 'set-by-def/1'
            @ ^ [V_U: 'SetOf' @ ( 'ListOf' @ 'Z' )] :
                ( ( 'is-subset-of/2' @ V_U @ V_B )
                & ( 'is-cardinality-of/2' @ V_n @ ( 'set-intersection/2' @ V_B @ V_U ) )
                & ! [V_w: 'ListOf' @ 'Z',V_v: 'ListOf' @ 'Z'] :
                    ( ( ( 'elem/2' @ V_w @ V_U )
                      & ( 'elem/2' @ V_v @ V_U )
                      & ( V_w != V_v ) )
                   => ( ( 'int.y-coord/1' @ V_w )
                     != ( 'int.y-coord/1' @ V_v ) ) ) ) ) ) )
     => ( ( 'cardinality-of/1' @ V_X )
        = ( 'cardinality-of/1' @ V_Y ) ) ) )).
