%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2003, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, and $c$ be real numbers, and define $a\not= 0$. Assume
%% that the quadratic function $f(x)=a x^2+b x+c$ satisfies the
%% following conditions (A) and (B): (A) For all the values of $x$ that
%% satisfy (A) $f(- 1)=-1, f(1)=1, f^{\prime }(1)\le 6$ and (B)
%% $-1\le x\le 1$, $f(x)\le 3 x^2-1$ is true. Then, find the range of
%% the possible value of the integral
%% $I=\int_{-1}^1(f^{\prime }(x))^2 dx$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   76 (   6 equality;  20 variable)
%            Maximal formula depth :   25 (  19 average)
%            Number of connectives :   64 (   0   ~;   0   |;   7   &;  56   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   10 (   0 sgn;   1   !;   4   ?;   5   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_I_set: 'SetOf' @ 'R'] :
        ( V_I_set
        = ( 'set-by-def/1'
          @ ^ [V_I: 'R'] :
            ? [V_a: 'R',V_b: 'R',V_c: 'R',V_f: 'R2R'] :
              ( ( V_f
                = ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) )
              & ( ( 'funapp/2' @ V_f @ -1 )
                = -1 )
              & ( ( 'funapp/2' @ V_f @ 1 )
                = 1 )
              & ( '<=/2' @ ( 'funapp/2' @ ( 'derivative/1' @ V_f ) @ 1 ) @ 6 )
              & ! [V_x_dot_0: 'R'] :
                  ( ( ( '<=/2' @ -1 @ V_x_dot_0 )
                    & ( '<=/2' @ V_x_dot_0 @ 1 ) )
                 => ( '<=/2' @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) @ ( '-/2' @ ( '*/2' @ 3 @ ( '*/2' @ V_x_dot_0 @ V_x_dot_0 ) ) @ 1 ) ) )
              & ( V_I
                = ( 'integral/3'
                  @ ^ [V_x: 'R'] :
                      ( '^/2' @ ( 'funapp/2' @ ( 'derivative/1' @ V_f ) @ V_x ) @ 2 )
                  @ -1
                  @ 1 ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_I_set_dot_0: 'SetOf' @ 'R'] :
      ( V_I_set_dot_0
      = ( 'set-by-def/1'
        @ ^ [V_I_dot_0: 'R'] :
            ( ( '<=/2' @ ( '//2' @ ( '-/2' @ 44 @ ( '*/2' @ 16 @ ( 'sqrt/1' @ 3 ) ) ) @ 3 ) @ V_I_dot_0 )
            & ( '<=/2' @ V_I_dot_0 @ ( '//2' @ 56 @ 3 ) ) ) ) ) ),
    answer_to(p_question,[])).
