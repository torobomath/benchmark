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

% Syntax   : Number of formulae    :    9 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  415 (  12 equality;  52 variable)
%            Maximal formula depth :   30 (  14 average)
%            Number of connectives :  387 (   1   ~;   1   |;  19   &; 365   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   2   :;   0   =)
%            Number of variables   :   28 (   0 sgn;   3   !;  19   ?;   6   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   1 pred;    3 func;    9 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('t/0_type',type,(
    't/0': $real )).

thf(a1_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_l: '2d.Shape'] :
        ( ( '2d.line-type/1' @ V_l )
        & ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_l @ ( '2d.point/2' @ 't/0' @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '^/2' @ 't/0' @ 2.0 ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ls: ( 'ListOf' @ $real )] :
      ? [V_l1: '2d.Shape',V_l1c: $real,V_l1m: $real] :
        ( ( V_ls
          = ( 'cons/2' @ $real @ V_l1c @ ( 'cons/2' @ $real @ V_l1m @ ( 'nil/0' @ $real ) ) ) )
        & ( V_l1
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_l1c @ ( 'cons/2' @ $real @ V_l1m @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( $greater @ 'a/0' @ 0.0 )
        & ? [V_P2_dot_0: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_l1 @ V_P2_dot_0 )
        & ? [V_P2: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $uminus @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( 'cons/2' @ $real @ ( $product @ 2.0 @ 'a/0' ) @ ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_l1 @ V_P2 ) ) )).

thf(p2s,conjecture,(
    ! [V_l1: '2d.Shape',V_l2: '2d.Shape',V_a: $real] :
      ( ( ( V_l1
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'nil/0' @ $real ) ) ) ) )
        & ( V_l2
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ -8.0 @ 9.0 ) @ ( '^/2' @ V_a @ 2.0 ) ) @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 4.0 @ 3.0 ) @ V_a ) @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( $greater @ V_a @ 0.0 ) )
     => ( ? [V_P2_dot_2: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_l1 @ V_P2_dot_2 )
        & ? [V_P2_dot_1: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $uminus @ ( '^/2' @ V_a @ 2.0 ) ) @ ( 'cons/2' @ $real @ ( $product @ 2.0 @ V_a ) @ ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_l1 @ V_P2_dot_1 )
        & ? [V_P2_dot_0: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_l2 @ V_P2_dot_0 )
        & ? [V_P2: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $uminus @ ( '^/2' @ V_a @ 2.0 ) ) @ ( 'cons/2' @ $real @ ( $product @ 2.0 @ V_a ) @ ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_l2 @ V_P2 ) ) ) )).

thf(a3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_ans: $real] :
      ? [V_l1: '2d.Shape',V_l2: '2d.Shape',V_l1m: $real,V_l1c: $real,V_l2m: $real,V_l2c: $real] :
        ( ( $greater @ 'a/0' @ 0.0 )
        & ( V_l1 != V_l2 )
        & ( V_l1
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_l1c @ ( 'cons/2' @ $real @ V_l1m @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( V_l2
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_l2c @ ( 'cons/2' @ $real @ V_l2m @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ? [V_P2_dot_2: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_l1 @ V_P2_dot_2 )
        & ? [V_P2_dot_1: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $uminus @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( 'cons/2' @ $real @ ( $product @ 2.0 @ 'a/0' ) @ ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_l1 @ V_P2_dot_1 )
        & ? [V_P2_dot_0: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_l2 @ V_P2_dot_0 )
        & ? [V_P2: '2d.Point'] :
            ( '2d.tangent/3' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $uminus @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( 'cons/2' @ $real @ ( $product @ 2.0 @ 'a/0' ) @ ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ V_l2 @ V_P2 )
        & ( V_ans
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) ) @ ( 'cons/2' @ '2d.Shape' @ V_l1 @ ( 'cons/2' @ '2d.Shape' @ V_l2 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(a1_answer,answer,(
    ^ [V_l_dot_0: '2d.Shape'] :
      ( V_l_dot_0
      = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $uminus @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '^/2' @ 't/0' @ 2.0 ) ) ) @ ( 'cons/2' @ $real @ 't/0' @ ( 'nil/0' @ $real ) ) ) ) ) ) ),
    answer_to(a1_question,[])).

thf(p2_answer,answer,(
    ^ [V_ls_dot_0: ( 'ListOf' @ $real )] :
      ( ( $greater @ 'a/0' @ 0.0 )
      & ( ( V_ls_dot_0
          = ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'nil/0' @ $real ) ) ) )
        | ( V_ls_dot_0
          = ( 'cons/2' @ $real @ ( $uminus @ ( $product @ ( $quotient @ 8.0 @ 9.0 ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 4.0 @ 3.0 ) @ 'a/0' ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(a3_answer,answer,(
    ^ [V_ans_dot_0: $real] :
      ( V_ans_dot_0
      = ( $product @ ( $quotient @ 8.0 @ 81.0 ) @ ( '^/2' @ 'a/0' @ 3.0 ) ) ) ),
    answer_to(a3_question,[])).

