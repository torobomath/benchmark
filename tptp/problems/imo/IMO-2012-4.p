%% DOMAIN:    Algebra, misc
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2012, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-17
%%
%% <PROBLEM-TEXT>
%% Find all functions f : Z -> Z such that, for all integers a, b, c that
%% satisfy a + b + c = 0, the following equality holds:
%% f(a)^2 + f(b)^2 + f(c)^2 = 2 f(a) f(b) + 2 f(b) f(c) + 2 f(c) f(a).
%% (Here Z denotes the set of integers.)
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  101 (  11 equality;  36 variable)
%            Maximal formula depth :   18 (  16 average)
%            Number of connectives :   77 (   1   ~;   3   |;   1   &;  71   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :   14 (   5 sgn;   3   !;   1   ?;  10   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   0 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( $int > $int )
    @ ^ [V_f: ( $int > $int )] :
      ! [V_a: $int,V_b: $int,V_c: $int] :
        ( ( ( $sum @ V_a @ ( $sum @ V_b @ V_c ) )
          = 1 )
       => ( ( $sum @ ( 'int.^/2' @ ( V_f @ V_a ) @ 2 ) @ ( $sum @ ( 'int.^/2' @ ( V_f @ V_b ) @ 2 ) @ ( 'int.^/2' @ ( V_f @ V_c ) @ 2 ) ) )
          = ( $sum @ ( $product @ 2 @ ( $product @ ( V_f @ V_b ) @ ( V_f @ V_c ) ) ) @ ( $sum @ ( $product @ 2 @ ( $product @ ( V_f @ V_a ) @ ( V_f @ V_b ) ) ) @ ( $product @ 2 @ ( $product @ ( V_f @ V_a ) @ ( V_f @ V_c ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: ( $int > $int )] :
    ? [V_k: $int] :
      ( ( V_k != 0 )
      & ( ( V_f_dot_0
          = ( ^ [V_x_dot_2: $int] : 0 ) )
        | ( V_f_dot_0
          = ( ^ [V_x_dot_1: $int] :
                ( 'if/3' @ $int
                @ ^ [V___dot_2: 'Unit'] :
                    ( ( $remainder_f @ V_x_dot_1 @ 2 )
                    = 0 )
                @ 0
                @ V_k ) ) )
        | ( V_f_dot_0
          = ( ^ [V_x_dot_0: $int] :
                ( 'if/3' @ $int
                @ ^ [V___dot_1: 'Unit'] :
                    ( ( $remainder_f @ V_x_dot_0 @ 4 )
                    = 0 )
                @ 0
                @ ( 'if/3' @ $int
                  @ ^ [V___dot_0: 'Unit'] :
                      ( ( $remainder_f @ V_x_dot_0 @ 4 )
                      = 1 )
                  @ V_k
                  @ ( 'if/3' @ $int
                    @ ^ [V__: 'Unit'] :
                        ( ( $remainder_f @ V_x_dot_0 @ 4 )
                        = 2 )
                    @ ( $product @ 4 @ V_k )
                    @ V_k ) ) ) ) )
        | ( V_f_dot_0
          = ( ^ [V_x: $int] :
                ( $product @ V_k @ ( 'int.^/2' @ V_x @ 2 ) ) ) ) ) ) ),
    answer_to(p_question,[])).

