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
%            Number of atoms       :  391 (  32 equality; 161 variable)
%            Maximal formula depth :   45 (  23 average)
%            Number of connectives :  346 (   3   ~;   0   |;  45   &; 298   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   46 (   1 sgn;   0   !;  18   ?;  22   ^)
%                                         (  40   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_f: 'R2R'] :
        ( ( V_f
          = ( 'fun/1'
            @ ^ [V_x: 'R'] :
                ( '//2' @ ( '-/2' @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '*/2' @ 2 @ V_x ) ) ) @ 1 ) @ V_x ) ) )
        & ( 'converge/3' @ V_f @ 0 @ V_a )
        & ( 'converge/3' @ ( 'derivative/1' @ V_f ) @ 0 @ V_b )
        & ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ans: 'ListOf' @ ( 'SetOf' @ 'R' )] :
      ? [V_a: 'R',V_b: 'R',V_f: 'R2R',V_r123: 'SetOf' @ 'R',V_r132: 'SetOf' @ 'R',V_r213: 'SetOf' @ 'R',V_r231: 'SetOf' @ 'R',V_r312: 'SetOf' @ 'R',V_r321: 'SetOf' @ 'R',V_p12_3: 'SetOf' @ 'R',V_p13_2: 'SetOf' @ 'R',V_p23_1: 'SetOf' @ 'R',V_p123: 'SetOf' @ 'R'] :
        ( ( V_f
          = ( 'fun/1'
            @ ^ [V_x_dot_12: 'R'] :
                ( '//2' @ ( '-/2' @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '*/2' @ 2 @ V_x_dot_12 ) ) ) @ 1 ) @ V_x_dot_12 ) ) )
        & ( 'converge/3' @ V_f @ 0 @ V_a )
        & ( 'converge/3' @ ( 'derivative/1' @ V_f ) @ 0 @ V_b )
        & ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
        & ( V_f1
          = ( 'fun/1'
            @ ^ [V_x_dot_11: 'R'] :
                ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '*/2' @ 2 @ V_x_dot_11 ) ) ) ) )
        & ( V_f2
          = ( 'fun/1'
            @ ^ [V_x_dot_10: 'R'] :
                ( '+/2' @ 1 @ ( '+/2' @ V_a @ V_x_dot_10 ) ) ) )
        & ( V_f3
          = ( 'fun/1'
            @ ^ [V_x_dot_9: 'R'] :
                ( '+/2' @ 1 @ ( '+/2' @ ( '*/2' @ V_a @ V_x_dot_9 ) @ ( '*/2' @ V_b @ ( '^/2' @ V_x_dot_9 @ 2 ) ) ) ) ) )
        & ( V_r123
          = ( 'set-by-def/1'
            @ ^ [V_x_dot_8: 'R'] :
                ( ( '<=/2' @ ( '//2' @ -1 @ 2 ) @ V_x_dot_8 )
                & ( '>/2' @ ( 'funapp/2' @ V_f1 @ V_x_dot_8 ) @ ( 'funapp/2' @ V_f2 @ V_x_dot_8 ) )
                & ( '>/2' @ ( 'funapp/2' @ V_f2 @ V_x_dot_8 ) @ ( 'funapp/2' @ V_f3 @ V_x_dot_8 ) ) ) ) )
        & ( V_r132
          = ( 'set-by-def/1'
            @ ^ [V_x_dot_7: 'R'] :
                ( ( '<=/2' @ ( '//2' @ -1 @ 2 ) @ V_x_dot_7 )
                & ( '>/2' @ ( 'funapp/2' @ V_f1 @ V_x_dot_7 ) @ ( 'funapp/2' @ V_f3 @ V_x_dot_7 ) )
                & ( '>/2' @ ( 'funapp/2' @ V_f3 @ V_x_dot_7 ) @ ( 'funapp/2' @ V_f2 @ V_x_dot_7 ) ) ) ) )
        & ( V_r213
          = ( 'set-by-def/1'
            @ ^ [V_x_dot_6: 'R'] :
                ( ( '<=/2' @ ( '//2' @ -1 @ 2 ) @ V_x_dot_6 )
                & ( '>/2' @ ( 'funapp/2' @ V_f2 @ V_x_dot_6 ) @ ( 'funapp/2' @ V_f1 @ V_x_dot_6 ) )
                & ( '>/2' @ ( 'funapp/2' @ V_f1 @ V_x_dot_6 ) @ ( 'funapp/2' @ V_f3 @ V_x_dot_6 ) ) ) ) )
        & ( V_r231
          = ( 'set-by-def/1'
            @ ^ [V_x_dot_5: 'R'] :
                ( ( '<=/2' @ ( '//2' @ -1 @ 2 ) @ V_x_dot_5 )
                & ( '>/2' @ ( 'funapp/2' @ V_f2 @ V_x_dot_5 ) @ ( 'funapp/2' @ V_f3 @ V_x_dot_5 ) )
                & ( '>/2' @ ( 'funapp/2' @ V_f3 @ V_x_dot_5 ) @ ( 'funapp/2' @ V_f1 @ V_x_dot_5 ) ) ) ) )
        & ( V_r312
          = ( 'set-by-def/1'
            @ ^ [V_x_dot_4: 'R'] :
                ( ( '<=/2' @ ( '//2' @ -1 @ 2 ) @ V_x_dot_4 )
                & ( '>/2' @ ( 'funapp/2' @ V_f3 @ V_x_dot_4 ) @ ( 'funapp/2' @ V_f1 @ V_x_dot_4 ) )
                & ( '>/2' @ ( 'funapp/2' @ V_f1 @ V_x_dot_4 ) @ ( 'funapp/2' @ V_f2 @ V_x_dot_4 ) ) ) ) )
        & ( V_r321
          = ( 'set-by-def/1'
            @ ^ [V_x_dot_3: 'R'] :
                ( ( '<=/2' @ ( '//2' @ -1 @ 2 ) @ V_x_dot_3 )
                & ( '>/2' @ ( 'funapp/2' @ V_f3 @ V_x_dot_3 ) @ ( 'funapp/2' @ V_f2 @ V_x_dot_3 ) )
                & ( '>/2' @ ( 'funapp/2' @ V_f2 @ V_x_dot_3 ) @ ( 'funapp/2' @ V_f1 @ V_x_dot_3 ) ) ) ) )
        & ( V_p12_3
          = ( 'set-by-def/1'
            @ ^ [V_x_dot_2: 'R'] :
                ( ( '<=/2' @ ( '//2' @ -1 @ 2 ) @ V_x_dot_2 )
                & ( ( 'funapp/2' @ V_f1 @ V_x_dot_2 )
                  = ( 'funapp/2' @ V_f2 @ V_x_dot_2 ) )
                & ( ( 'funapp/2' @ V_f2 @ V_x_dot_2 )
                 != ( 'funapp/2' @ V_f3 @ V_x_dot_2 ) ) ) ) )
        & ( V_p13_2
          = ( 'set-by-def/1'
            @ ^ [V_x_dot_1: 'R'] :
                ( ( '<=/2' @ ( '//2' @ -1 @ 2 ) @ V_x_dot_1 )
                & ( ( 'funapp/2' @ V_f1 @ V_x_dot_1 )
                  = ( 'funapp/2' @ V_f3 @ V_x_dot_1 ) )
                & ( ( 'funapp/2' @ V_f3 @ V_x_dot_1 )
                 != ( 'funapp/2' @ V_f2 @ V_x_dot_1 ) ) ) ) )
        & ( V_p23_1
          = ( 'set-by-def/1'
            @ ^ [V_x_dot_0: 'R'] :
                ( ( '<=/2' @ ( '//2' @ -1 @ 2 ) @ V_x_dot_0 )
                & ( ( 'funapp/2' @ V_f2 @ V_x_dot_0 )
                  = ( 'funapp/2' @ V_f3 @ V_x_dot_0 ) )
                & ( ( 'funapp/2' @ V_f3 @ V_x_dot_0 )
                 != ( 'funapp/2' @ V_f1 @ V_x_dot_0 ) ) ) ) )
        & ( V_p123
          = ( 'set-by-def/1'
            @ ^ [V_x: 'R'] :
                ( ( '<=/2' @ ( '//2' @ -1 @ 2 ) @ V_x )
                & ( ( 'funapp/2' @ V_f1 @ V_x )
                  = ( 'funapp/2' @ V_f2 @ V_x ) )
                & ( ( 'funapp/2' @ V_f2 @ V_x )
                  = ( 'funapp/2' @ V_f3 @ V_x ) ) ) ) )
        & ( V_ans
          = ( 'cons/2' @ V_r123 @ ( 'cons/2' @ V_r132 @ ( 'cons/2' @ V_r213 @ ( 'cons/2' @ V_r231 @ ( 'cons/2' @ V_r312 @ ( 'cons/2' @ V_r321 @ ( 'cons/2' @ V_p12_3 @ ( 'cons/2' @ V_p13_2 @ ( 'cons/2' @ V_p23_1 @ ( 'cons/2' @ V_p123 @ 'nil/0' ) ) ) ) ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
      ( V_ab_dot_0
      = ( 'cons/2' @ 1 @ ( 'cons/2' @ ( '//2' @ -1 @ 2 ) @ 'nil/0' ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ans_dot_0: 'ListOf' @ ( 'SetOf' @ 'R' )] :
    ? [V_E: 'SetOf' @ 'R',V_r231_dot_0: 'SetOf' @ 'R',V_p123_dot_0: 'SetOf' @ 'R',V_r213_dot_0: 'SetOf' @ 'R'] :
      ( ( 'is-empty/1' @ V_E )
      & ( V_r231_dot_0
        = ( 'set-by-def/1'
          @ ^ [V_x_dot_15: 'R'] :
              ( ( '<=/2' @ ( '//2' @ -1 @ 2 ) @ V_x_dot_15 )
              & ( '</2' @ V_x_dot_15 @ 0 ) ) ) )
      & ( V_p123_dot_0
        = ( 'set-by-def/1'
          @ ^ [V_x_dot_14: 'R'] : ( V_x_dot_14 = 0 ) ) )
      & ( V_r213_dot_0
        = ( 'set-by-def/1'
          @ ^ [V_x_dot_13: 'R'] :
              ( '>/2' @ V_x_dot_13 @ 0 ) ) )
      & ( V_ans_dot_0
        = ( 'cons/2' @ V_E @ ( 'cons/2' @ V_E @ ( 'cons/2' @ V_r213_dot_0 @ ( 'cons/2' @ V_r231_dot_0 @ ( 'cons/2' @ V_E @ ( 'cons/2' @ V_E @ ( 'cons/2' @ V_E @ ( 'cons/2' @ V_E @ ( 'cons/2' @ V_E @ ( 'cons/2' @ V_p123_dot_0 @ 'nil/0' ) ) ) ) ) ) ) ) ) ) ) ) ),
    answer_to(p2_question,[])).
