%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1978, Problem 1
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-20
%%
%% <PROBLEM-TEXT>
%% $m$ and $n$ are natural numbers with $1 \leq m < n$. In their decimal
%% representations, the last three digits of $1978^m$ are equal, respectively, to
%% the last three digits of $1978^n$. Find $m$ and $n$ such that $m + n$ has its least
%% value.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   67 (   5 equality;  20 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   57 (   0   ~;   0   |;   7   &;  49   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   2   !;   3   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    2 func;    5 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_mn: ( 'ListOf' @ $int )] :
      ? [V_m: $int,V_n: $int,V_min: $int] :
        ( ( $greater @ V_n @ V_m )
        & ( $greater @ V_m @ 0 )
        & ( ( $remainder_f @ ( 'int.^/2' @ 1978 @ V_m ) @ 1000 )
          = ( $remainder_f @ ( 'int.^/2' @ 1978 @ V_n ) @ 1000 ) )
        & ( V_min
          = ( $sum @ V_m @ V_n ) )
        & ( V_mn
          = ( 'cons/2' @ $int @ V_m @ ( 'cons/2' @ $int @ V_n @ ( 'nil/0' @ $int ) ) ) )
        & ! [V_m2: $int,V_n2: $int] :
            ( ( ( $greater @ V_n2 @ V_m2 )
              & ( $greater @ V_m2 @ 0 )
              & ( ( $remainder_f @ ( 'int.^/2' @ 1978 @ V_m2 ) @ 1000 )
                = ( $remainder_f @ ( 'int.^/2' @ 1978 @ V_n2 ) @ 1000 ) ) )
           => ( $lesseq @ V_min @ ( $sum @ V_m2 @ V_n2 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_mn_dot_0: ( 'ListOf' @ $int )] :
      ( V_mn_dot_0
      = ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 103 @ ( 'nil/0' @ $int ) ) ) ) ),
    answer_to(p_question,[])).

