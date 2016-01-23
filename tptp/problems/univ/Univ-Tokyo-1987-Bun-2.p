%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1987, Humanities Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-15
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a positive constant, and $C$ be the graph of the function
%% of $x$: $f(x)= x^3 - a x^2 - a^2 x$. Let $b$ be the value of $b$ that
%% gives the local maximum value of $f(x)$, then represent the area of
%% the region enclosed by $C$ and the tangent to $C$ at the point $C$
%% using $a$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   58 (   4 equality;  21 variable)
%            Maximal formula depth :   19 (  13 average)
%            Number of connectives :   48 (   0   ~;   0   |;   6   &;  42   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :    8 (   1 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
        ( ( '</2' @ 0 @ V_a )
        & ? [V_f: 'R2R',V_C: '2d.Shape',V_b: 'R',V_l: '2d.Shape'] :
            ( ( V_f
              = ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/1' @ ( '^/2' @ V_a @ 2 ) ) @ ( 'cons/2' @ ( '-/1' @ V_a ) @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) )
            & ( V_C
              = ( '2d.graph-of/1' @ V_f ) )
            & ( 'func-maximal/3' @ V_f @ V_b @ ( 'funapp/2' @ V_f @ V_b ) )
            & ( '2d.line-type/1' @ V_l )
            & ( '2d.tangent/3' @ V_l @ V_C @ ( '2d.point/2' @ V_b @ ( 'funapp/2' @ V_f @ V_b ) ) )
            & ( V_S
              = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_l @ ( 'cons/2' @ V_C @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '*/2' @ ( '//2' @ 4 @ 3 ) @ ( '^/2' @ V_a @ 4 ) ) ) ),
    answer_to(p_question,[])).
