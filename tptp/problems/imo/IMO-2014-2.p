%% DOMAIN:    Combinatorics, misc
%% THEORY:    PA(comb)
%% SOURCE:    International Mathematical Olympiad, 2014, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-15
%%
%% <PROBLEM-TEXT>
%% Let $n \geq 2$ be an integer. Consider an $n \times n$ chessboard consisting of $n^2$
%% unit squares. A configuration of $n$ rooks on this board is peaceful if every
%% row and every column contains exactly one rook. Find the greatest positive
%% integer $k$ such that, for each peaceful configuration of $n$ rooks, there
%% is a $k \times k$ square which does not contain a rook on any of its $k^2$ unit
%% squares.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  167 (   3 equality;  45 variable)
%            Maximal formula depth :   25 (  12 average)
%            Number of connectives :  165 (   3   ~;   0   |;  18   &; 140   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   1   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   6   !;   2   ?;   3   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   2 pred;    1 func;    3 numbers)

include('axioms.ax').

thf('n/0_type',type,(
    'n/0': $int )).

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_max_k: $int] :
        ( 'int.maximum/2'
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_k: $int] :
            ! [V_ps: ( 'ListOf' @ ( 'Pair' @ $int @ $int ) )] :
              ( ( ( ( 'list-len/1' @ ( 'Pair' @ $int @ $int ) @ V_ps )
                  = 'n/0' )
                & ! [V_i: $int] :
                    ( ( ( $lesseq @ 0 @ V_i )
                      & ( $less @ V_i @ 'n/0' ) )
                   => ( ( $lesseq @ 1 @ ( 'fst/1' @ $int @ $int @ ( 'nth/2' @ ( 'Pair' @ $int @ $int ) @ V_i @ V_ps ) ) )
                      & ( $lesseq @ ( 'fst/1' @ $int @ $int @ ( 'nth/2' @ ( 'Pair' @ $int @ $int ) @ V_i @ V_ps ) ) @ 'n/0' )
                      & ( $lesseq @ 1 @ ( 'snd/1' @ $int @ $int @ ( 'nth/2' @ ( 'Pair' @ $int @ $int ) @ V_i @ V_ps ) ) )
                      & ( $lesseq @ ( 'snd/1' @ $int @ $int @ ( 'nth/2' @ ( 'Pair' @ $int @ $int ) @ V_i @ V_ps ) ) @ 'n/0' ) ) )
                & ! [V_k_dot_0: $int,V_l: $int] :
                    ( ( ( $lesseq @ 0 @ V_k_dot_0 )
                      & ( $less @ V_k_dot_0 @ 'n/0' )
                      & ( $lesseq @ 0 @ V_l )
                      & ( $less @ V_l @ 'n/0' ) )
                   => ( ( ( 'fst/1' @ $int @ $int @ ( 'nth/2' @ ( 'Pair' @ $int @ $int ) @ V_k_dot_0 @ V_ps ) )
                       != ( 'fst/1' @ $int @ $int @ ( 'nth/2' @ ( 'Pair' @ $int @ $int ) @ V_l @ V_ps ) ) )
                      & ( ( 'snd/1' @ $int @ $int @ ( 'nth/2' @ ( 'Pair' @ $int @ $int ) @ V_k_dot_0 @ V_ps ) )
                       != ( 'snd/1' @ $int @ $int @ ( 'nth/2' @ ( 'Pair' @ $int @ $int ) @ V_l @ V_ps ) ) ) ) ) )
             => ? [V_x: $int,V_y: $int] :
                  ( ( $lesseq @ 0 @ V_x )
                  & ( $less @ ( $sum @ V_x @ V_k ) @ 'n/0' )
                  & ( $lesseq @ 0 @ V_y )
                  & ( $less @ ( $sum @ V_y @ V_k ) @ 'n/0' )
                  & ! [V_i_dot_0: $int,V_j: $int] :
                      ( ( ( $lesseq @ V_x @ V_i_dot_0 )
                        & ( $less @ V_i_dot_0 @ ( $sum @ V_x @ V_k ) )
                        & ( $lesseq @ V_y @ V_j )
                        & ( $less @ V_j @ ( $sum @ V_y @ V_k ) ) )
                     => ~ ( 'member/2' @ ( 'Pair' @ $int @ $int ) @ ( 'pair/2' @ $int @ $int @ V_i_dot_0 @ V_j ) @ V_ps ) ) ) ) )
        @ V_max_k ) )).

thf(p_answer,answer,(
    ^ [V_k_dot_1: $int] :
      ( ( $less @ 'n/0' @ ( 'int.^/2' @ ( $sum @ V_k_dot_1 @ 1 ) @ 2 ) )
      & ( $lesseq @ ( 'int.^/2' @ V_k_dot_1 @ 2 ) @ 'n/0' ) ) ),
    answer_to(p_question,[])).

