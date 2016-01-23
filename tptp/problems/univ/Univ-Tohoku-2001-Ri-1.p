%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2001, Science Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be positive numbers. Let $S$ be the sum of the areas
%% of the two regions enclosed by the two curves $y = x^3 + b x^2$ and
%% $y = a x^2 + a b x$.
%%
%% (1) Represent $S$ using $a$ and $b$.
%%
%% (2) When $a + b = 1$, find the minimum value of $S$ and the values of
%% $a$ and $b$ that give the minimum value.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  185 (   8 equality;  52 variable)
%            Maximal formula depth :   30 (  18 average)
%            Number of connectives :  167 (   0   ~;   0   |;  12   &; 155   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :)
%            Number of variables   :   20 (   0 sgn;   0   !;   5   ?;  11   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
        ( ( '<=/2' @ 0 @ V_a )
        & ( '<=/2' @ 0 @ V_b )
        & ( V_S
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2'
                @ ( '2d.graph-of/1'
                  @ ( 'fun/1'
                    @ ^ [V_x_dot_0: 'R'] :
                        ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 3 ) @ ( '*/2' @ V_b @ ( '^/2' @ V_x_dot_0 @ 2 ) ) ) ) )
                @ ( 'cons/2'
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: 'R'] :
                          ( '+/2' @ ( '*/2' @ V_a @ ( '^/2' @ V_x @ 2 ) ) @ ( '*/2' @ V_a @ ( '*/2' @ V_b @ V_x ) ) ) ) )
                  @ 'nil/0' ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_a_b_minS: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R',V_minS: 'R'] :
        ( ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_S: 'R'] :
              ? [V_a_dot_0: 'R',V_b_dot_0: 'R'] :
                ( ( '<=/2' @ 0 @ V_a_dot_0 )
                & ( '<=/2' @ 0 @ V_b_dot_0 )
                & ( ( '+/2' @ V_a_dot_0 @ V_b_dot_0 )
                  = 1 )
                & ( V_S
                  = ( '2d.area-of/1'
                    @ ( '2d.shape-enclosed-by/1'
                      @ ( 'cons/2'
                        @ ( '2d.graph-of/1'
                          @ ( 'fun/1'
                            @ ^ [V_x_dot_2: 'R'] :
                                ( '+/2' @ ( '^/2' @ V_x_dot_2 @ 3 ) @ ( '*/2' @ V_b_dot_0 @ ( '^/2' @ V_x_dot_2 @ 2 ) ) ) ) )
                        @ ( 'cons/2'
                          @ ( '2d.graph-of/1'
                            @ ( 'fun/1'
                              @ ^ [V_x_dot_1: 'R'] :
                                  ( '+/2' @ ( '*/2' @ V_a_dot_0 @ ( '^/2' @ V_x_dot_1 @ 2 ) ) @ ( '*/2' @ V_a_dot_0 @ ( '*/2' @ V_b_dot_0 @ V_x_dot_1 ) ) ) ) )
                          @ 'nil/0' ) ) ) ) ) ) )
          @ V_minS )
        & ( '<=/2' @ 0 @ V_a )
        & ( '<=/2' @ 0 @ V_b )
        & ( ( '+/2' @ V_a @ V_b )
          = 1 )
        & ( V_minS
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2'
                @ ( '2d.graph-of/1'
                  @ ( 'fun/1'
                    @ ^ [V_x_dot_0: 'R'] :
                        ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 3 ) @ ( '*/2' @ V_b @ ( '^/2' @ V_x_dot_0 @ 2 ) ) ) ) )
                @ ( 'cons/2'
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: 'R'] :
                          ( '+/2' @ ( '*/2' @ V_a @ ( '^/2' @ V_x @ 2 ) ) @ ( '*/2' @ V_a @ ( '*/2' @ V_b @ V_x ) ) ) ) )
                  @ 'nil/0' ) ) ) ) )
        & ( V_a_b_minS
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_minS @ 'nil/0' ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( V_S_dot_0
        = ( '*/2' @ ( '//2' @ 1 @ 12 ) @ ( '+/2' @ ( '^/2' @ V_a @ 4 ) @ ( '+/2' @ ( '*/2' @ 2 @ ( '*/2' @ ( '^/2' @ V_a @ 3 ) @ V_b ) ) @ ( '+/2' @ ( '*/2' @ 2 @ ( '*/2' @ V_a @ ( '^/2' @ V_b @ 3 ) ) ) @ ( '^/2' @ V_b @ 4 ) ) ) ) ) )
      & ( '<=/2' @ 0 @ V_a )
      & ( '<=/2' @ 0 @ V_b ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_b_minS_dot_0: 'ListOf' @ 'R'] :
      ( V_a_b_minS_dot_0
      = ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ ( 'cons/2' @ ( '//2' @ 1 @ 32 ) @ 'nil/0' ) ) ) ) ),
    answer_to(p2_question,[])).
