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

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  452 (  23 equality; 208 variable)
%            Maximal formula depth :   35 (  19 average)
%            Number of connectives :  400 (   0   ~;   0   |;  44   &; 356   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :)
%            Number of variables   :   53 (   0 sgn;   0   !;  26   ?;  11   ^)
%                                         (  37   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Point'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( '</2' @ 0 @ V_c )
        & ( V_b
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( V_c
          = ( '3d.distance/2' @ V_B @ V_P ) )
        & ( '3d.vec-same-direction/2' @ ( '3d.vec/2' @ V_A @ V_B ) @ ( '3d.vec/2' @ V_B @ V_P ) )
        & ( V_V
          = ( '+/2' @ ( '3d.volume-of/1' @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ V_A @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ ( '3d.disk/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) ) ) @ ( '3d.volume-of/1' @ ( '3d.cone/2' @ ( '3d.disk/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_B @ V_P ) ) @ V_P ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Point'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_b )
        & ( '</2' @ 0 @ V_c )
        & ( V_b
          = ( '3d.distance/2' @ V_A @ V_B ) )
        & ( V_c
          = ( '3d.distance/2' @ V_B @ V_P ) )
        & ( '3d.vec-same-direction/2' @ ( '3d.vec/2' @ V_A @ V_B ) @ ( '3d.vec/2' @ V_B @ V_P ) )
        & ( V_S
          = ( '+/2' @ ( '3d.area-of/1' @ ( '3d.cylindrical-surface/2' @ ( '3d.circle/3' @ V_A @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ ( '3d.circle/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) ) ) @ ( '3d.area-of/1' @ ( '3d.right-conical-surface/2' @ ( '3d.circle/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_B @ V_P ) ) @ V_P ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_T: 'R'] :
        ( ( '</2' @ 0 @ V_a )
        & ( '</2' @ 0 @ V_V )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_S: 'R'] :
              ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Point',V_b: 'R',V_c: 'R'] :
                ( ( '</2' @ 0 @ V_b )
                & ( '</2' @ 0 @ V_c )
                & ( V_b
                  = ( '3d.distance/2' @ V_A @ V_B ) )
                & ( V_c
                  = ( '3d.distance/2' @ V_B @ V_P ) )
                & ( '3d.vec-same-direction/2' @ ( '3d.vec/2' @ V_A @ V_B ) @ ( '3d.vec/2' @ V_B @ V_P ) )
                & ( V_V
                  = ( '+/2' @ ( '3d.volume-of/1' @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ V_A @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ ( '3d.disk/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) ) ) @ ( '3d.volume-of/1' @ ( '3d.cone/2' @ ( '3d.disk/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ V_P ) ) ) )
                & ( V_S
                  = ( '+/2' @ ( '3d.area-of/1' @ ( '3d.cylindrical-surface/2' @ ( '3d.circle/3' @ V_A @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ ( '3d.circle/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) ) ) @ ( '3d.area-of/1' @ ( '3d.right-conical-surface/2' @ ( '3d.circle/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ V_P ) ) ) ) ) )
          @ V_T ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_abbc: 'ListOf' @ 'R'] :
      ? [V_minT: 'R'] :
        ( ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_T: 'R'] :
              ? [V_a_dot_0: 'R',V_V_dot_0: 'R'] :
                ( ( '</2' @ 0 @ V_a_dot_0 )
                & ( '</2' @ 0 @ V_V_dot_0 )
                & ( 'minimum/2'
                  @ ( 'set-by-def/1'
                    @ ^ [V_S: 'R'] :
                      ? [V_A_dot_0: '3d.Point',V_B_dot_0: '3d.Point',V_P_dot_0: '3d.Point',V_b_dot_0: 'R',V_c_dot_0: 'R'] :
                        ( ( V_b_dot_0
                          = ( '3d.distance/2' @ V_A_dot_0 @ V_B_dot_0 ) )
                        & ( V_c_dot_0
                          = ( '3d.distance/2' @ V_B_dot_0 @ V_P_dot_0 ) )
                        & ( '3d.vec-same-direction/2' @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) @ ( '3d.vec/2' @ V_B_dot_0 @ V_P_dot_0 ) )
                        & ( V_V_dot_0
                          = ( '+/2' @ ( '3d.volume-of/1' @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ V_A_dot_0 @ V_a_dot_0 @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) ) @ ( '3d.disk/3' @ V_B_dot_0 @ V_a_dot_0 @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) ) ) ) @ ( '3d.volume-of/1' @ ( '3d.cone/2' @ ( '3d.disk/3' @ V_B_dot_0 @ V_a_dot_0 @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) ) @ V_P_dot_0 ) ) ) )
                        & ( V_S
                          = ( '+/2' @ ( '3d.area-of/1' @ ( '3d.cylindrical-surface/2' @ ( '3d.circle/3' @ V_A_dot_0 @ V_a_dot_0 @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) ) @ ( '3d.circle/3' @ V_B_dot_0 @ V_a_dot_0 @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) ) ) ) @ ( '3d.area-of/1' @ ( '3d.right-conical-surface/2' @ ( '3d.circle/3' @ V_B_dot_0 @ V_a_dot_0 @ ( '3d.vec/2' @ V_A_dot_0 @ V_B_dot_0 ) ) @ V_P_dot_0 ) ) ) ) ) )
                  @ V_T ) ) )
          @ V_minT )
        & ? [V_a: 'R',V_b: 'R',V_c: 'R',V_V: 'R'] :
            ( ( '</2' @ 0 @ V_a )
            & ( '</2' @ 0 @ V_b )
            & ( '</2' @ 0 @ V_c )
            & ( '</2' @ 0 @ V_V )
            & ? [V_A: '3d.Point',V_B: '3d.Point',V_P: '3d.Point'] :
                ( ( V_b
                  = ( '3d.distance/2' @ V_A @ V_B ) )
                & ( V_c
                  = ( '3d.distance/2' @ V_B @ V_P ) )
                & ( '3d.vec-same-direction/2' @ ( '3d.vec/2' @ V_A @ V_B ) @ ( '3d.vec/2' @ V_B @ V_P ) )
                & ( V_V
                  = ( '+/2' @ ( '3d.volume-of/1' @ ( '3d.cylinder/2' @ ( '3d.disk/3' @ V_A @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ ( '3d.disk/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) ) ) @ ( '3d.volume-of/1' @ ( '3d.cone/2' @ ( '3d.disk/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ V_P ) ) ) )
                & ( V_minT
                  = ( '+/2' @ ( '3d.area-of/1' @ ( '3d.cylindrical-surface/2' @ ( '3d.circle/3' @ V_A @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ ( '3d.circle/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) ) ) @ ( '3d.area-of/1' @ ( '3d.right-conical-surface/2' @ ( '3d.circle/3' @ V_B @ V_a @ ( '3d.vec/2' @ V_A @ V_B ) ) @ V_P ) ) ) ) )
            & ( V_abbc
              = ( 'cons/2' @ ( '//2' @ V_a @ V_b ) @ ( 'cons/2' @ ( '//2' @ V_b @ V_c ) @ 'nil/0' ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( '</2' @ 0 @ V_b )
      & ( '</2' @ 0 @ V_c )
      & ( V_V_dot_0
        = ( '*/2' @ ( '//2' @ 1 @ 3 ) @ ( '*/2' @ 'Pi/0' @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ ( '+/2' @ ( '*/2' @ 3 @ V_b ) @ V_c ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( '</2' @ 0 @ V_b )
      & ( '</2' @ 0 @ V_c )
      & ( V_S_dot_0
        = ( '*/2' @ 'Pi/0' @ ( '*/2' @ V_a @ ( '+/2' @ ( '*/2' @ 2 @ V_b ) @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ ( '^/2' @ V_c @ 2 ) ) ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_T_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( '</2' @ 0 @ V_V )
      & ( V_T_dot_0
        = ( '+/2' @ ( '//2' @ ( '*/2' @ 2 @ V_V ) @ V_a ) @ ( '//2' @ ( '*/2' @ ( 'sqrt/1' @ 5 ) @ ( '*/2' @ 'Pi/0' @ ( '^/2' @ V_a @ 2 ) ) ) @ 3 ) ) ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_abbc_dot_0: 'ListOf' @ 'R'] :
      ( V_abbc_dot_0
      = ( 'cons/2' @ ( 'sqrt/1' @ 5 ) @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ 'nil/0' ) ) ) ),
    answer_to(p4_question,[])).
