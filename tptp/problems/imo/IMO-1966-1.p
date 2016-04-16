%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1966, Problem 1
%% SCORE:     6
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-24
%%
%% <PROBLEM-TEXT>
%% In a mathematical contest, three problems, $A$, $B$, $C$ were posed. Among the
%% participants there were $25$ students who solved at least one problem each.
%% Of all the contestants who did not solve problem $A$,  the number who solved
%% $B$ was twice the number who solved $C$. The number of students who solved
%% only problem $A$ was one more than the number of students who solved $A$
%% and at least one other problem. Of all students who solved just one problem,
%% half did not solve problem $A$. How many students solved only problem $B$?
%% </PROBLEM-TEXT>
%%@ A student is represented by a triple (A, B, C)
%%@ where A, B, C in {0, 1} and x = 1 iff s/he solved problem x.

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  281 (  28 equality;  40 variable)
%            Maximal formula depth :   23 (  13 average)
%            Number of connectives :  255 (   1   ~;  10   |;  11   &; 232   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   1   !;   4   ?;  10   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    2 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_numOnlyB: $int] :
      ? [V_Students: ( 'ListOf' @ ( 'Triple' @ $int @ $int @ $int ) )] :
        ( ! [V_ABC_dot_7: ( 'Triple' @ $int @ $int @ $int )] :
            ( ( 'member/2' @ ( 'Triple' @ $int @ $int @ $int ) @ V_ABC_dot_7 @ V_Students )
           => ? [V_A: $int,V_B: $int,V_C: $int] :
                ( ( V_ABC_dot_7
                  = ( 'triple/3' @ $int @ $int @ $int @ V_A @ V_B @ V_C ) )
                & ( $is_int @ V_A )
                & ( $is_int @ V_B )
                & ( $is_int @ V_C )
                & ( ( V_A = 0 )
                  | ( V_A = 1 ) )
                & ( ( V_B = 0 )
                  | ( V_B = 1 ) )
                & ( ( V_C = 0 )
                  | ( V_C = 1 ) ) ) )
        & ( 25
          = ( 'list-len/1' @ ( 'Triple' @ $int @ $int @ $int )
            @ ( 'filter/2' @ ( 'Triple' @ $int @ $int @ $int )
              @ ^ [V_ABC_dot_6: ( 'Triple' @ $int @ $int @ $int )] :
                  ( V_ABC_dot_6
                 != ( 'triple/3' @ $int @ $int @ $int @ 0 @ 0 @ 0 ) )
              @ V_Students ) ) )
        & ( ( 'list-len/1' @ ( 'Triple' @ $int @ $int @ $int )
            @ ( 'filter/2' @ ( 'Triple' @ $int @ $int @ $int )
              @ ^ [V_ABC_dot_5: ( 'Triple' @ $int @ $int @ $int )] :
                  ( ( V_ABC_dot_5
                    = ( 'triple/3' @ $int @ $int @ $int @ 0 @ 1 @ 0 ) )
                  | ( V_ABC_dot_5
                    = ( 'triple/3' @ $int @ $int @ $int @ 0 @ 1 @ 1 ) ) )
              @ V_Students ) )
          = ( $product @ 2
            @ ( 'list-len/1' @ ( 'Triple' @ $int @ $int @ $int )
              @ ( 'filter/2' @ ( 'Triple' @ $int @ $int @ $int )
                @ ^ [V_ABC_dot_4: ( 'Triple' @ $int @ $int @ $int )] :
                    ( ( V_ABC_dot_4
                      = ( 'triple/3' @ $int @ $int @ $int @ 0 @ 0 @ 1 ) )
                    | ( V_ABC_dot_4
                      = ( 'triple/3' @ $int @ $int @ $int @ 0 @ 1 @ 1 ) ) )
                @ V_Students ) ) ) )
        & ( ( 'list-len/1' @ ( 'Triple' @ $int @ $int @ $int )
            @ ( 'filter/2' @ ( 'Triple' @ $int @ $int @ $int )
              @ ^ [V_ABC_dot_3: ( 'Triple' @ $int @ $int @ $int )] :
                  ( V_ABC_dot_3
                  = ( 'triple/3' @ $int @ $int @ $int @ 1 @ 0 @ 0 ) )
              @ V_Students ) )
          = ( $sum @ 1
            @ ( 'list-len/1' @ ( 'Triple' @ $int @ $int @ $int )
              @ ( 'filter/2' @ ( 'Triple' @ $int @ $int @ $int )
                @ ^ [V_ABC_dot_2: ( 'Triple' @ $int @ $int @ $int )] :
                    ( ( V_ABC_dot_2
                      = ( 'triple/3' @ $int @ $int @ $int @ 1 @ 0 @ 1 ) )
                    | ( V_ABC_dot_2
                      = ( 'triple/3' @ $int @ $int @ $int @ 1 @ 0 @ 1 ) )
                    | ( V_ABC_dot_2
                      = ( 'triple/3' @ $int @ $int @ $int @ 1 @ 1 @ 1 ) ) )
                @ V_Students ) ) ) )
        & ( ( 'list-len/1' @ ( 'Triple' @ $int @ $int @ $int )
            @ ( 'filter/2' @ ( 'Triple' @ $int @ $int @ $int )
              @ ^ [V_ABC_dot_1: ( 'Triple' @ $int @ $int @ $int )] :
                  ( ( V_ABC_dot_1
                    = ( 'triple/3' @ $int @ $int @ $int @ 1 @ 0 @ 0 ) )
                  | ( V_ABC_dot_1
                    = ( 'triple/3' @ $int @ $int @ $int @ 0 @ 1 @ 0 ) )
                  | ( V_ABC_dot_1
                    = ( 'triple/3' @ $int @ $int @ $int @ 0 @ 0 @ 1 ) ) )
              @ V_Students ) )
          = ( $product @ 2
            @ ( 'list-len/1' @ ( 'Triple' @ $int @ $int @ $int )
              @ ( 'filter/2' @ ( 'Triple' @ $int @ $int @ $int )
                @ ^ [V_ABC_dot_0: ( 'Triple' @ $int @ $int @ $int )] :
                    ( ( V_ABC_dot_0
                      = ( 'triple/3' @ $int @ $int @ $int @ 0 @ 1 @ 0 ) )
                    | ( V_ABC_dot_0
                      = ( 'triple/3' @ $int @ $int @ $int @ 0 @ 0 @ 1 ) ) )
                @ V_Students ) ) ) )
        & ( V_numOnlyB
          = ( 'list-len/1' @ ( 'Triple' @ $int @ $int @ $int )
            @ ( 'filter/2' @ ( 'Triple' @ $int @ $int @ $int )
              @ ^ [V_ABC: ( 'Triple' @ $int @ $int @ $int )] :
                  ( V_ABC
                  = ( 'triple/3' @ $int @ $int @ $int @ 0 @ 1 @ 0 ) )
              @ V_Students ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_numOnlyB_dot_0: $int] : ( V_numOnlyB_dot_0 = 6 ) ),
    answer_to(p_question,[])).

