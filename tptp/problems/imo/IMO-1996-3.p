%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1996, Problem 3
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-06
%%
%% <PROBLEM-TEXT>
%% Let $S$ denote the set of nonnegative integers. Find all functions $f$ from $S$ to
%% itself such that
%% ¥[
%% ¥begin{array}{ll}
%% f(m + f(n)) = f(f(m))+ f(n) &¥forall m, n ¥in S.
%% ¥end{array}
%% ¥]
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   91 (   8 equality;  42 variable)
%            Maximal formula depth :   19 (  16 average)
%            Number of connectives :   73 (   0   ~;   2   |;   8   &;  56   @)
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :   13 (   1 sgn;   7   !;   2   ?;   4   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   3 pred;    4 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( $int > $int )
    @ ^ [V_f: ( $int > $int )] :
        ( ! [V_k_dot_0: $int] :
            ( ( $less @ V_k_dot_0 @ 0 )
           => ( ( V_f @ V_k_dot_0 )
              = 0 ) )
        & ! [V_k: $int] :
            ( ( $lesseq @ 0 @ V_k )
           => ( $lesseq @ 0 @ ( V_f @ V_k ) ) )
        & ! [V_n: $int,V_m: $int] :
            ( ( ( $greatereq @ V_n @ 0 )
              & ( $greatereq @ V_m @ 0 ) )
           => ( ( V_f @ ( $sum @ V_m @ ( V_f @ V_n ) ) )
              = ( $sum @ ( V_f @ ( V_f @ V_m ) ) @ ( V_f @ V_n ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: ( $int > $int )] :
      ( ( V_f_dot_0
        = ( ^ [V_k_dot_4: $int] : 0 ) )
      | ! [V_k_dot_3: $int] :
          ( ( ( $greatereq @ V_k_dot_3 @ 0 )
           => ( ( V_f_dot_0 @ V_k_dot_3 )
              = V_k_dot_3 ) )
          & ( ( $less @ V_k_dot_3 @ 0 )
           => ( ( V_f_dot_0 @ V_k_dot_3 )
              = 0 ) ) )
      | ? [V_ns: ( 'ListOf' @ $int ),V_e: $int] :
          ( ( $greatereq @ V_e @ 2 )
          & ( ( 'list-len/1' @ $int @ V_ns )
            = V_e )
          & ( 'all/2' @ $int
            @ ^ [V_x: $int] :
                ( $greatereq @ V_x @ 0 )
            @ V_ns )
          & ! [V_k_dot_2: $int] :
              ( ( $less @ V_k_dot_2 @ 0 )
             => ( ( V_f_dot_0 @ V_k_dot_2 )
                = 0 ) )
          & ! [V_k_dot_1: $int] :
              ( ( $greatereq @ V_k_dot_1 @ 0 )
             => ( ( V_f_dot_0 @ V_k_dot_1 )
                = ( $product @ V_e @ ( $sum @ ( $quotient_f @ V_k_dot_1 @ V_e ) @ ( 'nth/2' @ $int @ ( $remainder_f @ V_k_dot_1 @ V_e ) @ V_ns ) ) ) ) ) ) ) ),
    answer_to(p_question,[])).

