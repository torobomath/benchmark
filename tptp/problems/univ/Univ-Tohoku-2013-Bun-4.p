%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2013, Humanities Course, Problem 4
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2015-01-08
%%
%% <PROBLEM-TEXT>
%% Let $t$ be the real number that satisfies $0\le t\le 1$. Let $A$ be
%% the region enclosed by the parabola $y = x^2$, the straight line
%% $x = 1$, and the $x$ axis, and let $B$ be the region enclosed by the
%% parabola $y = 4(x - t)^2$ and the straight line $y = 1$. Let $S(t)$
%% be the area of the intersection of $A$ and $B$.
%%
%% (1) Find the value of $S(t)$.
%%
%% (2) Find the maximum value of $S(t)$ in $0\le t\le 1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  168 (  15 equality;  34 variable)
%            Maximal formula depth :   27 (  16 average)
%            Number of connectives :  134 (   0   ~;   1   |;   8   &; 125   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :)
%            Number of variables   :   18 (   0 sgn;   0   !;   1   ?;  15   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
        ( ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( V_S
          = ( '2d.area-of/1'
            @ ( '2d.shape-of-cpfun/1'
              @ ( '2d.char-fun-of/1'
                @ ( '2d.intersection/2'
                  @ ( '2d.shape-enclosed-by/1'
                    @ ( 'cons/2'
                      @ ( '2d.shape-of-cpfun/1'
                        @ ^ [V_P_dot_3: '2d.Point'] :
                            ( ( '2d.y-coord/1' @ V_P_dot_3 )
                            = ( '^/2' @ ( '2d.x-coord/1' @ V_P_dot_3 ) @ 2 ) ) )
                      @ ( 'cons/2'
                        @ ( '2d.shape-of-cpfun/1'
                          @ ^ [V_P_dot_2: '2d.Point'] :
                              ( ( '2d.x-coord/1' @ V_P_dot_2 )
                              = 1 ) )
                        @ ( 'cons/2'
                          @ ( '2d.shape-of-cpfun/1'
                            @ ^ [V_P_dot_1: '2d.Point'] :
                                ( ( '2d.y-coord/1' @ V_P_dot_1 )
                                = 0 ) )
                          @ 'nil/0' ) ) ) )
                  @ ( '2d.shape-enclosed-by/1'
                    @ ( 'cons/2'
                      @ ( '2d.shape-of-cpfun/1'
                        @ ^ [V_P_dot_0: '2d.Point'] :
                            ( ( '2d.y-coord/1' @ V_P_dot_0 )
                            = ( '*/2' @ 4 @ ( '^/2' @ ( '-/2' @ ( '2d.x-coord/1' @ V_P_dot_0 ) @ V_t ) @ 2 ) ) ) )
                      @ ( 'cons/2'
                        @ ( '2d.shape-of-cpfun/1'
                          @ ^ [V_P: '2d.Point'] :
                              ( ( '2d.y-coord/1' @ V_P )
                              = 1 ) )
                        @ 'nil/0' ) ) ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_Smax: 'R'] :
        ( 'maximum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_S: 'R'] :
            ? [V_t: 'R'] :
              ( ( '<=/2' @ 0 @ V_t )
              & ( '<=/2' @ V_t @ 1 )
              & ( V_S
                = ( '2d.area-of/1'
                  @ ( '2d.shape-of-cpfun/1'
                    @ ( '2d.char-fun-of/1'
                      @ ( '2d.intersection/2'
                        @ ( '2d.shape-enclosed-by/1'
                          @ ( 'cons/2'
                            @ ( '2d.shape-of-cpfun/1'
                              @ ^ [V_P_dot_3: '2d.Point'] :
                                  ( ( '2d.y-coord/1' @ V_P_dot_3 )
                                  = ( '^/2' @ ( '2d.x-coord/1' @ V_P_dot_3 ) @ 2 ) ) )
                            @ ( 'cons/2'
                              @ ( '2d.shape-of-cpfun/1'
                                @ ^ [V_P_dot_2: '2d.Point'] :
                                    ( ( '2d.x-coord/1' @ V_P_dot_2 )
                                    = 1 ) )
                              @ ( 'cons/2'
                                @ ( '2d.shape-of-cpfun/1'
                                  @ ^ [V_P_dot_1: '2d.Point'] :
                                      ( ( '2d.y-coord/1' @ V_P_dot_1 )
                                      = 0 ) )
                                @ 'nil/0' ) ) ) )
                        @ ( '2d.shape-enclosed-by/1'
                          @ ( 'cons/2'
                            @ ( '2d.shape-of-cpfun/1'
                              @ ^ [V_P_dot_0: '2d.Point'] :
                                  ( ( '2d.y-coord/1' @ V_P_dot_0 )
                                  = ( '*/2' @ 4 @ ( '^/2' @ ( '-/2' @ ( '2d.x-coord/1' @ V_P_dot_0 ) @ V_t ) @ 2 ) ) ) )
                            @ ( 'cons/2'
                              @ ( '2d.shape-of-cpfun/1'
                                @ ^ [V_P: '2d.Point'] :
                                    ( ( '2d.y-coord/1' @ V_P )
                                    = 1 ) )
                              @ 'nil/0' ) ) ) ) ) ) ) ) ) )
        @ V_Smax ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( ( '<=/2' @ 0 @ V_t )
        & ( '</2' @ V_t @ ( '//2' @ 1 @ 2 ) )
        & ( V_S_dot_0
          = ( '*/2' @ ( '//2' @ 32 @ 27 ) @ ( '^/2' @ V_t @ 3 ) ) ) )
      | ( ( '<=/2' @ ( '//2' @ 1 @ 2 ) @ V_t )
        & ( '<=/2' @ V_t @ 1 )
        & ( V_S_dot_0
          = ( '+/2' @ ( '*/2' @ ( '//2' @ 32 @ 27 ) @ ( '^/2' @ V_t @ 3 ) ) @ ( '+/2' @ ( '*/2' @ -4 @ ( '^/2' @ V_t @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 4 @ V_t ) @ -1 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_Smax_dot_0: 'R'] :
      ( V_Smax_dot_0
      = ( '//2' @ 1 @ 4 ) ) ),
    answer_to(p2_question,[])).
