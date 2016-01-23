%% DOMAIN:    Number Theory, modular arithmetic
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 2012, Problem 6
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-21
%%
%% <PROBLEM-TEXT>
%% Find all positive integers n for which there exist non-negative integers
%% a1, a2, ..., a_n
%% such that
%% 1/(2^a1) + 1/(2^a2) + ... + 1/(2^a_n)
%% = 1/(3^a1) + 2/(3^a2) + ... + n/(3^a_n) = 1.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   45 (   5 equality;  13 variable)
%            Maximal formula depth :   17 (  13 average)
%            Number of connectives :   34 (   0   ~;   1   |;   3   &;  30   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   2   ?;   5   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
        ( ( 'int.</2' @ 0 @ V_n )
        & ? [V_a: 'ListOf' @ 'Z'] :
            ( ( ( 'list-len/1' @ V_a )
              = V_n )
            & ( ( 'rat.sum/1'
                @ ( 'map/2'
                  @ ^ [V_x_dot_0: 'Z'] :
                      ( 'rat.ratio/2' @ 1 @ ( 'int.^/2' @ 2 @ V_x_dot_0 ) )
                  @ V_a ) )
              = 1 )
            & ( ( 'rat.sum/1'
                @ ( 'zip-with/3'
                  @ ^ [V_n_dot_0: 'Z',V_x: 'Z'] :
                      ( 'rat.ratio/2' @ V_n_dot_0 @ ( 'int.^/2' @ 3 @ V_x ) )
                  @ ( 'int.iota/2' @ 1 @ V_n )
                  @ V_a ) )
              = 1 ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_1: 'Z'] :
    ? [V_m: 'Z'] :
      ( ( V_n_dot_1
        = ( 'int.+/2' @ ( 'int.*/2' @ 4 @ V_m ) @ 1 ) )
      | ( V_n_dot_1
        = ( 'int.+/2' @ ( 'int.*/2' @ 4 @ V_m ) @ 2 ) ) ) ),
    answer_to(p_question,[])).
