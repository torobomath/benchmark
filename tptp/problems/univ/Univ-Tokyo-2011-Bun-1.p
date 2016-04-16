%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2011, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2013-11-21
%%
%% <PROBLEM-TEXT>
%% Assume that the cubic function $f(x)=a x^3+b x^2+c x+d$ satisfies all
%% the three conditions, $f(1)=1$, $f(-, 1)=-1$, and
%% $\int_{-1}^1(b x^2 + c x + d)dx=1$. Find $f(x)$ that give the minimum
%% value of the definite integral
%% $I=\int_{-1}^{\frac{1}{2}}\{f^{\prime\prime }(x)\}^2 dx$@ and the
%% value of $I$ that gives the minimum value, where
%% $f^{\prime\prime }(x)$ is a derivative of $f^{\prime }(x)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    8 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :  243 (  23 equality;  46 variable)
%            Maximal formula depth :   30 (  10 average)
%            Number of connectives :  195 (   0   ~;   0   |;  19   &; 176   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   4   :;   0   =)
%            Number of variables   :   25 (   0 sgn;   0   !;  13   ?;  12   ^)
%                                         (  25   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   0 pred;    4 func;    8 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf('d/0_type',type,(
    'd/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ 'R2R'
    @ ^ [V_f: 'R2R'] :
      ? [V_I_set: ( 'SetOf' @ $real ),V_I_min: $real] :
        ( ( 'minimum/2' @ V_I_set @ V_I_min )
        & ( V_I_set
          = ( 'set-by-def/1' @ $real
            @ ^ [V_I: $real] :
              ? [V_a_dot_0: $real,V_b_dot_0: $real,V_c_dot_0: $real,V_d_dot_0: $real,V_f_dot_0: 'R2R'] :
                ( ( V_f_dot_0
                  = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_d_dot_0 @ ( 'cons/2' @ $real @ V_c_dot_0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
                & ( ( 'funapp/2' @ V_f_dot_0 @ 1.0 )
                  = 1.0 )
                & ( ( 'funapp/2' @ V_f_dot_0 @ -1.0 )
                  = -1.0 )
                & ( ( 'integral/3'
                    @ ^ [V_x_dot_2: $real] :
                        ( $sum @ ( $product @ V_b_dot_0 @ ( '^/2' @ V_x_dot_2 @ 2.0 ) ) @ ( $sum @ ( $product @ V_c_dot_0 @ V_x_dot_2 ) @ V_d_dot_0 ) )
                    @ -1.0
                    @ 1.0 )
                  = 1.0 )
                & ( V_I
                  = ( 'integral/3'
                    @ ^ [V_x_dot_1: $real] :
                        ( '^/2' @ ( 'funapp/2' @ ( 'derivative/1' @ ( 'derivative/1' @ V_f_dot_0 ) ) @ V_x_dot_1 ) @ 2.0 )
                    @ -1.0
                    @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) ) )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 'd/0' @ ( 'cons/2' @ $real @ 'c/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'a/0' @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( ( 'funapp/2' @ V_f @ 1.0 )
          = 1.0 )
        & ( ( 'funapp/2' @ V_f @ -1.0 )
          = -1.0 )
        & ( ( 'integral/3'
            @ ^ [V_x_dot_0: $real] :
                ( $sum @ ( $product @ 'b/0' @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) @ ( $sum @ ( $product @ 'c/0' @ V_x_dot_0 ) @ 'd/0' ) )
            @ -1.0
            @ 1.0 )
          = 1.0 )
        & ( V_I_min
          = ( 'integral/3'
            @ ^ [V_x: $real] :
                ( '^/2' @ ( 'funapp/2' @ ( 'derivative/1' @ ( 'derivative/1' @ V_f ) ) @ V_x ) @ 2.0 )
            @ -1.0
            @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_I_min: $real] :
      ? [V_I_set: ( 'SetOf' @ $real )] :
        ( ( 'minimum/2' @ V_I_set @ V_I_min )
        & ( V_I_set
          = ( 'set-by-def/1' @ $real
            @ ^ [V_I: $real] :
              ? [V_a: $real,V_b: $real,V_c: $real,V_d: $real,V_f: 'R2R'] :
                ( ( V_f
                  = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_d @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_a @ ( 'nil/0' @ $real ) ) ) ) ) ) )
                & ( ( 'funapp/2' @ V_f @ 1.0 )
                  = 1.0 )
                & ( ( 'funapp/2' @ V_f @ -1.0 )
                  = -1.0 )
                & ( ( 'integral/3'
                    @ ^ [V_x_dot_0: $real] :
                        ( $sum @ ( $product @ V_b @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) @ ( $sum @ ( $product @ V_c @ V_x_dot_0 ) @ V_d ) )
                    @ -1.0
                    @ 1.0 )
                  = 1.0 )
                & ( V_I
                  = ( 'integral/3'
                    @ ^ [V_x: $real] :
                        ( '^/2' @ ( 'funapp/2' @ ( 'derivative/1' @ ( 'derivative/1' @ V_f ) ) @ V_x ) @ 2.0 )
                    @ -1.0
                    @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_f_dot_1: 'R2R'] :
      ( ( V_f_dot_1
        = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $quotient @ 3.0 @ 4.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ 5.0 @ 4.0 ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $quotient @ 3.0 @ 4.0 ) ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $quotient @ 1.0 @ 4.0 ) ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
      & ( 'a/0'
        = ( $uminus @ ( $quotient @ 1.0 @ 4.0 ) ) )
      & ( 'b/0'
        = ( $uminus @ ( $quotient @ 3.0 @ 4.0 ) ) )
      & ( 'c/0'
        = ( $quotient @ 5.0 @ 4.0 ) )
      & ( 'd/0'
        = ( $quotient @ 3.0 @ 4.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_I_min_dot_0: $real] :
      ( V_I_min_dot_0
      = ( $quotient @ 81.0 @ 32.0 ) ) ),
    answer_to(p2_question,[])).

