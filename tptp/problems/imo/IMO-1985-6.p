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
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :   10 (   0 sgn;   4   !;   2   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ? [V_x1: 'R',V_x: 'seq.Seq'] :
      ( ( '</2' @ 0 @ V_x1 )
      & ( '</2' @ V_x1 @ 1 )
      & ( V_x
        = ( 'seq.seq-by-rec1/2' @ V_x1
          @ ^ [V_n_dot_2: 'Z',V_xn: 'R'] :
              ( '*/2' @ V_xn @ ( '+/2' @ V_xn @ ( '//2' @ 1 @ ( 'int->real/1' @ V_n_dot_2 ) ) ) ) ) )
      & ! [V_n_dot_1: 'Z'] :
          ( ( 'int.<=/2' @ V_n_dot_1 @ 1 )
         => ( ( '</2' @ 0 @ ( 'seq.nth-term-of/2' @ V_x @ ( 'seq.index/1' @ V_n_dot_1 ) ) )
            & ( '</2' @ ( 'seq.nth-term-of/2' @ V_x @ ( 'seq.index/1' @ V_n_dot_1 ) ) @ 1 ) ) )
      & ( 'seq.is-strictly-increasing/1' @ V_x )
      & ! [V_y1: 'R',V_y: 'seq.Seq'] :
          ( ( ( '</2' @ 0 @ V_y1 )
            & ( '</2' @ V_y1 @ 1 )
            & ( V_y
              = ( 'seq.seq-by-rec1/2' @ V_y1
                @ ^ [V_n_dot_0: 'Z',V_yn: 'R'] :
                    ( '*/2' @ V_yn @ ( '+/2' @ V_yn @ ( '//2' @ 1 @ ( 'int->real/1' @ V_n_dot_0 ) ) ) ) ) )
            & ! [V_n: 'Z'] :
                ( ( 'int.<=/2' @ V_n @ 1 )
               => ( ( '</2' @ 0 @ ( 'seq.nth-term-of/2' @ V_y @ ( 'seq.index/1' @ V_n ) ) )
                  & ( '</2' @ ( 'seq.nth-term-of/2' @ V_y @ ( 'seq.index/1' @ V_n ) ) @ 1 ) ) )
            & ( 'seq.is-strictly-increasing/1' @ V_y ) )
         => ( V_x1 = V_y1 ) ) ) )).
