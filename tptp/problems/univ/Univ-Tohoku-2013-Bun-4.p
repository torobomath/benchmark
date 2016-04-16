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

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  185 (  15 equality;  23 variable)
%            Maximal formula depth :   27 (  14 average)
%            Number of connectives :  151 (   0   ~;   1   |;   8   &; 142   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   1   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   0   !;   1   ?;  15   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   15 (   2 pred;    4 func;    9 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
        ( ( $lesseq @ 0.0 @ 't/0' )
        & ( $lesseq @ 't/0' @ 1.0 )
        & ( V_S
          = ( '2d.area-of/1'
            @ ( '2d.shape-of-cpfun/1'
              @ ( '2d.char-fun-of/1'
                @ ( '2d.intersection/2'
                  @ ( '2d.shape-enclosed-by/1'
                    @ ( 'cons/2' @ '2d.Shape'
                      @ ( '2d.shape-of-cpfun/1'
                        @ ^ [V_P_dot_3: '2d.Point'] :
                            ( ( '2d.y-coord/1' @ V_P_dot_3 )
                            = ( '^/2' @ ( '2d.x-coord/1' @ V_P_dot_3 ) @ 2.0 ) ) )
                      @ ( 'cons/2' @ '2d.Shape'
                        @ ( '2d.shape-of-cpfun/1'
                          @ ^ [V_P_dot_2: '2d.Point'] :
                              ( ( '2d.x-coord/1' @ V_P_dot_2 )
                              = 1.0 ) )
                        @ ( 'cons/2' @ '2d.Shape'
                          @ ( '2d.shape-of-cpfun/1'
                            @ ^ [V_P_dot_1: '2d.Point'] :
                                ( ( '2d.y-coord/1' @ V_P_dot_1 )
                                = 0.0 ) )
                          @ ( 'nil/0' @ '2d.Shape' ) ) ) ) )
                  @ ( '2d.shape-enclosed-by/1'
                    @ ( 'cons/2' @ '2d.Shape'
                      @ ( '2d.shape-of-cpfun/1'
                        @ ^ [V_P_dot_0: '2d.Point'] :
                            ( ( '2d.y-coord/1' @ V_P_dot_0 )
                            = ( $product @ 4.0 @ ( '^/2' @ ( $difference @ ( '2d.x-coord/1' @ V_P_dot_0 ) @ 't/0' ) @ 2.0 ) ) ) )
                      @ ( 'cons/2' @ '2d.Shape'
                        @ ( '2d.shape-of-cpfun/1'
                          @ ^ [V_P: '2d.Point'] :
                              ( ( '2d.y-coord/1' @ V_P )
                              = 1.0 ) )
                        @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_Smax: $real] :
        ( 'maximum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_S: $real] :
            ? [V_t: $real] :
              ( ( $lesseq @ 0.0 @ V_t )
              & ( $lesseq @ V_t @ 1.0 )
              & ( V_S
                = ( '2d.area-of/1'
                  @ ( '2d.shape-of-cpfun/1'
                    @ ( '2d.char-fun-of/1'
                      @ ( '2d.intersection/2'
                        @ ( '2d.shape-enclosed-by/1'
                          @ ( 'cons/2' @ '2d.Shape'
                            @ ( '2d.shape-of-cpfun/1'
                              @ ^ [V_P_dot_3: '2d.Point'] :
                                  ( ( '2d.y-coord/1' @ V_P_dot_3 )
                                  = ( '^/2' @ ( '2d.x-coord/1' @ V_P_dot_3 ) @ 2.0 ) ) )
                            @ ( 'cons/2' @ '2d.Shape'
                              @ ( '2d.shape-of-cpfun/1'
                                @ ^ [V_P_dot_2: '2d.Point'] :
                                    ( ( '2d.x-coord/1' @ V_P_dot_2 )
                                    = 1.0 ) )
                              @ ( 'cons/2' @ '2d.Shape'
                                @ ( '2d.shape-of-cpfun/1'
                                  @ ^ [V_P_dot_1: '2d.Point'] :
                                      ( ( '2d.y-coord/1' @ V_P_dot_1 )
                                      = 0.0 ) )
                                @ ( 'nil/0' @ '2d.Shape' ) ) ) ) )
                        @ ( '2d.shape-enclosed-by/1'
                          @ ( 'cons/2' @ '2d.Shape'
                            @ ( '2d.shape-of-cpfun/1'
                              @ ^ [V_P_dot_0: '2d.Point'] :
                                  ( ( '2d.y-coord/1' @ V_P_dot_0 )
                                  = ( $product @ 4.0 @ ( '^/2' @ ( $difference @ ( '2d.x-coord/1' @ V_P_dot_0 ) @ V_t ) @ 2.0 ) ) ) )
                            @ ( 'cons/2' @ '2d.Shape'
                              @ ( '2d.shape-of-cpfun/1'
                                @ ^ [V_P: '2d.Point'] :
                                    ( ( '2d.y-coord/1' @ V_P )
                                    = 1.0 ) )
                              @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) ) ) )
        @ V_Smax ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( ( $lesseq @ 0.0 @ 't/0' )
        & ( $less @ 't/0' @ ( $quotient @ 1.0 @ 2.0 ) )
        & ( V_S_dot_0
          = ( $product @ ( $quotient @ 32.0 @ 27.0 ) @ ( '^/2' @ 't/0' @ 3.0 ) ) ) )
      | ( ( $lesseq @ ( $quotient @ 1.0 @ 2.0 ) @ 't/0' )
        & ( $lesseq @ 't/0' @ 1.0 )
        & ( V_S_dot_0
          = ( $sum @ ( $product @ ( $quotient @ 32.0 @ 27.0 ) @ ( '^/2' @ 't/0' @ 3.0 ) ) @ ( $sum @ ( $product @ -4.0 @ ( '^/2' @ 't/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 4.0 @ 't/0' ) @ -1.0 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_Smax_dot_0: $real] :
      ( V_Smax_dot_0
      = ( $quotient @ 1.0 @ 4.0 ) ) ),
    answer_to(p2_question,[])).

