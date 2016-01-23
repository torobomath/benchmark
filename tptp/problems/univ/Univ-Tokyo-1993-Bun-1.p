%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1993, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Assume that the cubic function $f(x)=x^3+a x^2+b x$ has a local
%% maximum value and a local minimum value in the interval
%% $-1\le x\le 1$. Draw the range of the pairs of real numbers $(a, b)$
%% that satisfy this condition on the $ab$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   79 (   3 equality;  29 variable)
%            Maximal formula depth :   18 (  16 average)
%            Number of connectives :   73 (   0   ~;   0   |;  12   &;  61   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   7   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_ab: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R',V_f: 'R2R'] :
        ( ( V_ab
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ 'nil/0' ) ) )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_a @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) )
        & ? [V_x0: 'R',V_x1: 'R'] :
            ( ( '<=/2' @ -1 @ V_x0 )
            & ( '<=/2' @ V_x0 @ 1 )
            & ( '<=/2' @ -1 @ V_x1 )
            & ( '<=/2' @ V_x1 @ 1 )
            & ( 'func-maximal/3' @ V_f @ V_x0 @ ( 'funapp/2' @ V_f @ V_x0 ) )
            & ( 'func-minimal/3' @ V_f @ V_x1 @ ( 'funapp/2' @ V_f @ V_x1 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R'] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ 'nil/0' ) ) )
      & ( '</2' @ V_b_dot_0 @ ( '//2' @ ( '^/2' @ V_a_dot_0 @ 2 ) @ 3 ) )
      & ( '</2' @ -3 @ V_a_dot_0 )
      & ( '</2' @ V_a_dot_0 @ 3 )
      & ( '>=/2' @ V_b_dot_0 @ ( '-/2' @ ( '*/2' @ 2 @ V_a_dot_0 ) @ 3 ) )
      & ( '>=/2' @ V_b_dot_0 @ ( '-/1' @ ( '+/2' @ ( '*/2' @ 2 @ V_a_dot_0 ) @ 3 ) ) ) ) ),
    answer_to(p_question,[])).
