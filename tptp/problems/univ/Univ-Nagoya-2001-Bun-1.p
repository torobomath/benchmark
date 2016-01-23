%% DOMAIN:    Quadratic Functions
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2001, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-08-06
%%
%% <PROBLEM-TEXT>
%% Consider the function $g(x)= - |2 f(x)- 1| + 1$ ( $0\le x\le 1$),
%% where the function $f(x)= - |2 x - 1| + 1$ ( $0\le x\le 1$). When
%% $0 < c < 1$, find $x$ that satisfies $g(x)= c$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   70 (   5 equality;  18 variable)
%            Maximal formula depth :   29 (  21 average)
%            Number of connectives :   58 (   0   ~;   3   |;   6   &;  49   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   0   ?;   4   ^)
%                                         (   4   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
        ( ( '<=/2' @ 0 @ V_x )
        & ( '<=/2' @ V_x @ 1 )
        & ( '</2' @ 0 @ V_c )
        & ( '</2' @ V_c @ 1 )
        & ( V_c
          = ( 'LamApp/2'
            @ ^ [V_x_dot_0: 'R'] :
                ( '+/2'
                @ ( '-/1'
                  @ ( 'abs/1'
                    @ ( '-/2'
                      @ ( '*/2' @ 2
                        @ ( 'LamApp/2'
                          @ ^ [V_x_dot_1: 'R'] :
                              ( '+/2' @ ( '-/1' @ ( 'abs/1' @ ( '-/2' @ ( '*/2' @ 2 @ V_x_dot_1 ) @ 1 ) ) ) @ 1 )
                          @ V_x_dot_0 ) )
                      @ 1 ) ) )
                @ 1 )
            @ V_x ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_2: 'R'] :
      ( ( '</2' @ 0 @ V_c )
      & ( '</2' @ V_c @ 1 )
      & ( ( V_x_dot_2
          = ( '//2' @ V_c @ 4 ) )
        | ( V_x_dot_2
          = ( '-/1' @ ( '//2' @ ( '-/2' @ V_c @ 2 ) @ 4 ) ) )
        | ( V_x_dot_2
          = ( '//2' @ ( '+/2' @ V_c @ 2 ) @ 4 ) )
        | ( V_x_dot_2
          = ( '-/1' @ ( '//2' @ ( '-/2' @ V_c @ 4 ) @ 4 ) ) ) ) ) ),
    answer_to(p1_question,[])).
