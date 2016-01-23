%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1991, Humanities Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-09
%%
%% <PROBLEM-TEXT>
%% Find the maximum and minimum values of the function
%% $f(x)=x^3-2 x^2-3 x+4$ in the interval $-\frac{7}{4}\le x\le 3$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   68 (   5 equality;  17 variable)
%            Maximal formula depth :   19 (  15 average)
%            Number of connectives :   58 (   0   ~;   0   |;   7   &;  51   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   5   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ans: 'ListOf' @ 'R'] :
      ? [V_f: 'R2R',V_min: 'R',V_max: 'R'] :
        ( ( V_ans
          = ( 'cons/2' @ V_min @ ( 'cons/2' @ V_max @ 'nil/0' ) ) )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ 4 @ ( 'cons/2' @ -3 @ ( 'cons/2' @ -2 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_m_dot_0: 'R'] :
              ? [V_x_dot_0: 'R'] :
                ( ( '<=/2' @ ( '//2' @ -7 @ 4 ) @ V_x_dot_0 )
                & ( '<=/2' @ V_x_dot_0 @ 3 )
                & ( V_m_dot_0
                  = ( 'funapp/2' @ V_f @ V_x_dot_0 ) ) ) )
          @ V_min )
        & ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_m: 'R'] :
              ? [V_x: 'R'] :
                ( ( '<=/2' @ ( '//2' @ -7 @ 4 ) @ V_x )
                & ( '<=/2' @ V_x @ 3 )
                & ( V_m
                  = ( 'funapp/2' @ V_f @ V_x ) ) ) )
          @ V_max ) ) )).

thf(p_answer,answer,(
    ^ [V_ans_dot_0: 'ListOf' @ 'R'] :
      ( V_ans_dot_0
      = ( 'cons/2' @ ( '//2' @ -143 @ 64 ) @ ( 'cons/2' @ ( '//2' @ ( '+/2' @ 38 @ ( '*/2' @ 26 @ ( 'sqrt/1' @ 13 ) ) ) @ 27 ) @ 'nil/0' ) ) ) ),
    answer_to(p_question,[])).
