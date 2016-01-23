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
%            Number of atoms       :  309 (  73 equality; 105 variable)
%            Maximal formula depth :   36 (  22 average)
%            Number of connectives :  208 (  45   ~;  11   |;  62   &;  90   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :)
%            Number of variables   :    8 (   0 sgn;   0   !;   5   ?;   3   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ABCDE: 'ListOf' @ 'R'] :
      ? [V_A: 'R',V_B: 'R',V_C: 'R',V_D: 'R',V_E: 'R'] :
        ( ( V_ABCDE
          = ( 'cons/2' @ V_A @ ( 'cons/2' @ V_B @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_D @ ( 'cons/2' @ V_E @ 'nil/0' ) ) ) ) ) )
        & ( 'all/2'
          @ ^ [V_x: 'R'] :
              ( 'member/2' @ V_x @ ( 'cons/2' @ 1 @ ( 'cons/2' @ 2 @ ( 'cons/2' @ 3 @ ( 'cons/2' @ 4 @ ( 'cons/2' @ 5 @ 'nil/0' ) ) ) ) ) )
          @ ( 'cons/2' @ V_A @ ( 'cons/2' @ V_B @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_D @ ( 'cons/2' @ V_E @ 'nil/0' ) ) ) ) ) )
        & ( 'pairwise-distinct/1' @ ( 'cons/2' @ V_A @ ( 'cons/2' @ V_B @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_D @ ( 'cons/2' @ V_E @ 'nil/0' ) ) ) ) ) )
        & ( V_A != 1 )
        & ( V_B != 2 )
        & ( V_C != 3 )
        & ( V_D != 4 )
        & ( V_E != 5 )
        & ( ( '+/2' @ V_A @ 1 )
         != V_B )
        & ( ( '+/2' @ V_B @ 1 )
         != V_C )
        & ( ( '+/2' @ V_C @ 1 )
         != V_D )
        & ( ( '+/2' @ V_D @ 1 )
         != V_E )
        & ( ( ( V_D = 1 )
            & ( V_A = 2 )
            & ( V_E != 3 )
            & ( V_C != 4 )
            & ( V_B != 5 ) )
          | ( ( V_D = 1 )
            & ( V_A != 2 )
            & ( V_E = 3 )
            & ( V_C != 4 )
            & ( V_B != 5 ) )
          | ( ( V_D = 1 )
            & ( V_A != 2 )
            & ( V_E != 3 )
            & ( V_C = 4 )
            & ( V_B != 5 ) )
          | ( ( V_D = 1 )
            & ( V_A != 2 )
            & ( V_E != 3 )
            & ( V_C != 4 )
            & ( V_B = 5 ) )
          | ( ( V_D != 1 )
            & ( V_A = 2 )
            & ( V_E = 3 )
            & ( V_C != 4 )
            & ( V_B != 5 ) )
          | ( ( V_D != 1 )
            & ( V_A = 2 )
            & ( V_E != 3 )
            & ( V_C = 4 )
            & ( V_B != 5 ) )
          | ( ( V_D != 1 )
            & ( V_A = 2 )
            & ( V_E != 3 )
            & ( V_C != 4 )
            & ( V_B = 5 ) )
          | ( ( V_D != 1 )
            & ( V_A != 2 )
            & ( V_E = 3 )
            & ( V_C = 4 )
            & ( V_B != 5 ) )
          | ( ( V_D != 1 )
            & ( V_A != 2 )
            & ( V_E = 3 )
            & ( V_C != 4 )
            & ( V_B = 5 ) )
          | ( ( V_D != 1 )
            & ( V_A != 2 )
            & ( V_E != 3 )
            & ( V_C = 4 )
            & ( V_B = 5 ) ) )
        & ( ( ( ( '+/2' @ V_D @ 1 )
              = V_A )
            & ( ( '+/2' @ V_A @ 1 )
             != V_E )
            & ( ( '+/2' @ V_E @ 1 )
              = V_C )
            & ( ( '+/2' @ V_C @ 1 )
             != V_B ) )
          | ( ( ( '+/2' @ V_D @ 1 )
              = V_A )
            & ( ( '+/2' @ V_A @ 1 )
             != V_E )
            & ( ( '+/2' @ V_E @ 1 )
             != V_C )
            & ( ( '+/2' @ V_C @ 1 )
              = V_B ) )
          | ( ( ( '+/2' @ V_D @ 1 )
             != V_A )
            & ( ( '+/2' @ V_A @ 1 )
              = V_E )
            & ( ( '+/2' @ V_E @ 1 )
             != V_C )
            & ( ( '+/2' @ V_C @ 1 )
              = V_B ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ABCDE_dot_0: 'ListOf' @ 'R'] :
      ( V_ABCDE_dot_0
      = ( 'cons/2' @ 3 @ ( 'cons/2' @ 5 @ ( 'cons/2' @ 4 @ ( 'cons/2' @ 2 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ) ),
    answer_to(p_question,[])).
