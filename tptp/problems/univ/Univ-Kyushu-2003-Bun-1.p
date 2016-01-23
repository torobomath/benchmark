%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2003, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-23
%%
%% <PROBLEM-TEXT>
%% Consider the following condition for the function $f(x)= a x^2 + c$,
%% where the real numbers $a$ and $c$ are coefficients: (*)
%% $f(x)\ge(x + 1)^2$ is true in the range of $0\le x\le 1$.
%%
%% (1) When $a\ge 2$, prove that the minimum value of $c$ that satisfies
%% the condition (*) is $\frac{a}{a-1}$.
%%
%% (2) When $a\le 2$, prove that the minimum value of $c$ that satisfies
%% the condition (*) is $4 - a$.
%%
%% (3) When the function $f(x)$ satisfies the condition (*), find the
%% values of $a$ and $c$ that gives the minimum value of the definite
%% integral $\int_0^1 f(x)d x$ and the value of the definite integral at
%% that time.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  176 (  10 equality;  51 variable)
%            Maximal formula depth :   28 (  18 average)
%            Number of connectives :  156 (   0   ~;   0   |;  14   &; 136   @)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   22 (   0 sgn;   6   !;  11   ?;   5   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_a: 'R'] :
      ( ( '>=/2' @ V_a @ 2 )
     => ? [V_c_set: 'SetOf' @ 'R'] :
          ( ( V_c_set
            = ( 'set-by-def/1'
              @ ^ [V_c: 'R'] :
                ? [V_f: 'R2R'] :
                  ( ( V_f
                    = ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) )
                  & ! [V_x: 'R'] :
                      ( ( ( '<=/2' @ 0 @ V_x )
                        & ( '<=/2' @ V_x @ 1 ) )
                     => ( '>=/2' @ ( 'funapp/2' @ V_f @ V_x ) @ ( '^/2' @ ( '+/2' @ V_x @ 1 ) @ 2 ) ) ) ) ) )
          & ( 'minimum/2' @ V_c_set @ ( '//2' @ V_a @ ( '-/2' @ V_a @ 1 ) ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_a: 'R'] :
      ( ( '<=/2' @ V_a @ 2 )
     => ( 'minimum/2'
        @ ( 'set-by-def/1'
          @ ^ [V_c: 'R'] :
            ? [V_f: 'R2R'] :
              ( ( V_f
                = ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) )
              & ! [V_x: 'R'] :
                  ( ( ( '<=/2' @ 0 @ V_x )
                    & ( '<=/2' @ V_x @ 1 ) )
                 => ( '>=/2' @ ( 'funapp/2' @ V_f @ V_x ) @ ( '^/2' @ ( '+/2' @ V_x @ 1 ) @ 2 ) ) ) ) )
        @ ( '-/2' @ 4 @ V_a ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_ans: 'ListOf' @ 'R'] :
      ? [V_a_opt: 'R',V_c_opt: 'R',V_I_min: 'R',V_I_set: 'SetOf' @ 'R',V_fmin: 'R2R'] :
        ( ( V_ans
          = ( 'cons/2' @ V_a_opt @ ( 'cons/2' @ V_c_opt @ ( 'cons/2' @ V_I_min @ 'nil/0' ) ) ) )
        & ( 'minimum/2' @ V_I_set @ V_I_min )
        & ( V_fmin
          = ( 'poly-fun/1' @ ( 'cons/2' @ V_c_opt @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a_opt @ 'nil/0' ) ) ) ) )
        & ! [V_x_dot_0: 'R'] :
            ( ( ( '<=/2' @ 0 @ V_x_dot_0 )
              & ( '<=/2' @ V_x_dot_0 @ 1 ) )
           => ( '>=/2' @ ( 'funapp/2' @ V_fmin @ V_x_dot_0 ) @ ( '^/2' @ ( '+/2' @ V_x_dot_0 @ 1 ) @ 2 ) ) )
        & ( V_I_set
          = ( 'set-by-def/1'
            @ ^ [V_I: 'R'] :
              ? [V_a: 'R',V_c: 'R',V_f: 'R2R'] :
                ( ( V_f
                  = ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) )
                & ! [V_x: 'R'] :
                    ( ( ( '<=/2' @ 0 @ V_x )
                      & ( '<=/2' @ V_x @ 1 ) )
                   => ( '>=/2' @ ( 'funapp/2' @ V_f @ V_x ) @ ( '^/2' @ ( '+/2' @ V_x @ 1 ) @ 2 ) ) )
                & ( V_I
                  = ( 'integration/3' @ V_f @ 0 @ 1 ) ) ) ) )
        & ( V_I_min
          = ( 'integration/3' @ V_fmin @ 0 @ 1 ) ) ) )).

thf(p3_answer,answer,(
    ^ [V_ans_dot_0: 'ListOf' @ 'R'] :
      ( V_ans_dot_0
      = ( 'cons/2' @ ( '+/2' @ 1 @ ( 'sqrt/1' @ 3 ) ) @ ( 'cons/2' @ ( '//2' @ ( '+/2' @ 1 @ ( 'sqrt/1' @ 3 ) ) @ ( 'sqrt/1' @ 3 ) ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ 1 @ 3 ) @ ( '+/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) @ 4 ) ) @ 'nil/0' ) ) ) ) ),
    answer_to(p3_question,[])).
