%% DOMAIN:    Algebra, number sequences
%% THEORY:    RCF+PA
%% SOURCE:    International Mathematical Olympiad, 1985, Problem 6
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% For every real number $x_1$, construct the sequence $x_1, x_2, ¥ldots$ by setting
%% ¥begin{center}
%% $x_{n+1} = x_n (x_n + ¥frac{1}{n})$  for each $n ¥ge 1$.
%% ¥end{center}
%% Prove that there exists exactly one value of $x_1$ for which
%% ¥[
%% 0 < x_n < x_{n+1} < 1
%% ¥]
%% for every $n$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   73 (   3 equality;  28 variable)
%            Maximal formula depth :   22 (  22 average)
%            Number of connectives :   66 (   0   ~;   0   |;  11   &;  52   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   4   !;   2   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    4 func;    3 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ? [V_x1: $real,V_x: 'seq.Seq'] :
      ( ( $less @ 0.0 @ V_x1 )
      & ( $less @ V_x1 @ 1.0 )
      & ( V_x
        = ( 'seq.seq-by-rec1/2' @ V_x1
          @ ^ [V_n_dot_2: $int,V_xn: $real] :
              ( $product @ V_xn @ ( $sum @ V_xn @ ( $quotient @ 1.0 @ ( $to_real @ V_n_dot_2 ) ) ) ) ) )
      & ! [V_n_dot_1: $int] :
          ( ( $lesseq @ V_n_dot_1 @ 1 )
         => ( ( $less @ 0.0 @ ( 'seq.nth-term-of/2' @ V_x @ ( 'seq.index/1' @ V_n_dot_1 ) ) )
            & ( $less @ ( 'seq.nth-term-of/2' @ V_x @ ( 'seq.index/1' @ V_n_dot_1 ) ) @ 1.0 ) ) )
      & ( 'seq.is-strictly-increasing/1' @ V_x )
      & ! [V_y1: $real,V_y: 'seq.Seq'] :
          ( ( ( $less @ 0.0 @ V_y1 )
            & ( $less @ V_y1 @ 1.0 )
            & ( V_y
              = ( 'seq.seq-by-rec1/2' @ V_y1
                @ ^ [V_n_dot_0: $int,V_yn: $real] :
                    ( $product @ V_yn @ ( $sum @ V_yn @ ( $quotient @ 1.0 @ ( $to_real @ V_n_dot_0 ) ) ) ) ) )
            & ! [V_n: $int] :
                ( ( $lesseq @ V_n @ 1 )
               => ( ( $less @ 0.0 @ ( 'seq.nth-term-of/2' @ V_y @ ( 'seq.index/1' @ V_n ) ) )
                  & ( $less @ ( 'seq.nth-term-of/2' @ V_y @ ( 'seq.index/1' @ V_n ) ) @ 1.0 ) ) )
            & ( 'seq.is-strictly-increasing/1' @ V_y ) )
         => ( V_x1 = V_y1 ) ) ) )).

