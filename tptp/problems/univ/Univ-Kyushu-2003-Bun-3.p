%% DOMAIN:    Quadratic Functions
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2003, Humanities Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-05-23
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, and $c$ be real numbers, and assume that $a > 0$.
%% Define $f(x)= a x^2 + b x + c$. For the real number $p$, let $g(p)$
%% be the maximum value of the function $p x - f(x)$.
%%
%% (1) When the functions $y = f(x)$ and $y = g(x)$ match each other,
%% find the value of $f(x)$.
%%
%% (2) For the real number $x$, let $h(x)$ be the maximum value of the
%% function of $p$: $x p - g(p)$. Find the value of $h(x)$.
%%
%% (3) Prove that the necessary and sufficient condition for the
%% straight line $y = p x + q$ to be in contact with the graph of
%% $y = f(x)$ at the point $(t, f(t))$ is $g(p)= p t - f(t)$ and
%% $q = - g(p)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  182 (  15 equality;  79 variable)
%            Maximal formula depth :   23 (  17 average)
%            Number of connectives :  149 (   0   ~;   0   |;  12   &; 133   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   36 (   5 sgn;  10   !;  10   ?;   8   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_m_qustion,question,
    ( 'Find/1'
    @ ^ [V_abc: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R',V_c: 'R',V_f: 'R2R'] :
        ( ( '</2' @ 0 @ V_a )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) )
        & ! [V_p: 'R',V_gp: 'R'] :
            ( ( 'maximum/2'
              @ ( 'set-by-def/1'
                @ ^ [V_v: 'R'] :
                  ? [V_x: 'R'] :
                    ( V_v
                    = ( '-/2' @ ( '*/2' @ V_p @ V_x ) @ ( 'funapp/2' @ V_f @ V_x ) ) ) )
              @ V_gp )
           => ( ( 'funapp/2' @ V_f @ V_p )
              = V_gp ) )
        & ( V_abc
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ 'nil/0' ) ) ) ) ) )).

thf(p2_m_qustion,question,
    ( 'Find/1'
    @ ^ [V_h: 'R'] :
      ? [V_f: 'R2R'] :
        ( ( '</2' @ 0 @ V_a )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_p: 'R',V_gp: 'R'] :
                ( ( 'maximum/2'
                  @ ( 'set-by-def/1'
                    @ ^ [V_v_dot_0: 'R'] :
                      ? [V_x_dot_0: 'R'] :
                        ( V_v_dot_0
                        = ( '-/2' @ ( '*/2' @ V_p @ V_x_dot_0 ) @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) ) ) )
                  @ V_gp )
                & ( V_v
                  = ( '-/2' @ ( '*/2' @ V_p @ V_x ) @ V_gp ) ) ) )
          @ V_h ) ) )).

thf(p3_m,conjecture,(
    ! [V_a: 'R',V_b: 'R',V_c: 'R',V_f: 'R2R',V_p: 'R',V_gp: 'R',V_q: 'R',V_t: 'R'] :
      ( ( ( '</2' @ 0 @ V_a )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ 'nil/0' ) ) ) ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_x: 'R'] :
                ( V_v
                = ( '-/2' @ ( '*/2' @ V_p @ V_x ) @ ( 'funapp/2' @ V_f @ V_x ) ) ) )
          @ V_gp ) )
     => ( ( ( '2d.tangent/3' @ ( '2d.line2d/3' @ ( '-/1' @ V_p ) @ 1 @ V_q ) @ ( '2d.graph-of/1' @ V_f ) @ ( '2d.point/2' @ V_t @ ( 'funapp/2' @ V_f @ V_t ) ) )
         => ( ( V_gp
              = ( '+/2' @ ( '*/2' @ V_p @ V_t ) @ ( '-/1' @ ( 'funapp/2' @ V_f @ V_t ) ) ) )
            & ( V_q
              = ( '-/1' @ V_gp ) ) ) )
        & ( ( ( V_gp
              = ( '+/2' @ ( '*/2' @ V_p @ V_t ) @ ( '-/1' @ ( 'funapp/2' @ V_f @ V_t ) ) ) )
            & ( V_q
              = ( '-/1' @ V_gp ) ) )
         => ( '2d.tangent/3' @ ( '2d.line2d/3' @ ( '-/1' @ V_p ) @ 1 @ V_q ) @ ( '2d.graph-of/1' @ V_f ) @ ( '2d.point/2' @ V_t @ ( 'funapp/2' @ V_f @ V_t ) ) ) ) ) ) )).

thf(p1_m_answer,answer,(
    ^ [V_abc_dot_0: 'ListOf' @ 'R'] :
      ( V_abc_dot_0
      = ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ 'nil/0' ) ) ) ) ),
    answer_to(p1_m_question,[])).

thf(p2_m_answer,answer,(
    ^ [V_h_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_a )
      & ( V_h_dot_0
        = ( '+/2' @ ( '+/2' @ ( '*/2' @ V_a @ ( '^/2' @ V_x @ 2 ) ) @ ( '*/2' @ V_b @ V_x ) ) @ V_c ) ) ) ),
    answer_to(p2_m_question,[])).
