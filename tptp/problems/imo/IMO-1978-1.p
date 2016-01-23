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
%            Number of atoms       :   59 (   5 equality;  20 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   49 (   0   ~;   0   |;   7   &;  41   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    7 (   0 sgn;   2   !;   3   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_mn: 'ListOf' @ 'Z'] :
      ? [V_m: 'Z',V_n: 'Z',V_min: 'Z'] :
        ( ( 'int.>/2' @ V_n @ V_m )
        & ( 'int.>/2' @ V_m @ 0 )
        & ( ( 'int.mod/2' @ ( 'int.^/2' @ 1978 @ V_m ) @ 1000 )
          = ( 'int.mod/2' @ ( 'int.^/2' @ 1978 @ V_n ) @ 1000 ) )
        & ( V_min
          = ( 'int.+/2' @ V_m @ V_n ) )
        & ( V_mn
          = ( 'cons/2' @ V_m @ ( 'cons/2' @ V_n @ 'nil/0' ) ) )
        & ! [V_m2: 'Z',V_n2: 'Z'] :
            ( ( ( 'int.>/2' @ V_n2 @ V_m2 )
              & ( 'int.>/2' @ V_m2 @ 0 )
              & ( ( 'int.mod/2' @ ( 'int.^/2' @ 1978 @ V_m2 ) @ 1000 )
                = ( 'int.mod/2' @ ( 'int.^/2' @ 1978 @ V_n2 ) @ 1000 ) ) )
           => ( 'int.<=/2' @ V_min @ ( 'int.+/2' @ V_m2 @ V_n2 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_mn_dot_0: 'ListOf' @ 'Z'] :
      ( V_mn_dot_0
      = ( 'cons/2' @ 3 @ ( 'cons/2' @ 103 @ 'nil/0' ) ) ) ),
    answer_to(p_question,[])).
