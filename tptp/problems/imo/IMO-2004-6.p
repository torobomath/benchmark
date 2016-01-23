%% DOMAIN:    Number Theory, misc
%% THEORY:    PA(comb)
%% SOURCE:    International Mathematical Olympiad, 2004, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-04
%%
%% <PROBLEM-TEXT>
%% We call a positive integer <i>alternating</i> if every two consecutive
%% digits in its decimal representation are of different parity.
%% Find all positive integers n such that n has a multiple which is alternating.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   36 (   2 equality;  13 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :   33 (   2   ~;   0   |;   4   &;  26   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    5 (   0 sgn;   1   !;   2   ?;   2   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( ( 'int.</2' @ 0 @ V_n )
        & ? [V_m: 'Z',V_digits: 'ListOf' @ 'Z'] :
            ( ( 'int.is-divisible-by/2' @ V_m @ V_n )
            & ( V_digits
              = ( 'int.int2decimal/1' @ V_m ) )
            & ! [V_k: 'Z'] :
                ( ( ( 'int.<=/2' @ 0 @ V_k )
                  & ( 'int.</2' @ ( 'int.+/2' @ V_k @ 1 ) @ ( 'list-len/1' @ V_digits ) ) )
               => ( ( 'int.mod/2' @ ( 'nth/2' @ V_k @ V_digits ) @ 2 )
                 != ( 'int.mod/2' @ ( 'nth/2' @ ( 'int.+/2' @ V_k @ 1 ) @ V_digits ) @ 2 ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: 'Z'] :
      ~ ( 'int.is-divisible-by/2' @ V_n_dot_0 @ 20 ) ),
    answer_to(p_question,[])).
