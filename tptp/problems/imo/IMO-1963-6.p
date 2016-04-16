%% DOMAIN:    Combinatorics, permutation and combination
%% THEORY:    PA(comb)
%% SOURCE:    International Mathematical Olympiad, 1963, Problem 6
%% SCORE:     8
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-24
%%
%% <PROBLEM-TEXT>
%% Five students, $A$, $B$, $C$, $D$, $E$, took part in a contest. One prediction was that
%% the contestants would finish in the order $ABCDE$. This prediction was very
%% poor. In fact no contestant finished in the position predicted, and no two
%% contestants predicted to finish consecutively actually did so.
%% A second prediction had the contestants finishing in the order $DAECB$.
%% This prediction was better. Exactly two of the contestants finished
%% in the places predicted, and two disjoint pairs of students predicted
%% to finish consecutively actually did so. Determine the order in
%% which the contestants finished.
%% </PROBLEM-TEXT>
%%@ NOTE:
%%@ A, B, C, D, E in { 1, 2, 3, 4, 5, 6 }
%%@ A != B, A != C, ..., D != E

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  344 (  73 equality; 105 variable)
%            Maximal formula depth :   36 (  23 average)
%            Number of connectives :  243 (  45   ~;  11   |;  62   &; 125   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   5   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    1 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ABCDE: ( 'ListOf' @ $real )] :
      ? [V_A: $real,V_B: $real,V_C: $real,V_D: $real,V_E: $real] :
        ( ( V_ABCDE
          = ( 'cons/2' @ $real @ V_A @ ( 'cons/2' @ $real @ V_B @ ( 'cons/2' @ $real @ V_C @ ( 'cons/2' @ $real @ V_D @ ( 'cons/2' @ $real @ V_E @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( 'all/2' @ $real
          @ ^ [V_x: $real] :
              ( 'member/2' @ $real @ V_x @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 2.0 @ ( 'cons/2' @ $real @ 3.0 @ ( 'cons/2' @ $real @ 4.0 @ ( 'cons/2' @ $real @ 5.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
          @ ( 'cons/2' @ $real @ V_A @ ( 'cons/2' @ $real @ V_B @ ( 'cons/2' @ $real @ V_C @ ( 'cons/2' @ $real @ V_D @ ( 'cons/2' @ $real @ V_E @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( 'pairwise-distinct/1' @ $real @ ( 'cons/2' @ $real @ V_A @ ( 'cons/2' @ $real @ V_B @ ( 'cons/2' @ $real @ V_C @ ( 'cons/2' @ $real @ V_D @ ( 'cons/2' @ $real @ V_E @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( V_A != 1.0 )
        & ( V_B != 2.0 )
        & ( V_C != 3.0 )
        & ( V_D != 4.0 )
        & ( V_E != 5.0 )
        & ( ( $sum @ V_A @ 1.0 )
         != V_B )
        & ( ( $sum @ V_B @ 1.0 )
         != V_C )
        & ( ( $sum @ V_C @ 1.0 )
         != V_D )
        & ( ( $sum @ V_D @ 1.0 )
         != V_E )
        & ( ( ( V_D = 1.0 )
            & ( V_A = 2.0 )
            & ( V_E != 3.0 )
            & ( V_C != 4.0 )
            & ( V_B != 5.0 ) )
          | ( ( V_D = 1.0 )
            & ( V_A != 2.0 )
            & ( V_E = 3.0 )
            & ( V_C != 4.0 )
            & ( V_B != 5.0 ) )
          | ( ( V_D = 1.0 )
            & ( V_A != 2.0 )
            & ( V_E != 3.0 )
            & ( V_C = 4.0 )
            & ( V_B != 5.0 ) )
          | ( ( V_D = 1.0 )
            & ( V_A != 2.0 )
            & ( V_E != 3.0 )
            & ( V_C != 4.0 )
            & ( V_B = 5.0 ) )
          | ( ( V_D != 1.0 )
            & ( V_A = 2.0 )
            & ( V_E = 3.0 )
            & ( V_C != 4.0 )
            & ( V_B != 5.0 ) )
          | ( ( V_D != 1.0 )
            & ( V_A = 2.0 )
            & ( V_E != 3.0 )
            & ( V_C = 4.0 )
            & ( V_B != 5.0 ) )
          | ( ( V_D != 1.0 )
            & ( V_A = 2.0 )
            & ( V_E != 3.0 )
            & ( V_C != 4.0 )
            & ( V_B = 5.0 ) )
          | ( ( V_D != 1.0 )
            & ( V_A != 2.0 )
            & ( V_E = 3.0 )
            & ( V_C = 4.0 )
            & ( V_B != 5.0 ) )
          | ( ( V_D != 1.0 )
            & ( V_A != 2.0 )
            & ( V_E = 3.0 )
            & ( V_C != 4.0 )
            & ( V_B = 5.0 ) )
          | ( ( V_D != 1.0 )
            & ( V_A != 2.0 )
            & ( V_E != 3.0 )
            & ( V_C = 4.0 )
            & ( V_B = 5.0 ) ) )
        & ( ( ( ( $sum @ V_D @ 1.0 )
              = V_A )
            & ( ( $sum @ V_A @ 1.0 )
             != V_E )
            & ( ( $sum @ V_E @ 1.0 )
              = V_C )
            & ( ( $sum @ V_C @ 1.0 )
             != V_B ) )
          | ( ( ( $sum @ V_D @ 1.0 )
              = V_A )
            & ( ( $sum @ V_A @ 1.0 )
             != V_E )
            & ( ( $sum @ V_E @ 1.0 )
             != V_C )
            & ( ( $sum @ V_C @ 1.0 )
              = V_B ) )
          | ( ( ( $sum @ V_D @ 1.0 )
             != V_A )
            & ( ( $sum @ V_A @ 1.0 )
              = V_E )
            & ( ( $sum @ V_E @ 1.0 )
             != V_C )
            & ( ( $sum @ V_C @ 1.0 )
              = V_B ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ABCDE_dot_0: ( 'ListOf' @ $real )] :
      ( V_ABCDE_dot_0
      = ( 'cons/2' @ $real @ 3.0 @ ( 'cons/2' @ $real @ 5.0 @ ( 'cons/2' @ $real @ 4.0 @ ( 'cons/2' @ $real @ 2.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ),
    answer_to(p_question,[])).

