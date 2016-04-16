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

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  206 (   8 equality;  38 variable)
%            Maximal formula depth :   30 (  12 average)
%            Number of connectives :  188 (   0   ~;   0   |;  12   &; 176   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   2   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   0   !;   5   ?;  11   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    3 func;    7 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
        ( ( $lesseq @ 0.0 @ 'a/0' )
        & ( $lesseq @ 0.0 @ 'b/0' )
        & ( V_S
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2' @ '2d.Shape'
                @ ( '2d.graph-of/1'
                  @ ( 'fun/1'
                    @ ^ [V_x_dot_0: $real] :
                        ( $sum @ ( '^/2' @ V_x_dot_0 @ 3.0 ) @ ( $product @ 'b/0' @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) ) )
                @ ( 'cons/2' @ '2d.Shape'
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: $real] :
                          ( $sum @ ( $product @ 'a/0' @ ( '^/2' @ V_x @ 2.0 ) ) @ ( $product @ 'a/0' @ ( $product @ 'b/0' @ V_x ) ) ) ) )
                  @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_a_b_minS: ( 'ListOf' @ $real )] :
      ? [V_a: $real,V_b: $real,V_minS: $real] :
        ( ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_S: $real] :
              ? [V_a_dot_0: $real,V_b_dot_0: $real] :
                ( ( $lesseq @ 0.0 @ V_a_dot_0 )
                & ( $lesseq @ 0.0 @ V_b_dot_0 )
                & ( ( $sum @ V_a_dot_0 @ V_b_dot_0 )
                  = 1.0 )
                & ( V_S
                  = ( '2d.area-of/1'
                    @ ( '2d.shape-enclosed-by/1'
                      @ ( 'cons/2' @ '2d.Shape'
                        @ ( '2d.graph-of/1'
                          @ ( 'fun/1'
                            @ ^ [V_x_dot_2: $real] :
                                ( $sum @ ( '^/2' @ V_x_dot_2 @ 3.0 ) @ ( $product @ V_b_dot_0 @ ( '^/2' @ V_x_dot_2 @ 2.0 ) ) ) ) )
                        @ ( 'cons/2' @ '2d.Shape'
                          @ ( '2d.graph-of/1'
                            @ ( 'fun/1'
                              @ ^ [V_x_dot_1: $real] :
                                  ( $sum @ ( $product @ V_a_dot_0 @ ( '^/2' @ V_x_dot_1 @ 2.0 ) ) @ ( $product @ V_a_dot_0 @ ( $product @ V_b_dot_0 @ V_x_dot_1 ) ) ) ) )
                          @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )
          @ V_minS )
        & ( $lesseq @ 0.0 @ V_a )
        & ( $lesseq @ 0.0 @ V_b )
        & ( ( $sum @ V_a @ V_b )
          = 1.0 )
        & ( V_minS
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2' @ '2d.Shape'
                @ ( '2d.graph-of/1'
                  @ ( 'fun/1'
                    @ ^ [V_x_dot_0: $real] :
                        ( $sum @ ( '^/2' @ V_x_dot_0 @ 3.0 ) @ ( $product @ V_b @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) ) )
                @ ( 'cons/2' @ '2d.Shape'
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: $real] :
                          ( $sum @ ( $product @ V_a @ ( '^/2' @ V_x @ 2.0 ) ) @ ( $product @ V_a @ ( $product @ V_b @ V_x ) ) ) ) )
                  @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
        & ( V_a_b_minS
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_minS @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( V_S_dot_0
        = ( $product @ ( $quotient @ 1.0 @ 12.0 ) @ ( $sum @ ( '^/2' @ 'a/0' @ 4.0 ) @ ( $sum @ ( $product @ 2.0 @ ( $product @ ( '^/2' @ 'a/0' @ 3.0 ) @ 'b/0' ) ) @ ( $sum @ ( $product @ 2.0 @ ( $product @ 'a/0' @ ( '^/2' @ 'b/0' @ 3.0 ) ) ) @ ( '^/2' @ 'b/0' @ 4.0 ) ) ) ) ) )
      & ( $lesseq @ 0.0 @ 'a/0' )
      & ( $lesseq @ 0.0 @ 'b/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_b_minS_dot_0: ( 'ListOf' @ $real )] :
      ( V_a_b_minS_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 32.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ),
    answer_to(p2_question,[])).

