%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2007, Humanities Course, Problem 2
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-12
%%
%% <PROBLEM-TEXT>
%% Consider the $2$ parabolas $C$: $y =\frac{1}{2} x^2$ and $D$:
%% $y = -(x - a)^2$, where $a$ is a positive real number.
%%
%% (1) Find the tangent $l$ to $C$ at the point $P(t, \frac{1}{2} t^2)$.
%%
%% (2) When $l$ is also in contact with $D$, $l$ is called the common
%% tangent of $C$ and $D$. Find the $2$ common tangents $l_1$ and
%% $l_2$(to $C$ and $D$).
%%
%% (3) Find the area of the region enclosed by the common tangents
%% $l_1$, $l_2$, and $C$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  333 (  12 equality;  68 variable)
%            Maximal formula depth :   30 (  17 average)
%            Number of connectives :  305 (   1   ~;   1   |;  19   &; 283   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :   34 (   1 sgn;   3   !;  19   ?;   6   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: '2d.Shape'] :
        ( ( '2d.line-type/1' @ V_l )
        & ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ 'nil/0' ) ) ) ) ) @ V_l @ ( '2d.point/2' @ V_t @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '^/2' @ V_t @ 2 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_ls: 'ListOf' @ 'R'] :
      ? [V_l1: '2d.Shape',V_l1c: 'R',V_l1m: 'R'] :
        ( ( V_ls
          = ( 'cons/2' @ V_l1c @ ( 'cons/2' @ V_l1m @ 'nil/0' ) ) )
        & ( V_l1
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_l1c @ ( 'cons/2' @ V_l1m @ 'nil/0' ) ) ) ) )
        & ( '>/2' @ V_a @ 0 )
        & ? [V_P2_dot_0: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ 'nil/0' ) ) ) ) ) @ V_l1 @ V_P2_dot_0 )
        & ? [V_P2: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '-/1' @ ( '^/2' @ V_a @ 2 ) ) @ ( 'cons/2' @ ( '*/2' @ 2 @ V_a ) @ ( 'cons/2' @ ( '-/1' @ 1 ) @ 'nil/0' ) ) ) ) ) @ V_l1 @ V_P2 ) ) )).

thf(p2s,conjecture,(
    ! [V_l1: '2d.Shape',V_l2: '2d.Shape',V_a: 'R'] :
      ( ( ( V_l1
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ 'nil/0' ) ) ) )
        & ( V_l2
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ -8 @ 9 ) @ ( '^/2' @ V_a @ 2 ) ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ 4 @ 3 ) @ V_a ) @ 'nil/0' ) ) ) ) )
        & ( '>/2' @ V_a @ 0 ) )
     => ( ? [V_P2_dot_2: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ 'nil/0' ) ) ) ) ) @ V_l1 @ V_P2_dot_2 )
        & ? [V_P2_dot_1: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '-/1' @ ( '^/2' @ V_a @ 2 ) ) @ ( 'cons/2' @ ( '*/2' @ 2 @ V_a ) @ ( 'cons/2' @ ( '-/1' @ 1 ) @ 'nil/0' ) ) ) ) ) @ V_l1 @ V_P2_dot_1 )
        & ? [V_P2_dot_0: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ 'nil/0' ) ) ) ) ) @ V_l2 @ V_P2_dot_0 )
        & ? [V_P2: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '-/1' @ ( '^/2' @ V_a @ 2 ) ) @ ( 'cons/2' @ ( '*/2' @ 2 @ V_a ) @ ( 'cons/2' @ ( '-/1' @ 1 ) @ 'nil/0' ) ) ) ) ) @ V_l2 @ V_P2 ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_ans: 'R'] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_l1m: 'R',V_l1c: 'R',V_l2m: 'R',V_l2c: 'R'] :
        ( ( '>/2' @ V_a @ 0 )
        & ( V_l1 != V_l2 )
        & ( V_l1
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_l1c @ ( 'cons/2' @ V_l1m @ 'nil/0' ) ) ) ) )
        & ( V_l2
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ V_l2c @ ( 'cons/2' @ V_l2m @ 'nil/0' ) ) ) ) )
        & ? [V_P2_dot_2: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ 'nil/0' ) ) ) ) ) @ V_l1 @ V_P2_dot_2 )
        & ? [V_P2_dot_1: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '-/1' @ ( '^/2' @ V_a @ 2 ) ) @ ( 'cons/2' @ ( '*/2' @ 2 @ V_a ) @ ( 'cons/2' @ ( '-/1' @ 1 ) @ 'nil/0' ) ) ) ) ) @ V_l1 @ V_P2_dot_1 )
        & ? [V_P2_dot_0: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ 'nil/0' ) ) ) ) ) @ V_l2 @ V_P2_dot_0 )
        & ? [V_P2: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '-/1' @ ( '^/2' @ V_a @ 2 ) ) @ ( 'cons/2' @ ( '*/2' @ 2 @ V_a ) @ ( 'cons/2' @ ( '-/1' @ 1 ) @ 'nil/0' ) ) ) ) ) @ V_l2 @ V_P2 )
        & ( V_ans
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '//2' @ 1 @ 2 ) @ 'nil/0' ) ) ) ) ) @ ( 'cons/2' @ V_l1 @ ( 'cons/2' @ V_l2 @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_l_dot_0: '2d.Shape'] :
      ( V_l_dot_0
      = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ ( '-/1' @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '^/2' @ V_t @ 2 ) ) ) @ ( 'cons/2' @ V_t @ 'nil/0' ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ls_dot_0: 'ListOf' @ 'R'] :
      ( ( '>/2' @ V_a @ 0 )
      & ( ( V_ls_dot_0
          = ( 'cons/2' @ 0 @ ( 'cons/2' @ 0 @ 'nil/0' ) ) )
        | ( V_ls_dot_0
          = ( 'cons/2' @ ( '*/2' @ ( '//2' @ 4 @ 3 ) @ V_a ) @ ( 'cons/2' @ ( '-/1' @ ( '*/2' @ ( '//2' @ 8 @ 9 ) @ ( '^/2' @ V_a @ 2 ) ) ) @ 'nil/0' ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_ans_dot_0: 'R'] :
      ( V_ans_dot_0
      = ( '*/2' @ ( '//2' @ 8 @ 81 ) @ ( '^/2' @ V_a @ 3 ) ) ) ),
    answer_to(p3_question,[])).
