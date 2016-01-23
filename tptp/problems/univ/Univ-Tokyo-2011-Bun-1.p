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

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  219 (  23 equality;  57 variable)
%            Maximal formula depth :   30 (  19 average)
%            Number of connectives :  171 (   0   ~;   0   |;  19   &; 152   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   33 (   5 sgn;   0   !;  13   ?;  12   ^)
%                                         (  25   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'R2R'] :
      ? [V_I_set: 'SetOf' @ 'R',V_I_min: 'R'] :
        ( ( 'minimum/2' @ V_I_set @ V_I_min )
        & ( V_I_set
          = ( 'set-by-def/1'
            @ ^ [V_I: 'R'] :
              ? [V_a_dot_0: 'R',V_b_dot_0: 'R',V_c_dot_0: 'R',V_d_dot_0: 'R',V_f_dot_0: 'R2R'] :
                ( ( V_f_dot_0
                  = ( 'poly-fun/1' @ ( 'cons/2' @ V_d_dot_0 @ ( 'cons/2' @ V_c_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ ( 'cons/2' @ V_a_dot_0 @ 'nil/0' ) ) ) ) ) )
                & ( ( 'funapp/2' @ V_f_dot_0 @ 1 )
                  = 1 )
                & ( ( 'funapp/2' @ V_f_dot_0 @ -1 )
                  = -1 )
                & ( ( 'integral/3'
                    @ ^ [V_x_dot_2: 'R'] :
                        ( '+/2' @ ( '*/2' @ V_b_dot_0 @ ( '^/2' @ V_x_dot_2 @ 2 ) ) @ ( '+/2' @ ( '*/2' @ V_c_dot_0 @ V_x_dot_2 ) @ V_d_dot_0 ) )
                    @ -1
                    @ 1 )
                  = 1 )
                & ( V_I
                  = ( 'integral/3'
                    @ ^ [V_x_dot_1: 'R'] :
                        ( '^/2' @ ( 'funapp/2' @ ( 'derivative/1' @ ( 'derivative/1' @ V_f_dot_0 ) ) @ V_x_dot_1 ) @ 2 )
                    @ -1
                    @ ( '//2' @ 1 @ 2 ) ) ) ) ) )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ V_d @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) )
        & ( ( 'funapp/2' @ V_f @ 1 )
          = 1 )
        & ( ( 'funapp/2' @ V_f @ -1 )
          = -1 )
        & ( ( 'integral/3'
            @ ^ [V_x_dot_0: 'R'] :
                ( '+/2' @ ( '*/2' @ V_b @ ( '^/2' @ V_x_dot_0 @ 2 ) ) @ ( '+/2' @ ( '*/2' @ V_c @ V_x_dot_0 ) @ V_d ) )
            @ -1
            @ 1 )
          = 1 )
        & ( V_I_min
          = ( 'integral/3'
            @ ^ [V_x: 'R'] :
                ( '^/2' @ ( 'funapp/2' @ ( 'derivative/1' @ ( 'derivative/1' @ V_f ) ) @ V_x ) @ 2 )
            @ -1
            @ ( '//2' @ 1 @ 2 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_I_min: 'R'] :
      ? [V_I_set: 'SetOf' @ 'R'] :
        ( ( 'minimum/2' @ V_I_set @ V_I_min )
        & ( V_I_set
          = ( 'set-by-def/1'
            @ ^ [V_I: 'R'] :
              ? [V_a: 'R',V_b: 'R',V_c: 'R',V_d: 'R',V_f: 'R2R'] :
                ( ( V_f
                  = ( 'poly-fun/1' @ ( 'cons/2' @ V_d @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) ) )
                & ( ( 'funapp/2' @ V_f @ 1 )
                  = 1 )
                & ( ( 'funapp/2' @ V_f @ -1 )
                  = -1 )
                & ( ( 'integral/3'
                    @ ^ [V_x_dot_0: 'R'] :
                        ( '+/2' @ ( '*/2' @ V_b @ ( '^/2' @ V_x_dot_0 @ 2 ) ) @ ( '+/2' @ ( '*/2' @ V_c @ V_x_dot_0 ) @ V_d ) )
                    @ -1
                    @ 1 )
                  = 1 )
                & ( V_I
                  = ( 'integral/3'
                    @ ^ [V_x: 'R'] :
                        ( '^/2' @ ( 'funapp/2' @ ( 'derivative/1' @ ( 'derivative/1' @ V_f ) ) @ V_x ) @ 2 )
                    @ -1
                    @ ( '//2' @ 1 @ 2 ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_f_dot_1: 'R2R'] :
      ( ( V_f_dot_1
        = ( 'poly-fun/1' @ ( 'cons/2' @ ( '//2' @ 3 @ 4 ) @ ( 'cons/2' @ ( '//2' @ 5 @ 4 ) @ ( 'cons/2' @ ( '-/1' @ ( '//2' @ 3 @ 4 ) ) @ ( 'cons/2' @ ( '-/1' @ ( '//2' @ 1 @ 4 ) ) @ 'nil/0' ) ) ) ) ) )
      & ( V_a
        = ( '-/1' @ ( '//2' @ 1 @ 4 ) ) )
      & ( V_b
        = ( '-/1' @ ( '//2' @ 3 @ 4 ) ) )
      & ( V_c
        = ( '//2' @ 5 @ 4 ) )
      & ( V_d
        = ( '//2' @ 3 @ 4 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_I_min_dot_0: 'R'] :
      ( V_I_min_dot_0
      = ( '//2' @ 81 @ 32 ) ) ),
    answer_to(p2_question,[])).
