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
%            Number of atoms       :  102 (   6 equality;  34 variable)
%            Maximal formula depth :   18 (  17 average)
%            Number of connectives :   90 (   2   ~;   2   |;   0   &;  85   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   14 (   5 sgn;   3   !;   1   ?;  10   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'Z' > 'Z'] :
      ! [V_a: 'Z',V_b: 'Z',V_c: 'Z'] :
        ( ( ( 'int.+/2' @ V_a @ ( 'int.+/2' @ V_b @ V_c ) )
          = 1 )
       => ( ( 'int.+/2' @ ( 'int.^/2' @ ( 'LamApp/2' @ V_f @ V_a ) @ 2 ) @ ( 'int.+/2' @ ( 'int.^/2' @ ( 'LamApp/2' @ V_f @ V_b ) @ 2 ) @ ( 'int.^/2' @ ( 'LamApp/2' @ V_f @ V_c ) @ 2 ) ) )
          = ( 'int.+/2' @ ( 'int.*/2' @ 2 @ ( 'int.*/2' @ ( 'LamApp/2' @ V_f @ V_b ) @ ( 'LamApp/2' @ V_f @ V_c ) ) ) @ ( 'int.+/2' @ ( 'int.*/2' @ 2 @ ( 'int.*/2' @ ( 'LamApp/2' @ V_f @ V_a ) @ ( 'LamApp/2' @ V_f @ V_b ) ) ) @ ( 'int.*/2' @ 2 @ ( 'int.*/2' @ ( 'LamApp/2' @ V_f @ V_a ) @ ( 'LamApp/2' @ V_f @ V_c ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: 'Z' > 'Z'] :
    ? [V_d: 'Z'] :
      ( ( V_f_dot_0
        = ( ^ [V_x_dot_1: 'Z'] :
              ( 'int.*/2' @ V_d @ V_x_dot_1 ) ) )
      | ( V_f_dot_0
        = ( ^ [V_x_dot_0: 'Z'] :
              ( 'cond/1'
              @ ( 'cons/2'
                @ ( 'pair/2'
                  @ ^ [V___dot_3: 'Unit'] :
                      ( 'int.is-divisible-by/2' @ V_x_dot_0 @ 2 )
                  @ 0 )
                @ ( 'cons/2'
                  @ ( 'pair/2'
                    @ ^ [V___dot_2: 'Unit'] :
                        ~ ( 'int.is-divisible-by/2' @ V_x_dot_0 @ 2 )
                    @ V_d )
                  @ 'nil/0' ) ) ) ) )
      | ( V_f_dot_0
        = ( ^ [V_x: 'Z'] :
              ( 'cond/1'
              @ ( 'cons/2'
                @ ( 'pair/2'
                  @ ^ [V___dot_1: 'Unit'] :
                      ( 'int.is-divisible-by/2' @ V_x @ 4 )
                  @ 0 )
                @ ( 'cons/2'
                  @ ( 'pair/2'
                    @ ^ [V___dot_0: 'Unit'] :
                        ~ ( 'int.is-divisible-by/2' @ V_x @ 2 )
                    @ V_d )
                  @ ( 'cons/2'
                    @ ( 'pair/2'
                      @ ^ [V__: 'Unit'] :
                          ( ( 'int.div/2' @ V_x @ 4 )
                          = 2 )
                      @ ( 'int.*/2' @ 4 @ V_d ) )
                    @ 'nil/0' ) ) ) ) ) ) ) ),
    answer_to(p_question,[])).
