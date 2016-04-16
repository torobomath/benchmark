%% DOMAIN:    Algebra, inequalities
%% THEORY:    RCF+PA
%% SOURCE:    International Mathematical Olympiad, 2004, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-31
%%
%% <PROBLEM-TEXT>
%% Let n >= 3 be an integer. Let t1, t2, ..., t_n be positive real
%% numbers such that
%% n^2 + 1 > (t1 + t2 + ... + t_n)(1/t1 + 1/t2 + ... + 1/t_n).
%% Show that t_i, t_j , t_k are side lengths of a triangle for all i, j, k with
%% 1 <= i < j < k <= n.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   68 (   1 equality;  27 variable)
%            Maximal formula depth :   15 (  15 average)
%            Number of connectives :   65 (   0   ~;   0   |;   7   &;  55   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   7   !;   0   ?;   1   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   3 pred;    4 func;    4 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_n: $int,V_t: 'seq.Seq',V_ti: 'seq.Seq'] :
      ( ( ( 'seq.is-sequence/1' @ V_t )
        & ! [V_k_dot_0: $int] :
            ( ( ( $lesseq @ 1 @ V_k_dot_0 )
              & ( $lesseq @ V_k_dot_0 @ V_n ) )
           => ( $greater @ ( 'seq.nth-term-of/2' @ V_t @ ( 'seq.index/1' @ V_k_dot_0 ) ) @ 0.0 ) )
        & ( V_ti
          = ( 'seq.seq/1'
            @ ^ [V_k: $int] :
                ( $quotient @ 1.0 @ ( 'seq.nth-term-of/2' @ V_t @ ( 'seq.index/1' @ V_k ) ) ) ) )
        & ( $greater @ ( $sum @ ( '^/2' @ ( $to_real @ V_n ) @ 2.0 ) @ 1.0 ) @ ( $product @ ( 'seq.sum-from-to/3' @ V_t @ ( 'seq.index/1' @ 1 ) @ ( 'seq.index/1' @ V_n ) ) @ ( 'seq.sum-from-to/3' @ V_ti @ ( 'seq.index/1' @ 1 ) @ ( 'seq.index/1' @ V_n ) ) ) ) )
     => ! [V_i: $int,V_j: $int,V_k_dot_1: $int] :
          ( ( ( $lesseq @ 1 @ V_i )
            & ( $less @ V_i @ V_j )
            & ( $less @ V_j @ V_k_dot_1 )
            & ( $lesseq @ V_k_dot_1 @ V_n ) )
         => ( 'are-triangle-edges/3' @ ( 'seq.nth-term-of/2' @ V_t @ ( 'seq.index/1' @ V_i ) ) @ ( 'seq.nth-term-of/2' @ V_t @ ( 'seq.index/1' @ V_j ) ) @ ( 'seq.nth-term-of/2' @ V_t @ ( 'seq.index/1' @ V_k_dot_1 ) ) ) ) ) )).

