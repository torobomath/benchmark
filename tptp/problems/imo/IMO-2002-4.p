%% DOMAIN:    Number Theory, misc
%% THEORY:    PA(comb)
%% SOURCE:    International Mathematical Olympiad, 2002, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-04
%%
%% <PROBLEM-TEXT>
%% The positive divisors of the integer n > 1 are d1 < d2 < ... < d_k, so that
%% d1 = 1, d_k = n. Let d = d1 d2 + d2 d3 + ... + d_{k-1} d_k. Show that
%% d < n^2 and find all n for which d divides n^2.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  110 (   2 equality;  41 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :  105 (   0   ~;   0   |;  11   &;  89   @)
%                                         (   2 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   7   !;   2   ?;   6   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    3 func;    3 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_n: $int,V_d: ( 'ListOf' @ $int ),V_D: $int] :
      ( ( ( $less @ 1 @ V_n )
        & ! [V_x: $int] :
            ( ( 'member/2' @ $int @ V_x @ V_d )
          <=> ( ( 'int.is-divisible-by/2' @ V_n @ V_x )
              & ( $less @ 0 @ V_x ) ) )
        & ! [V_l: $int] :
            ( ( ( $lesseq @ 0 @ V_l )
              & ( $lesseq @ V_l @ ( $difference @ ( 'list-len/1' @ $int @ V_d ) @ 2 ) ) )
           => ( $less @ ( 'nth/2' @ $int @ V_l @ V_d ) @ ( 'nth/2' @ $int @ ( $sum @ V_l @ 1 ) @ V_d ) ) )
        & ( V_D
          = ( 'int.sum/1'
            @ ( 'zip-with/3' @ $int @ $int @ $int
              @ ^ [V_a: $int,V_b: $int] :
                  ( $product @ V_a @ V_b )
              @ V_d
              @ ( 'cdr/1' @ $int @ V_d ) ) ) ) )
     => ( $less @ V_D @ ( 'int.^/2' @ V_n @ 2 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_n: $int] :
      ? [V_d: ( 'ListOf' @ $int ),V_D: $int] :
        ( ( $less @ 1 @ V_n )
        & ! [V_x: $int] :
            ( ( 'member/2' @ $int @ V_x @ V_d )
          <=> ( ( 'int.is-divisible-by/2' @ V_n @ V_x )
              & ( $less @ 0 @ V_x ) ) )
        & ! [V_l: $int] :
            ( ( ( $lesseq @ 0 @ V_l )
              & ( $lesseq @ V_l @ ( $difference @ ( 'list-len/1' @ $int @ V_d ) @ 2 ) ) )
           => ( $less @ ( 'nth/2' @ $int @ V_l @ V_d ) @ ( 'nth/2' @ $int @ ( $sum @ V_l @ 1 ) @ V_d ) ) )
        & ( V_D
          = ( 'int.sum/1'
            @ ( 'zip-with/3' @ $int @ $int @ $int
              @ ^ [V_a: $int,V_b: $int] :
                  ( $product @ V_a @ V_b )
              @ V_d
              @ ( 'cdr/1' @ $int @ V_d ) ) ) )
        & ( 'int.is-divisible-by/2' @ ( 'int.^/2' @ V_n @ 2 ) @ V_D ) ) )).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: $int] :
      ( 'int.is-prime/1' @ V_n_dot_0 ) ),
    answer_to(p2_question,[])).

