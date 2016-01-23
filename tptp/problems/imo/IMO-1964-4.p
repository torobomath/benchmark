%% DOMAIN:    Combinatorics, pigeon-hole principle
%% THEORY:    PA(comb)
%% SOURCE:    International Mathematical Olympiad, 1964, Problem 4
%% SCORE:     6
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-24
%%
%% <PROBLEM-TEXT>
%% Seventeen people correspond by mail with one another - each one with all
%% the rest. In their letters only three different topics are discussed.
%% Each pair of correspondents deals with only one of these topics.
%% Prove that there are at least three people who write to each other
%% about the same topic.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   72 (   2 equality;  42 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :   74 (   0   ~;   0   |;  12   &;  58   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :)
%            Number of variables   :   14 (   0 sgn;   6   !;   8   ?;   0   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p,conjecture,(
    ! [V_G: 'ListOf' @ ( 'Triple' @ 'Z' @ 'Z' @ 'Z' )] :
      ( ( ! [V_abt: 'Triple' @ 'Z' @ 'Z' @ 'Z'] :
            ( ( 'member/2' @ V_abt @ V_G )
           => ? [V_a_dot_0: 'Z',V_b_dot_0: 'Z',V_t_dot_0: 'Z'] :
                ( ( V_abt
                  = ( 'triple/3' @ V_a_dot_0 @ V_b_dot_0 @ V_t_dot_0 ) )
                & ( 'int.<=/2' @ 1 @ V_a_dot_0 )
                & ( 'int.</2' @ V_a_dot_0 @ V_b_dot_0 )
                & ( 'int.<=/2' @ V_b_dot_0 @ 17 )
                & ( 'int.<=/2' @ 1 @ V_t_dot_0 )
                & ( 'int.<=/2' @ V_t_dot_0 @ 3 ) ) )
        & ! [V_a: 'Z',V_b: 'Z'] :
            ( ( ( 'int.<=/2' @ 1 @ V_a )
              & ( 'int.</2' @ V_a @ V_b )
              & ( 'int.<=/2' @ V_b @ 17 ) )
           => ( ? [V_t: 'Z'] :
                  ( 'member/2' @ ( 'triple/3' @ V_a @ V_b @ V_t ) @ V_G )
              & ! [V_t1: 'Z',V_t2: 'Z'] :
                  ( ( ( 'member/2' @ ( 'triple/3' @ V_a @ V_b @ V_t1 ) @ V_G )
                    & ( 'member/2' @ ( 'triple/3' @ V_a @ V_b @ V_t2 ) @ V_G ) )
                 => ( V_t1 = V_t2 ) ) ) ) )
     => ? [V_a_dot_1: 'Z',V_b_dot_1: 'Z',V_c: 'Z',V_t_dot_1: 'Z'] :
          ( ( 'member/2' @ ( 'triple/3' @ V_a_dot_1 @ V_b_dot_1 @ V_t_dot_1 ) @ V_G )
          & ( 'member/2' @ ( 'triple/3' @ V_b_dot_1 @ V_c @ V_t_dot_1 ) @ V_G )
          & ( 'member/2' @ ( 'triple/3' @ V_c @ V_a_dot_1 @ V_t_dot_1 ) @ V_G ) ) ) )).
