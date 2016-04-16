%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2007, Science Course, Problem 4
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-10-02
%%
%% <PROBLEM-TEXT>
%% Consider the building built by putting a right circular cone with the
%% base of radius $a$ and the height $c$ on a cylinder with the same
%% base radius and the height of $b$ as shown in the figure.
%%
%% (1) Let $V$ be the volume of the building, and $S$, the outer surface
%% area of the building (excluding the base). Represent $V$ and $S$
%% using $a$, $b$, and $c$.
%%
%% (2) When minimizing $S$ by moving $a$, $b$, and $c$ while keeping $V$
%% constant:
%%
%% (i) Define $b = x a$ and $c = y a$, and assume that $V$ and $a$ are
%% constant, then represent the minimum value $T$ of $S$ using $V$ and
%% $a$.
%%
%% (ii) Find the ratio $a:b:c$ that gives the minimum value of $T$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   12 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :  466 (  23 equality; 165 variable)
%            Maximal formula depth :   35 (  13 average)
%            Number of connectives :  414 (   0   ~;   0   |;  44   &; 370   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   4   :;   0   =)
%            Number of variables   :   37 (   0 sgn;   0   !;  26   ?;  11   ^)
%                                         (  37   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    3 func;    5 numbers)

include('axioms.ax').

thf('V/0_type',type,(
    'V/0': $real )).

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Point'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'b/0' )
        & ( $less @ 0.0 @ 'c/0' )
        & ( 'b/0'
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 'c/0'
          = ( '3d.distance/2' @ V_B @ V_P ) )
        & ( '3d.vec-same-direction/2' @ ( '3d.vec/2' @ V_A @ V_B ) @ ( '3d.vec/2' @ V_B @ V_P ) )
        & ( V_V
          = ( $sum @ ( '3d.volume-of/1' @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ V_A @ 'a/0' @ ( '3d.vec/2' @ V_A @ V_B ) ) @ ( '3d.disk/3' @ V_B @ 'a/0' @ ( '3d.vec/2' @ V_A @ V_B ) ) ) ) @ ( '3d.volume-of/1' @ ( '3d.cone/2' @ ( '3d.disk/3' @ V_B @ 'a/0' @ ( '3d.vec/2' @ V_B @ V_P ) ) @ V_P ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Point'] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'b/0' )
        & ( $less @ 0.0 @ 'c/0' )
        & ( 'b/0'
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( 'c/0'
          = ( '3d.distance/2' @ V_B @ V_P ) )
        & ( '3d.vec-same-direction/2' @ ( '3d.vec/2' @ V_A @ V_B ) @ ( '3d.vec/2' @ V_B @ V_P ) )
        & ( V_S
          = ( $sum @ ( '3d.area-of/1' @ ( '3d.cylindrical-surface/2' @ ( '3d.circle/3' @ V_A @ 'a/0' @ ( '3d.vec/2' @ V_A @ V_B ) ) @ ( '3d.circle/3' @ V_B @ 'a/0' @ ( '3d.vec/2' @ V_A @ V_B ) ) ) ) @ ( '3d.area-of/1' @ ( '3d.right-conical-surface/2' @ ( '3d.circle/3' @ V_B @ 'a/0' @ ( '3d.vec/2' @ V_B @ V_P ) ) @ V_P ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_T: $real] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ( $less @ 0.0 @ 'V/0' )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_S: $real] :
              ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Point',V_b: $real,V_c: $real] :
                ( ( $less @ 0.0 @ V_b )
                & ( $less @ 0.0 @ V_c )
                & ( V_b
                  = ( '3d.distance/2' @ V_A @ V_B ) )
                & ( V_c
                  = ( '3d.distance/2' @ V_B @ V_P ) )
                & ( '3d.vec-same-direction/2' @ ( '3d.vec/2' @ V_A @ V_B ) @ ( '3d.vec/2' @ V_B @ V_P ) )
                & ( 'V/0'
                  = ( $sum @ ( '3d.volume-of/1' @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ V_A @ 'a/0' @ ( '3d.vec/2' @ V_A @ V_B ) ) @ ( '3d.disk/3' @ V_B @ 'a/0' @ ( '3d.vec/2' @ V_A @ V_B ) ) ) ) @ ( '3d.volume-of/1' @ ( '3d.cone/2' @ ( '3d.disk/3' @ V_B @ 'a/0' @ ( '3d.vec/2' @ V_A @ V_B ) ) @ V_P ) ) ) )
                & ( V_S
                  = ( $sum @ ( '3d.area-of/1' @ ( '3d.cylindrical-surface/2' @ ( '3d.circle/3' @ V_A @ 'a/0' @ ( '3d.vec/2' @ V_A @ V_B ) ) @ ( '3d.circle/3' @ V_B @ 'a/0' @ ( '3d.vec/2' @ V_A @ V_B ) ) ) ) @ ( '3d.area-of/1' @ ( '3d.right-conical-surface/2' @ ( '3d.circle/3' @ V_B @ 'a/0' @ ( '3d.vec/2' @ V_A @ V_B ) ) @ V_P ) ) ) ) ) )
          @ V_T ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_abbc: ( 'ListOf' @ $real )] :
      ? [V_minT: $real] :
        ( ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_T: $real] :
              ? [V_a_dot_0: $real,V_V_dot_0: $real] :
                ( ( $less @ 0.0 @ V_a_dot_0 )
                & ( $less @ 0.0 @ V_V_dot_0 )
                & ( 'minimum/2'
                  @ ( 'set-by-def/1' @ $real
                    @ ^ [V_S: $real] :
                      ? [V_A_dot_0: '3d.Point',V_B_dot_0: '3d.Point',V_P_dot_0: '3d.Point',V_b_dot_0: $real,V_c_dot_0: $real] :
                        ( ( V_b_dot_0
                          = ( '3d.distance/2' @ V_A_dot_0 @ V_B_dot_0 ) )
                        & ( V_c_dot_0
                          = ( '3d.distance/2' @ V_B_dot_0 @ V_P_dot_0 ) )
                        & ( '3d.vec-same-direction/2' @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) @ ( '3d.vec/2' @ V_B_dot_0 @ V_P_dot_0 ) )
                        & ( V_V_dot_0
                          = ( $sum @ ( '3d.volume-of/1' @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ V_A_dot_0 @ V_a_dot_0 @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) ) @ ( '3d.disk/3' @ V_B_dot_0 @ V_a_dot_0 @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) ) ) ) @ ( '3d.volume-of/1' @ ( '3d.cone/2' @ ( '3d.disk/3' @ V_B_dot_0 @ V_a_dot_0 @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) ) @ V_P_dot_0 ) ) ) )
                        & ( V_S
                          = ( $sum @ ( '3d.area-of/1' @ ( '3d.cylindrical-surface/2' @ ( '3d.circle/3' @ V_A_dot_0 @ V_a_dot_0 @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) ) @ ( '3d.circle/3' @ V_B_dot_0 @ V_a_dot_0 @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) ) ) ) @ ( '3d.area-of/1' @ ( '3d.right-conical-surface/2' @ ( '3d.circle/3' @ V_B_dot_0 @ V_a_dot_0 @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) ) @ V_P_dot_0 ) ) ) ) ) )
                  @ V_T ) ) )
          @ V_minT )
        & ? [V_a: $real,V_b: $real,V_c: $real,V_V: $real] :
            ( ( $less @ 0.0 @ V_a )
            & ( $less @ 0.0 @ V_b )
            & ( $less @ 0.0 @ V_c )
            & ( $less @ 0.0 @ V_V )
            & ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Point'] :
                ( ( V_b
                  = ( '3d.distance/2' @ V_A @ V_B ) )
                & ( V_c
                  = ( '3d.distance/2' @ V_B @ V_P ) )
                & ( '3d.vec-same-direction/2' @ ( '3d.vec/2' @ V_A @ V_B ) @ ( '3d.vec/2' @ V_B @ V_P ) )
                & ( V_V
                  = ( $sum @ ( '3d.volume-of/1' @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ V_A @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ ( '3d.disk/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) ) ) @ ( '3d.volume-of/1' @ ( '3d.cone/2' @ ( '3d.disk/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ V_P ) ) ) )
                & ( V_minT
                  = ( $sum @ ( '3d.area-of/1' @ ( '3d.cylindrical-surface/2' @ ( '3d.circle/3' @ V_A @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ ( '3d.circle/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) ) ) @ ( '3d.area-of/1' @ ( '3d.right-conical-surface/2' @ ( '3d.circle/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ V_P ) ) ) ) )
            & ( V_abbc
              = ( 'cons/2' @ $real @ ( $quotient @ V_a @ V_b ) @ ( 'cons/2' @ $real @ ( $quotient @ V_b @ V_c ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 0.0 @ 'b/0' )
      & ( $less @ 0.0 @ 'c/0' )
      & ( V_V_dot_0
        = ( $product @ ( $quotient @ 1.0 @ 3.0 ) @ ( $product @ 'Pi/0' @ ( $product @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( $sum @ ( $product @ 3.0 @ 'b/0' ) @ 'c/0' ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 0.0 @ 'b/0' )
      & ( $less @ 0.0 @ 'c/0' )
      & ( V_S_dot_0
        = ( $product @ 'Pi/0' @ ( $product @ 'a/0' @ ( $sum @ ( $product @ 2.0 @ 'b/0' ) @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'c/0' @ 2.0 ) ) ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_T_dot_0: $real] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 0.0 @ 'V/0' )
      & ( V_T_dot_0
        = ( $sum @ ( $quotient @ ( $product @ 2.0 @ 'V/0' ) @ 'a/0' ) @ ( $quotient @ ( $product @ ( 'sqrt/1' @ 5.0 ) @ ( $product @ 'Pi/0' @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) @ 3.0 ) ) ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_abbc_dot_0: ( 'ListOf' @ $real )] :
      ( V_abbc_dot_0
      = ( 'cons/2' @ $real @ ( 'sqrt/1' @ 5.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p4_question,[])).

