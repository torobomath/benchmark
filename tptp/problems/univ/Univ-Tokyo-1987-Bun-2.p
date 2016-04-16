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

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   67 (   4 equality;  17 variable)
%            Maximal formula depth :   20 (  10 average)
%            Number of connectives :   57 (   0   ~;   0   |;   6   &;  51   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   1   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   4   ?;   2   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    3 func;    5 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
        ( ( $less @ 0.0 @ 'a/0' )
        & ? [V_f: 'R2R',V_C: '2d.Shape',V_b: $real,V_l: '2d.Shape'] :
            ( ( V_f
              = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $uminus @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( 'cons/2' @ $real @ ( $uminus @ 'a/0' ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
            & ( V_C
              = ( '2d.graph-of/1' @ V_f ) )
            & ( 'func-maximal/3' @ V_f @ V_b @ ( 'funapp/2' @ V_f @ V_b ) )
            & ( '2d.line-type/1' @ V_l )
            & ( '2d.tangent/3' @ V_l @ V_C @ ( '2d.point/2' @ V_b @ ( 'funapp/2' @ V_f @ V_b ) ) )
            & ( V_S
              = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_l @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $product @ ( $quotient @ 4.0 @ 3.0 ) @ ( '^/2' @ 'a/0' @ 4.0 ) ) ) ),
    answer_to(p_question,[])).

