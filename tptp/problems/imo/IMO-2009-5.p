%% DOMAIN:    Algebra, functional equations
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2009, Problem 5
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-10-31
%%
%% <PROBLEM-TEXT>
%% Determine all functions f from the set of positive integers to the set of
%% positive integers such that, for all positive integers a and b, there
%% exists a non-degenerate triangle with sides of lengths
%% a, f(b) and f(b + f(a) - 1).
%% (A triangle is non-degenerate if its vertices are not collinear.)
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   73 (   3 equality;  36 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :   64 (   0   ~;   0   |;   6   &;  53   @)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    8 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   5   !;   0   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   3 pred;    1 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( $int > $int )
    @ ^ [V_f: ( $int > $int )] :
        ( ! [V_n_dot_0: $int] :
            ( ( $lesseq @ V_n_dot_0 @ 0 )
           => ( ( V_f @ V_n_dot_0 )
              = 0 ) )
        & ! [V_n: $int] :
            ( ( $less @ 0 @ V_n )
           => ( $less @ 0 @ ( V_f @ V_n ) ) )
        & ! [V_a: $int,V_b: $int] :
            ( ( ( $less @ 0 @ V_a )
              & ( $less @ 0 @ V_b ) )
           => ( ( $less @ V_a @ ( $sum @ ( V_f @ V_b ) @ ( V_f @ ( $sum @ V_b @ ( $sum @ ( V_f @ V_a ) @ -1 ) ) ) ) )
              & ( $less @ ( V_f @ V_b ) @ ( $sum @ ( V_f @ ( $sum @ V_b @ ( $sum @ ( V_f @ V_a ) @ -1 ) ) ) @ V_a ) )
              & ( $less @ ( V_f @ ( $sum @ V_b @ ( $sum @ ( V_f @ V_a ) @ -1 ) ) ) @ ( $sum @ V_a @ ( V_f @ V_b ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: ( $int > $int )] :
    ! [V_x: $int] :
      ( ( ( $greater @ V_x @ 0 )
       => ( ( V_f_dot_0 @ V_x )
          = V_x ) )
      & ( ( $lesseq @ V_x @ 0 )
       => ( ( V_f_dot_0 @ V_x )
          = 0 ) ) ) ),
    answer_to(p_question,[])).

