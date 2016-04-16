%% DOMAIN:    Differentiation and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1991, Science Course, Problem 3
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-09
%%
%% <PROBLEM-TEXT>
%% For the constant $p$, let $f(p)$ be the product of the maximum and
%% minimum real solutions of the cubic equation $x^3-3 x-p=0$ However,
%% if there is only one real solution, take the square of the solution
%% as the product.
%%
%% (1) When $p$ moves across all real numbers, find the minimum value of
%% $f(p)$.
%%
%% (2) Draw a rough graph of the function $f(p)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  164 (  17 equality;  48 variable)
%            Maximal formula depth :   23 (  16 average)
%            Number of connectives :  126 (   0   ~;   4   |;  14   &; 108   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   19 (   0 sgn;   0   !;   7   ?;  12   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_minfp: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_fp: $real] :
            ? [V_p: $real,V_minroot: $real,V_maxroot: $real] :
              ( ( 'minimum/2'
                @ ( 'set-by-def/1' @ $real
                  @ ^ [V_x_dot_0: $real] :
                      ( ( $sum @ ( '^/2' @ V_x_dot_0 @ 3.0 ) @ ( $sum @ ( $product @ ( $uminus @ 3.0 ) @ V_x_dot_0 ) @ ( $uminus @ V_p ) ) )
                      = 0.0 ) )
                @ V_minroot )
              & ( 'maximum/2'
                @ ( 'set-by-def/1' @ $real
                  @ ^ [V_x: $real] :
                      ( ( $sum @ ( '^/2' @ V_x @ 3.0 ) @ ( $sum @ ( $product @ ( $uminus @ 3.0 ) @ V_x ) @ ( $uminus @ V_p ) ) )
                      = 0.0 ) )
                @ V_maxroot )
              & ( V_fp
                = ( $product @ V_minroot @ V_maxroot ) ) ) )
        @ V_minfp ) )).

thf(p2_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_G: '2d.Shape'] :
        ( V_G
        = ( '2d.set-of-cfun/1'
          @ ^ [V_p: $real,V_fp: $real] :
            ? [V_minroot: $real,V_maxroot: $real] :
              ( ( 'minimum/2'
                @ ( 'set-by-def/1' @ $real
                  @ ^ [V_x_dot_0: $real] :
                      ( ( $sum @ ( '^/2' @ V_x_dot_0 @ 3.0 ) @ ( $sum @ ( $product @ ( $uminus @ 3.0 ) @ V_x_dot_0 ) @ ( $uminus @ V_p ) ) )
                      = 0.0 ) )
                @ V_minroot )
              & ( 'maximum/2'
                @ ( 'set-by-def/1' @ $real
                  @ ^ [V_x: $real] :
                      ( ( $sum @ ( '^/2' @ V_x @ 3.0 ) @ ( $sum @ ( $product @ ( $uminus @ 3.0 ) @ V_x ) @ ( $uminus @ V_p ) ) )
                      = 0.0 ) )
                @ V_maxroot )
              & ( V_fp
                = ( $product @ V_minroot @ V_maxroot ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_minfp_dot_0: $real] : ( V_minfp_dot_0 = -3.0 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_p_dot_0: $real,V_fp_dot_0: $real] :
        ( ? [V_x_dot_2: $real] :
            ( ( $less @ V_p_dot_0 @ -2.0 )
            & ( V_p_dot_0
              = ( $sum @ ( '^/2' @ V_x_dot_2 @ 3.0 ) @ ( $product @ -3.0 @ V_x_dot_2 ) ) )
            & ( V_fp_dot_0
              = ( '^/2' @ V_x_dot_2 @ 2.0 ) ) )
        | ( ( V_p_dot_0 = -2.0 )
          & ( V_fp_dot_0 = -2.0 ) )
        | ( ( $less @ -2.0 @ V_p_dot_0 )
          & ( $less @ V_p_dot_0 @ 2.0 )
          & ( $lesseq @ -3.0 @ V_fp_dot_0 )
          & ( $less @ V_fp_dot_0 @ -2.0 )
          & ( ( '^/2' @ V_p_dot_0 @ 2.0 )
            = ( $sum @ ( '^/2' @ V_fp_dot_0 @ 3.0 ) @ ( $product @ 3.0 @ ( '^/2' @ V_fp_dot_0 @ 2.0 ) ) ) ) )
        | ( ( V_p_dot_0 = 2.0 )
          & ( V_fp_dot_0 = -2.0 ) )
        | ? [V_x_dot_1: $real] :
            ( ( $less @ 2.0 @ V_p_dot_0 )
            & ( V_p_dot_0
              = ( $sum @ ( '^/2' @ V_x_dot_1 @ 3.0 ) @ ( $product @ -3.0 @ V_x_dot_1 ) ) )
            & ( V_fp_dot_0
              = ( '^/2' @ V_x_dot_1 @ 2.0 ) ) ) ) ),
    answer_to(p2_question,[])).

