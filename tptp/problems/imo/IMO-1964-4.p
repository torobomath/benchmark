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
%            Number of atoms       :  121 (   2 equality;  42 variable)
%            Maximal formula depth :   20 (  20 average)
%            Number of connectives :  123 (   0   ~;   0   |;  12   &; 107   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   6   !;   8   ?;   0   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   2 pred;    0 func;    3 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_G: ( 'ListOf' @ ( 'Triple' @ $int @ $int @ $int ) )] :
      ( ( ! [V_abt: ( 'Triple' @ $int @ $int @ $int )] :
            ( ( 'member/2' @ ( 'Triple' @ $int @ $int @ $int ) @ V_abt @ V_G )
           => ? [V_a_dot_0: $int,V_b_dot_0: $int,V_t_dot_0: $int] :
                ( ( V_abt
                  = ( 'triple/3' @ $int @ $int @ $int @ V_a_dot_0 @ V_b_dot_0 @ V_t_dot_0 ) )
                & ( $lesseq @ 1 @ V_a_dot_0 )
                & ( $less @ V_a_dot_0 @ V_b_dot_0 )
                & ( $lesseq @ V_b_dot_0 @ 17 )
                & ( $lesseq @ 1 @ V_t_dot_0 )
                & ( $lesseq @ V_t_dot_0 @ 3 ) ) )
        & ! [V_a: $int,V_b: $int] :
            ( ( ( $lesseq @ 1 @ V_a )
              & ( $less @ V_a @ V_b )
              & ( $lesseq @ V_b @ 17 ) )
           => ( ? [V_t: $int] :
                  ( 'member/2' @ ( 'Triple' @ $int @ $int @ $int ) @ ( 'triple/3' @ $int @ $int @ $int @ V_a @ V_b @ V_t ) @ V_G )
              & ! [V_t1: $int,V_t2: $int] :
                  ( ( ( 'member/2' @ ( 'Triple' @ $int @ $int @ $int ) @ ( 'triple/3' @ $int @ $int @ $int @ V_a @ V_b @ V_t1 ) @ V_G )
                    & ( 'member/2' @ ( 'Triple' @ $int @ $int @ $int ) @ ( 'triple/3' @ $int @ $int @ $int @ V_a @ V_b @ V_t2 ) @ V_G ) )
                 => ( V_t1 = V_t2 ) ) ) ) )
     => ? [V_a_dot_1: $int,V_b_dot_1: $int,V_c: $int,V_t_dot_1: $int] :
          ( ( 'member/2' @ ( 'Triple' @ $int @ $int @ $int ) @ ( 'triple/3' @ $int @ $int @ $int @ V_a_dot_1 @ V_b_dot_1 @ V_t_dot_1 ) @ V_G )
          & ( 'member/2' @ ( 'Triple' @ $int @ $int @ $int ) @ ( 'triple/3' @ $int @ $int @ $int @ V_b_dot_1 @ V_c @ V_t_dot_1 ) @ V_G )
          & ( 'member/2' @ ( 'Triple' @ $int @ $int @ $int ) @ ( 'triple/3' @ $int @ $int @ $int @ V_c @ V_a_dot_1 @ V_t_dot_1 ) @ V_G ) ) ) )).

