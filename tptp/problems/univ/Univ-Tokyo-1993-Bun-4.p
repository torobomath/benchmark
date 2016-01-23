%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1993, Humanities Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-14
%%
%% <PROBLEM-TEXT>
%% For $t$ in the range of $0\le t\le 2$, let $g_1(t)$ and $g_2(t)$ be
%% the maximum and minimum real solutions of the equation
%% $x^4-2 x^2-1+t=0$, respectively. Find the value of
%% $\int_0^2(g_1(t)- g_2(t))dt$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   71 (   5 equality;  18 variable)
%            Maximal formula depth :   20 (  15 average)
%            Number of connectives :   59 (   0   ~;   0   |;   4   &;  54   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :    9 (   0 sgn;   1   !;   3   ?;   5   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_I: 'R'] :
      ? [V_g1: 'R2R',V_g2: 'R2R'] :
      ! [V_t: 'R'] :
        ( ( ( '<=/2' @ 0 @ V_t )
          & ( '<=/2' @ V_t @ 2 ) )
       => ? [V_f: 'R2R'] :
            ( ( V_f
              = ( 'poly-fun/1' @ ( 'cons/2' @ ( '-/2' @ V_t @ 1 ) @ ( 'cons/2' @ 0 @ ( 'cons/2' @ -2 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) )
            & ( 'maximum/2'
              @ ( 'set-by-def/1'
                @ ^ [V_t_dot_2: 'R'] :
                    ( ( 'funapp/2' @ V_f @ V_t_dot_2 )
                    = 0 ) )
              @ ( 'funapp/2' @ V_g1 @ V_t ) )
            & ( 'minimum/2'
              @ ( 'set-by-def/1'
                @ ^ [V_t_dot_1: 'R'] :
                    ( ( 'funapp/2' @ V_f @ V_t_dot_1 )
                    = 0 ) )
              @ ( 'funapp/2' @ V_g2 @ V_t ) )
            & ( V_I
              = ( 'integral/3'
                @ ^ [V_t_dot_0: 'R'] :
                    ( '-/2' @ ( 'funapp/2' @ V_g1 @ V_t_dot_0 ) @ ( 'funapp/2' @ V_g2 @ V_t_dot_0 ) )
                @ 0
                @ 2 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_I_dot_0: 'R'] :
      ( V_I_dot_0
      = ( '*/2' @ ( '//2' @ 8 @ 15 ) @ ( '+/2' @ ( '*/2' @ ( '+/2' @ 4 @ ( 'sqrt/1' @ 2 ) ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( 'sqrt/1' @ 2 ) ) ) ) @ 2 ) ) ) ),
    answer_to(p_question,[])).
