%% DOMAIN:    Differentiation and its Applications
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2001, Science Course, Problem 2
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% For the function $f(x)=\frac{\sqrt{1+2 x}-1}{x}$ $(x\not= 0)$, let
%% $a =\lim_{x\rightarrow\infty } f(x)$ and
%% $b =\lim_{x\rightarrow 0} f^{\prime }(x)$.
%%
%% (1) Find the values of $a$ and $b$.
%%
%% (2) Investigate the magnitude relation of the three functions
%% $\sqrt{1+2 x}$, $1 + a x$, and $1 + a x + b x^2$ in the range of
%% $-\frac{1}{2}\le x$, and draw the graphs of these functions on the
%% same $x y$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  453 (  31 equality; 158 variable)
%            Maximal formula depth :   49 (  25 average)
%            Number of connectives :  410 (   3   ~;   0   |;  44   &; 363   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :   45 (   0 sgn;   0   !;  23   ?;  22   ^)
%                                         (  45   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   3 pred;    4 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ab: ( 'ListOf' @ $real )] :
      ? [V_f: 'R2R',V_a: $real,V_b: $real] :
        ( ( V_f
          = ( 'fun/1'
            @ ^ [V_x: $real] :
                ( $quotient @ ( $difference @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( $product @ 2.0 @ V_x ) ) ) @ 1.0 ) @ V_x ) ) )
        & ( 'converge/3' @ V_f @ 0.0 @ V_a )
        & ( 'converge/3' @ ( 'derivative/1' @ V_f ) @ 0.0 @ V_b )
        & ( V_ab
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ ( 'SetOf' @ $real ) )
    @ ^ [V_ans: ( 'ListOf' @ ( 'SetOf' @ $real ) )] :
      ? [V_a: $real,V_b: $real,V_f: 'R2R',V_f1: 'R2R',V_f2: 'R2R',V_f3: 'R2R',V_r123: ( 'SetOf' @ $real ),V_r132: ( 'SetOf' @ $real ),V_r213: ( 'SetOf' @ $real ),V_r231: ( 'SetOf' @ $real ),V_r312: ( 'SetOf' @ $real ),V_r321: ( 'SetOf' @ $real ),V_p12_3: ( 'SetOf' @ $real ),V_p13_2: ( 'SetOf' @ $real ),V_p23_1: ( 'SetOf' @ $real ),V_p123: ( 'SetOf' @ $real )] :
        ( ( V_f
          = ( 'fun/1'
            @ ^ [V_x_dot_12: $real] :
                ( $quotient @ ( $difference @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( $product @ 2.0 @ V_x_dot_12 ) ) ) @ 1.0 ) @ V_x_dot_12 ) ) )
        & ( 'converge/3' @ V_f @ 0.0 @ V_a )
        & ( 'converge/3' @ ( 'derivative/1' @ V_f ) @ 0.0 @ V_b )
        & ( V_f1
          = ( 'fun/1'
            @ ^ [V_x_dot_11: $real] :
                ( 'sqrt/1' @ ( $sum @ 1.0 @ ( $product @ 2.0 @ V_x_dot_11 ) ) ) ) )
        & ( V_f2
          = ( 'fun/1'
            @ ^ [V_x_dot_10: $real] :
                ( $sum @ 1.0 @ ( $sum @ V_a @ V_x_dot_10 ) ) ) )
        & ( V_f3
          = ( 'fun/1'
            @ ^ [V_x_dot_9: $real] :
                ( $sum @ 1.0 @ ( $sum @ ( $product @ V_a @ V_x_dot_9 ) @ ( $product @ V_b @ ( '^/2' @ V_x_dot_9 @ 2.0 ) ) ) ) ) )
        & ( V_r123
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x_dot_8: $real] :
                ( ( $lesseq @ ( $quotient @ -1.0 @ 2.0 ) @ V_x_dot_8 )
                & ( $greater @ ( 'funapp/2' @ V_f1 @ V_x_dot_8 ) @ ( 'funapp/2' @ V_f2 @ V_x_dot_8 ) )
                & ( $greater @ ( 'funapp/2' @ V_f2 @ V_x_dot_8 ) @ ( 'funapp/2' @ V_f3 @ V_x_dot_8 ) ) ) ) )
        & ( V_r132
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x_dot_7: $real] :
                ( ( $lesseq @ ( $quotient @ -1.0 @ 2.0 ) @ V_x_dot_7 )
                & ( $greater @ ( 'funapp/2' @ V_f1 @ V_x_dot_7 ) @ ( 'funapp/2' @ V_f3 @ V_x_dot_7 ) )
                & ( $greater @ ( 'funapp/2' @ V_f3 @ V_x_dot_7 ) @ ( 'funapp/2' @ V_f2 @ V_x_dot_7 ) ) ) ) )
        & ( V_r213
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x_dot_6: $real] :
                ( ( $lesseq @ ( $quotient @ -1.0 @ 2.0 ) @ V_x_dot_6 )
                & ( $greater @ ( 'funapp/2' @ V_f2 @ V_x_dot_6 ) @ ( 'funapp/2' @ V_f1 @ V_x_dot_6 ) )
                & ( $greater @ ( 'funapp/2' @ V_f1 @ V_x_dot_6 ) @ ( 'funapp/2' @ V_f3 @ V_x_dot_6 ) ) ) ) )
        & ( V_r231
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x_dot_5: $real] :
                ( ( $lesseq @ ( $quotient @ -1.0 @ 2.0 ) @ V_x_dot_5 )
                & ( $greater @ ( 'funapp/2' @ V_f2 @ V_x_dot_5 ) @ ( 'funapp/2' @ V_f3 @ V_x_dot_5 ) )
                & ( $greater @ ( 'funapp/2' @ V_f3 @ V_x_dot_5 ) @ ( 'funapp/2' @ V_f1 @ V_x_dot_5 ) ) ) ) )
        & ( V_r312
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x_dot_4: $real] :
                ( ( $lesseq @ ( $quotient @ -1.0 @ 2.0 ) @ V_x_dot_4 )
                & ( $greater @ ( 'funapp/2' @ V_f3 @ V_x_dot_4 ) @ ( 'funapp/2' @ V_f1 @ V_x_dot_4 ) )
                & ( $greater @ ( 'funapp/2' @ V_f1 @ V_x_dot_4 ) @ ( 'funapp/2' @ V_f2 @ V_x_dot_4 ) ) ) ) )
        & ( V_r321
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x_dot_3: $real] :
                ( ( $lesseq @ ( $quotient @ -1.0 @ 2.0 ) @ V_x_dot_3 )
                & ( $greater @ ( 'funapp/2' @ V_f3 @ V_x_dot_3 ) @ ( 'funapp/2' @ V_f2 @ V_x_dot_3 ) )
                & ( $greater @ ( 'funapp/2' @ V_f2 @ V_x_dot_3 ) @ ( 'funapp/2' @ V_f1 @ V_x_dot_3 ) ) ) ) )
        & ( V_p12_3
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x_dot_2: $real] :
                ( ( $lesseq @ ( $quotient @ -1.0 @ 2.0 ) @ V_x_dot_2 )
                & ( ( 'funapp/2' @ V_f1 @ V_x_dot_2 )
                  = ( 'funapp/2' @ V_f2 @ V_x_dot_2 ) )
                & ( ( 'funapp/2' @ V_f2 @ V_x_dot_2 )
                 != ( 'funapp/2' @ V_f3 @ V_x_dot_2 ) ) ) ) )
        & ( V_p13_2
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x_dot_1: $real] :
                ( ( $lesseq @ ( $quotient @ -1.0 @ 2.0 ) @ V_x_dot_1 )
                & ( ( 'funapp/2' @ V_f1 @ V_x_dot_1 )
                  = ( 'funapp/2' @ V_f3 @ V_x_dot_1 ) )
                & ( ( 'funapp/2' @ V_f3 @ V_x_dot_1 )
                 != ( 'funapp/2' @ V_f2 @ V_x_dot_1 ) ) ) ) )
        & ( V_p23_1
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x_dot_0: $real] :
                ( ( $lesseq @ ( $quotient @ -1.0 @ 2.0 ) @ V_x_dot_0 )
                & ( ( 'funapp/2' @ V_f2 @ V_x_dot_0 )
                  = ( 'funapp/2' @ V_f3 @ V_x_dot_0 ) )
                & ( ( 'funapp/2' @ V_f3 @ V_x_dot_0 )
                 != ( 'funapp/2' @ V_f1 @ V_x_dot_0 ) ) ) ) )
        & ( V_p123
          = ( 'set-by-def/1' @ $real
            @ ^ [V_x: $real] :
                ( ( $lesseq @ ( $quotient @ -1.0 @ 2.0 ) @ V_x )
                & ( ( 'funapp/2' @ V_f1 @ V_x )
                  = ( 'funapp/2' @ V_f2 @ V_x ) )
                & ( ( 'funapp/2' @ V_f2 @ V_x )
                  = ( 'funapp/2' @ V_f3 @ V_x ) ) ) ) )
        & ( V_ans
          = ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_r123 @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_r132 @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_r213 @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_r231 @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_r312 @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_r321 @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_p12_3 @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_p13_2 @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_p23_1 @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_p123 @ ( 'nil/0' @ ( 'SetOf' @ $real ) ) ) ) ) ) ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $real )] :
      ( V_ab_dot_0
      = ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ ( $quotient @ -1.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ans_dot_0: ( 'ListOf' @ ( 'SetOf' @ $real ) )] :
    ? [V_E: ( 'SetOf' @ $real ),V_r231_dot_0: ( 'SetOf' @ $real ),V_p123_dot_0: ( 'SetOf' @ $real ),V_r213_dot_0: ( 'SetOf' @ $real )] :
      ( ( 'is-empty/1' @ $real @ V_E )
      & ( V_r231_dot_0
        = ( 'set-by-def/1' @ $real
          @ ^ [V_x_dot_15: $real] :
              ( ( $lesseq @ ( $quotient @ -1.0 @ 2.0 ) @ V_x_dot_15 )
              & ( $less @ V_x_dot_15 @ 0.0 ) ) ) )
      & ( V_p123_dot_0
        = ( 'set-by-def/1' @ $real
          @ ^ [V_x_dot_14: $real] : ( V_x_dot_14 = 0.0 ) ) )
      & ( V_r213_dot_0
        = ( 'set-by-def/1' @ $real
          @ ^ [V_x_dot_13: $real] :
              ( $greater @ V_x_dot_13 @ 0.0 ) ) )
      & ( V_ans_dot_0
        = ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_E @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_E @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_r213_dot_0 @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_r231_dot_0 @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_E @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_E @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_E @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_E @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_E @ ( 'cons/2' @ ( 'SetOf' @ $real ) @ V_p123_dot_0 @ ( 'nil/0' @ ( 'SetOf' @ $real ) ) ) ) ) ) ) ) ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

