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
%            Number of atoms       :  157 (  17 equality;  48 variable)
%            Maximal formula depth :   23 (  16 average)
%            Number of connectives :  119 (   0   ~;   4   |;  14   &; 101   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   19 (   0 sgn;   0   !;   7   ?;  12   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_minfp: 'R'] :
        ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_fp: 'R'] :
            ? [V_p: 'R',V_minroot: 'R',V_maxroot: 'R'] :
              ( ( 'minimum/2'
                @ ( 'set-by-def/1'
                  @ ^ [V_x_dot_0: 'R'] :
                      ( ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 3 ) @ ( '+/2' @ ( '*/2' @ ( '-/1' @ 3 ) @ V_x_dot_0 ) @ ( '-/1' @ V_p ) ) )
                      = 0 ) )
                @ V_minroot )
              & ( 'maximum/2'
                @ ( 'set-by-def/1'
                  @ ^ [V_x: 'R'] :
                      ( ( '+/2' @ ( '^/2' @ V_x @ 3 ) @ ( '+/2' @ ( '*/2' @ ( '-/1' @ 3 ) @ V_x ) @ ( '-/1' @ V_p ) ) )
                      = 0 ) )
                @ V_maxroot )
              & ( V_fp
                = ( '*/2' @ V_minroot @ V_maxroot ) ) ) )
        @ V_minfp ) )).

thf(p2_qustion,question,
    ( 'Draw/1'
    @ ^ [V_G: '2d.Shape'] :
        ( V_G
        = ( '2d.set-of-cfun/1'
          @ ^ [V_p: 'R',V_fp: 'R'] :
            ? [V_minroot: 'R',V_maxroot: 'R'] :
              ( ( 'minimum/2'
                @ ( 'set-by-def/1'
                  @ ^ [V_x_dot_0: 'R'] :
                      ( ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 3 ) @ ( '+/2' @ ( '*/2' @ ( '-/1' @ 3 ) @ V_x_dot_0 ) @ ( '-/1' @ V_p ) ) )
                      = 0 ) )
                @ V_minroot )
              & ( 'maximum/2'
                @ ( 'set-by-def/1'
                  @ ^ [V_x: 'R'] :
                      ( ( '+/2' @ ( '^/2' @ V_x @ 3 ) @ ( '+/2' @ ( '*/2' @ ( '-/1' @ 3 ) @ V_x ) @ ( '-/1' @ V_p ) ) )
                      = 0 ) )
                @ V_maxroot )
              & ( V_fp
                = ( '*/2' @ V_minroot @ V_maxroot ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_minfp_dot_0: 'R'] : ( V_minfp_dot_0 = -3 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_p_dot_0: 'R',V_fp_dot_0: 'R'] :
        ( ? [V_x_dot_2: 'R'] :
            ( ( '</2' @ V_p_dot_0 @ -2 )
            & ( V_p_dot_0
              = ( '+/2' @ ( '^/2' @ V_x_dot_2 @ 3 ) @ ( '*/2' @ -3 @ V_x_dot_2 ) ) )
            & ( V_fp_dot_0
              = ( '^/2' @ V_x_dot_2 @ 2 ) ) )
        | ( ( V_p_dot_0 = -2 )
          & ( V_fp_dot_0 = -2 ) )
        | ( ( '</2' @ -2 @ V_p_dot_0 )
          & ( '</2' @ V_p_dot_0 @ 2 )
          & ( '<=/2' @ -3 @ V_fp_dot_0 )
          & ( '</2' @ V_fp_dot_0 @ -2 )
          & ( ( '^/2' @ V_p_dot_0 @ 2 )
            = ( '+/2' @ ( '^/2' @ V_fp_dot_0 @ 3 ) @ ( '*/2' @ 3 @ ( '^/2' @ V_fp_dot_0 @ 2 ) ) ) ) )
        | ( ( V_p_dot_0 = 2 )
          & ( V_fp_dot_0 = -2 ) )
        | ? [V_x_dot_1: 'R'] :
            ( ( '</2' @ 2 @ V_p_dot_0 )
            & ( V_p_dot_0
              = ( '+/2' @ ( '^/2' @ V_x_dot_1 @ 3 ) @ ( '*/2' @ -3 @ V_x_dot_1 ) ) )
            & ( V_fp_dot_0
              = ( '^/2' @ V_x_dot_1 @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).
