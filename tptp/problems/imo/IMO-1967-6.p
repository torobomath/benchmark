%% DOMAIN:    Algebra, number sequences
%% THEORY:    PA(comb)
%% SOURCE:    International Mathematical Olympiad, 1967, Problem 6
%% SCORE:     8
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-24
%%
%% <PROBLEM-TEXT>
%% In a sports contest, there were $m$ medals awarded on $n$ successive days ($n > 1$).
%% On the first day, one medal and $\frac{1}{7}$ of the remaining $m - 1$ medals
%% were awarded. On the second day, two medals and $\frac{1}{7}$ of the now remaining
%% medals were awarded; and so on. On the $n$-th and last day, the remaining $n$
%% medals were awarded. How many days did the contest last, and how many
%% medals were awarded altogether?
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   49 (   5 equality;  18 variable)
%            Maximal formula depth :   16 (  11 average)
%            Number of connectives :   40 (   0   ~;   0   |;   5   &;  34   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    6 (   0 sgn;   1   !;   1   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_nm: 'ListOf' @ 'Z'] :
      ? [V_medals: 'ListOf' @ 'Z'] :
        ( ( V_n
          = ( 'list-len/1' @ V_medals ) )
        & ! [V_k: 'Z'] :
            ( ( ( 'int.<=/2' @ 1 @ V_k )
              & ( 'int.<=/2' @ V_k @ V_n ) )
           => ( ( ( 'nth/2' @ ( 'int.-/2' @ V_k @ 1 ) @ V_medals )
                = ( 'int.+/2' @ V_k @ ( 'int.div/2' @ ( 'int.sum/1' @ ( 'nthcdr/2' @ V_k @ V_medals ) ) @ 7 ) ) )
              & ( 'int.is-divisible-by/2' @ ( 'int.sum/1' @ ( 'nthcdr/2' @ V_k @ V_medals ) ) @ 7 ) ) )
        & ( V_m
          = ( 'int.sum/1' @ V_medals ) )
        & ( V_nm
          = ( 'cons/2' @ V_n @ ( 'cons/2' @ V_m @ 'nil/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_nm_dot_0: 'ListOf' @ 'Z'] :
      ( V_nm_dot_0
      = ( 'cons/2' @ 6 @ ( 'cons/2' @ 36 @ 'nil/0' ) ) ) ),
    answer_to(p_question,[])).
