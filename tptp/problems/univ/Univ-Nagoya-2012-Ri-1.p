%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2012, Science Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-05-07
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a positive constant.
%% The curve $C$ on the $xy$-plane has equation $y = x^3 - a^2 x$.
%% (1) Let $l$ be the tangent to $l$ at the point $A(t, t^3 - a^2 t)$.
%% Find the area $S(t)$ of the region enclosed by $l$ and $C$, where $t$ is not $0$.
%% (2) Let $b$ be a real number. How many of the tangents to $C$ pass through the point $B(2a,b)$
%% on the $xy$-plane?
%% (3) Assume that only two of the tangets $l_1$ and $l_2$ to $C$ pass through the point $B(2a,b)$ and
%% they do not pass through the origin $(0,0)$.
%% Let $S_1$ be the area of the region enclosed by $l_1$ and $C$ and $S_2$ be the area of the region
%% enclosed by $l_2$ and $C$. When $S_1 \ge S_2$, find the value of $\frac{S_1}{S_2}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   10 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :  354 (  15 equality;  70 variable)
%            Maximal formula depth :   31 (  10 average)
%            Number of connectives :  321 (   3   ~;   4   |;  27   &; 285   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   42 (   4   :;   0   =)
%            Number of variables   :   26 (   0 sgn;   3   !;   4   ?;  19   ^)
%                                         (  26   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   18 (   3 pred;    4 func;   11 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('l/0_type',type,(
    'l/0': '2d.Shape' )).

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_st: $real] :
      ? [V_u: $real,V_v: $real] :
        ( ( V_st
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2' @ '2d.Shape' @ 'l/0'
                @ ( 'cons/2' @ '2d.Shape'
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x_dot_0: $real] :
                          ( $difference @ ( '^/2' @ V_x_dot_0 @ 3.0 ) @ ( $product @ ( '^/2' @ 'a/0' @ 2.0 ) @ V_x_dot_0 ) ) ) )
                  @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
        & ( 'l/0'
          = ( '2d.line2d/3' @ V_u @ 1.0 @ V_v ) )
        & ( '2d.tangent/3' @ 'l/0'
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $difference @ ( '^/2' @ V_x @ 3.0 ) @ ( $product @ ( '^/2' @ 'a/0' @ 2.0 ) @ V_x ) ) ) )
          @ ( '2d.point/2' @ 't/0' @ ( $difference @ ( '^/2' @ 't/0' @ 3.0 ) @ ( $product @ ( '^/2' @ 'a/0' @ 2.0 ) @ 't/0' ) ) ) )
        & ( $greater @ 'a/0' @ 0.0 )
        & ( 't/0' != 0.0 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $int
    @ ^ [V_x: $int] :
        ( V_x
        = ( 'cardinality-of/1' @ '2d.Shape'
          @ ( 'set-by-def/1' @ '2d.Shape'
            @ ^ [V_l: '2d.Shape'] :
                ( ( '2d.line-type/1' @ V_l )
                & ( '2d.on/2' @ ( '2d.point/2' @ ( $product @ 2.0 @ 'a/0' ) @ 'b/0' ) @ V_l )
                & ( '2d.tangent/2' @ V_l
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x_dot_0: $real] :
                          ( $difference @ ( '^/2' @ V_x_dot_0 @ 3.0 ) @ ( $product @ ( '^/2' @ 'a/0' @ 2.0 ) @ V_x_dot_0 ) ) ) ) )
                & ( $greater @ 'a/0' @ 0.0 ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ! [V_a: $real,V_b: $real] :
        ( ( ( $greater @ V_a @ 0.0 )
          & ( 2
            = ( 'cardinality-of/1' @ '2d.Shape'
              @ ( 'set-by-def/1' @ '2d.Shape'
                @ ^ [V_l: '2d.Shape'] :
                    ( ( '2d.line-type/1' @ V_l )
                    & ( '2d.on/2' @ ( '2d.point/2' @ ( $product @ 2.0 @ V_a ) @ V_b ) @ V_l )
                    & ( '2d.tangent/2' @ V_l
                      @ ( '2d.graph-of/1'
                        @ ( 'fun/1'
                          @ ^ [V_x_dot_1: $real] :
                              ( $difference @ ( '^/2' @ V_x_dot_1 @ 3.0 ) @ ( $product @ ( '^/2' @ V_a @ 2.0 ) @ V_x_dot_1 ) ) ) ) ) ) ) ) )
          & ! [V_ls: '2d.Shape'] :
              ( ( ( '2d.line-type/1' @ V_ls )
                & ( '2d.on/2' @ ( '2d.point/2' @ ( $product @ 2.0 @ V_a ) @ V_b ) @ V_ls )
                & ( '2d.tangent/2' @ V_ls
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x_dot_0: $real] :
                          ( $difference @ ( '^/2' @ V_x_dot_0 @ 3.0 ) @ ( $product @ ( '^/2' @ V_a @ 2.0 ) @ V_x_dot_0 ) ) ) ) ) )
             => ~ ( '2d.on/2' @ '2d.origin/0' @ V_ls ) ) )
       => ? [V_l1: '2d.Shape',V_l2: '2d.Shape'] :
            ( ( '2d.line-type/1' @ V_l1 )
            & ( '2d.on/2' @ ( '2d.point/2' @ ( $product @ 2.0 @ V_a ) @ V_b ) @ V_l1 )
            & ( '2d.tangent/2' @ V_l1
              @ ( '2d.graph-of/1'
                @ ( 'fun/1'
                  @ ^ [V_x_dot_7: $real] :
                      ( $difference @ ( '^/2' @ V_x_dot_7 @ 3.0 ) @ ( $product @ ( '^/2' @ V_a @ 2.0 ) @ V_x_dot_7 ) ) ) ) )
            & ( '2d.line-type/1' @ V_l2 )
            & ( '2d.on/2' @ ( '2d.point/2' @ ( $product @ 2.0 @ V_a ) @ V_b ) @ V_l2 )
            & ( '2d.tangent/2' @ V_l2
              @ ( '2d.graph-of/1'
                @ ( 'fun/1'
                  @ ^ [V_x_dot_6: $real] :
                      ( $difference @ ( '^/2' @ V_x_dot_6 @ 3.0 ) @ ( $product @ ( '^/2' @ V_a @ 2.0 ) @ V_x_dot_6 ) ) ) ) )
            & ( $greatereq
              @ ( '2d.area-of/1'
                @ ( '2d.shape-enclosed-by/1'
                  @ ( 'cons/2' @ '2d.Shape' @ V_l1
                    @ ( 'cons/2' @ '2d.Shape'
                      @ ( '2d.graph-of/1'
                        @ ( 'fun/1'
                          @ ^ [V_x_dot_5: $real] :
                              ( $difference @ ( '^/2' @ V_x_dot_5 @ 3.0 ) @ ( $product @ ( '^/2' @ V_a @ 2.0 ) @ V_x_dot_5 ) ) ) )
                      @ ( 'nil/0' @ '2d.Shape' ) ) ) ) )
              @ ( '2d.area-of/1'
                @ ( '2d.shape-enclosed-by/1'
                  @ ( 'cons/2' @ '2d.Shape' @ V_l2
                    @ ( 'cons/2' @ '2d.Shape'
                      @ ( '2d.graph-of/1'
                        @ ( 'fun/1'
                          @ ^ [V_x_dot_4: $real] :
                              ( $difference @ ( '^/2' @ V_x_dot_4 @ 3.0 ) @ ( $product @ ( '^/2' @ V_a @ 2.0 ) @ V_x_dot_4 ) ) ) )
                      @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
            & ( V_x
              = ( $quotient
                @ ( '2d.area-of/1'
                  @ ( '2d.shape-enclosed-by/1'
                    @ ( 'cons/2' @ '2d.Shape' @ V_l1
                      @ ( 'cons/2' @ '2d.Shape'
                        @ ( '2d.graph-of/1'
                          @ ( 'fun/1'
                            @ ^ [V_x_dot_3: $real] :
                                ( $difference @ ( '^/2' @ V_x_dot_3 @ 3.0 ) @ ( $product @ ( '^/2' @ V_a @ 2.0 ) @ V_x_dot_3 ) ) ) )
                        @ ( 'nil/0' @ '2d.Shape' ) ) ) ) )
                @ ( '2d.area-of/1'
                  @ ( '2d.shape-enclosed-by/1'
                    @ ( 'cons/2' @ '2d.Shape' @ V_l2
                      @ ( 'cons/2' @ '2d.Shape'
                        @ ( '2d.graph-of/1'
                          @ ( 'fun/1'
                            @ ^ [V_x_dot_2: $real] :
                                ( $difference @ ( '^/2' @ V_x_dot_2 @ 3.0 ) @ ( $product @ ( '^/2' @ V_a @ 2.0 ) @ V_x_dot_2 ) ) ) )
                        @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_st_dot_0: $real] :
      ( ( $greater @ 'a/0' @ 0.0 )
      & ( 't/0' != 0.0 )
      & ( V_st_dot_0
        = ( $product @ ( $quotient @ 27.0 @ 4.0 ) @ ( '^/2' @ 't/0' @ 4.0 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_1: $int] :
      ( ( ( $less @ ( $product @ ( $uminus @ 2.0 ) @ ( '^/2' @ 'a/0' @ 3.0 ) ) @ 'b/0' )
        & ( $less @ 'b/0' @ ( $product @ 6.0 @ ( '^/2' @ 'a/0' @ 3.0 ) ) )
        & ( V_x_dot_1 = 3 ) )
      | ( ( 'b/0'
          = ( $product @ ( $uminus @ 2.0 ) @ ( '^/2' @ 'a/0' @ 3.0 ) ) )
        & ( V_x_dot_1 = 2 ) )
      | ( ( 'b/0'
          = ( $product @ 6.0 @ ( '^/2' @ 'a/0' @ 3.0 ) ) )
        & ( V_x_dot_1 = 2 ) )
      | ( ( ( $greater @ ( $product @ ( $uminus @ 2.0 ) @ ( '^/2' @ 'a/0' @ 3.0 ) ) @ 'b/0' )
          | ( $greater @ 'b/0' @ ( $product @ 6.0 @ ( '^/2' @ 'a/0' @ 3.0 ) ) ) )
        & ( V_x_dot_1 = 1 ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_x_dot_8: $real] : ( V_x_dot_8 = 16.0 ) ),
    answer_to(p3_question,[])).

