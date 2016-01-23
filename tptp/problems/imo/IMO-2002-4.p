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
%            Number of atoms       :  111 (   2 equality;  51 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :  106 (   0   ~;   0   |;  15   &;  84   @)
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   15 (   0 sgn;   7   !;   2   ?;   6   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_n: 'Z',V_d: 'ListOf' @ 'Z',V_D: 'Z'] :
      ( ( ( 'int.</2' @ 1 @ V_n )
        & ! [V_x: 'Z'] :
            ( ( ( 'member/2' @ V_x @ V_d )
             => ( ( 'int.is-divisible-by/2' @ V_n @ V_x )
                & ( 'int.</2' @ 0 @ V_x ) ) )
            & ( ( ( 'int.is-divisible-by/2' @ V_n @ V_x )
                & ( 'int.</2' @ 0 @ V_x ) )
             => ( 'member/2' @ V_x @ V_d ) ) )
        & ! [V_l: 'Z'] :
            ( ( ( 'int.<=/2' @ 0 @ V_l )
              & ( 'int.<=/2' @ V_l @ ( 'int.-/2' @ ( 'list-len/1' @ V_d ) @ 2 ) ) )
           => ( 'int.</2' @ ( 'nth/2' @ V_l @ V_d ) @ ( 'nth/2' @ ( 'int.+/2' @ V_l @ 1 ) @ V_d ) ) )
        & ( V_D
          = ( 'int.sum/1'
            @ ( 'zip-with/3'
              @ ^ [V_a: 'Z',V_b: 'Z'] :
                  ( 'int.*/2' @ V_a @ V_b )
              @ V_d
              @ ( 'cdr/1' @ V_d ) ) ) ) )
     => ( 'int.</2' @ V_D @ ( 'int.^/2' @ V_n @ 2 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
      ? [V_d: 'ListOf' @ 'Z',V_D: 'Z'] :
        ( ( 'int.</2' @ 1 @ V_n )
        & ! [V_x: 'Z'] :
            ( ( ( 'member/2' @ V_x @ V_d )
             => ( ( 'int.is-divisible-by/2' @ V_n @ V_x )
                & ( 'int.</2' @ 0 @ V_x ) ) )
            & ( ( ( 'int.is-divisible-by/2' @ V_n @ V_x )
                & ( 'int.</2' @ 0 @ V_x ) )
             => ( 'member/2' @ V_x @ V_d ) ) )
        & ! [V_l: 'Z'] :
            ( ( ( 'int.<=/2' @ 0 @ V_l )
              & ( 'int.<=/2' @ V_l @ ( 'int.-/2' @ ( 'list-len/1' @ V_d ) @ 2 ) ) )
           => ( 'int.</2' @ ( 'nth/2' @ V_l @ V_d ) @ ( 'nth/2' @ ( 'int.+/2' @ V_l @ 1 ) @ V_d ) ) )
        & ( V_D
          = ( 'int.sum/1'
            @ ( 'zip-with/3'
              @ ^ [V_a: 'Z',V_b: 'Z'] :
                  ( 'int.*/2' @ V_a @ V_b )
              @ V_d
              @ ( 'cdr/1' @ V_d ) ) ) )
        & ( 'int.is-divisible-by/2' @ ( 'int.^/2' @ V_n @ 2 ) @ V_D ) ) )).

thf(p2_answer,answer,(
    ^ [V_n_dot_0: 'Z'] :
      ( 'int.is-prime/1' @ V_n_dot_0 ) ),
    answer_to(p2_question,[])).
