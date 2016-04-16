%% DOMAIN:    Algebra, number sequences
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1981, Problem 3
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-23
%%
%% <PROBLEM-TEXT>
%% Determine the maximum value of $m^3+n^3$, where $m$ and $n$ are integers
%% satisfying $m$, $n¥in ¥{1, 2, ¥ldots, 1981¥}$ and $(n^2 - m n - m^2)^2 = 1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   51 (   3 equality;  13 variable)
%            Maximal formula depth :   23 (  15 average)
%            Number of connectives :   43 (   0   ~;   0   |;   5   &;  38   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   2   ?;   3   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    3 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_max: $int] :
        ( 'int.maximum/2'
        @ ( 'set-by-def/1' @ $int
          @ ^ [V_var: $int] :
            ? [V_m: $int,V_n: $int] :
              ( ( $lesseq @ 1 @ V_m )
              & ( $lesseq @ V_m @ 1981 )
              & ( $lesseq @ 1 @ V_n )
              & ( $lesseq @ V_n @ 1981 )
              & ( 1
                = ( 'int.^/2' @ ( $difference @ ( $difference @ ( 'int.^/2' @ V_n @ 2 ) @ ( $product @ V_m @ V_n ) ) @ ( 'int.^/2' @ V_m @ 2 ) ) @ 2 ) )
              & ( V_var
                = ( $sum @ ( 'int.^/2' @ V_m @ 3 ) @ ( 'int.^/2' @ V_n @ 3 ) ) ) ) )
        @ V_max ) )).

thf(p_answer,answer,(
    ^ [V_max_dot_0: $int] :
      ( V_max_dot_0
      = ( $sum @ ( 'int.^/2' @ 1597 @ 3 ) @ ( 'int.^/2' @ 987 @ 3 ) ) ) ),
    answer_to(p_question,[])).

