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

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :   61 (   5 equality;  13 variable)
%            Maximal formula depth :   17 (   7 average)
%            Number of connectives :   52 (   0   ~;   0   |;   5   &;  46   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   2   :;   0   =)
%            Number of variables   :    4 (   0 sgn;   1   !;   1   ?;   2   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    3 func;    4 numbers)

include('axioms.ax').

thf('m/0_type',type,(
    'm/0': $int )).

thf('n/0_type',type,(
    'n/0': $int )).

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_nm: ( 'ListOf' @ $int )] :
      ? [V_medals: ( 'ListOf' @ $int )] :
        ( ( 'n/0'
          = ( 'list-len/1' @ $int @ V_medals ) )
        & ! [V_k: $int] :
            ( ( ( $lesseq @ 1 @ V_k )
              & ( $lesseq @ V_k @ 'n/0' ) )
           => ( ( ( 'nth/2' @ $int @ ( $difference @ V_k @ 1 ) @ V_medals )
                = ( $sum @ V_k @ ( $quotient_f @ ( 'int.sum/1' @ ( 'nthcdr/2' @ $int @ V_k @ V_medals ) ) @ 7 ) ) )
              & ( 'int.is-divisible-by/2' @ ( 'int.sum/1' @ ( 'nthcdr/2' @ $int @ V_k @ V_medals ) ) @ 7 ) ) )
        & ( 'm/0'
          = ( 'int.sum/1' @ V_medals ) )
        & ( V_nm
          = ( 'cons/2' @ $int @ 'n/0' @ ( 'cons/2' @ $int @ 'm/0' @ ( 'nil/0' @ $int ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_nm_dot_0: ( 'ListOf' @ $int )] :
      ( V_nm_dot_0
      = ( 'cons/2' @ $int @ 6 @ ( 'cons/2' @ $int @ 36 @ ( 'nil/0' @ $int ) ) ) ) ),
    answer_to(p_question,[])).

