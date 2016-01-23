%% DOMAIN:    Number Theory, misc
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1976, Problem 4
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-26
%%
%% <PROBLEM-TEXT>
%% Determine, with proof, the largest number which is the product of positive
%% integers whose sum is $1976$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   24 (   3 equality;   7 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :   17 (   0   ~;   0   |;   2   &;  15   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :    5 (   0 sgn;   0   !;   1   ?;   4   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_M: 'Z'] :
        ( 'int.maximum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_p: 'Z'] :
            ? [V_ns: 'ListOf' @ 'Z'] :
              ( ( 'all/2'
                @ ^ [V_n: 'Z'] :
                    ( 'int.>/2' @ V_n @ 0 )
                @ V_ns )
              & ( 1976
                = ( 'int.sum/1' @ V_ns ) )
              & ( V_p
                = ( 'int.product/1' @ V_ns ) ) ) )
        @ V_M ) )).

thf(p_answer,answer,(
    ^ [V_M_dot_0: 'Z'] :
      ( V_M_dot_0
      = ( 'int.*/2' @ 2 @ ( 'int.^/2' @ 3 @ 658 ) ) ) ),
    answer_to(p_question,[])).
