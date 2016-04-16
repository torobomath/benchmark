%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2011, Science Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a real number. Assume that the circle $C$ has the straight
%% line $y = - x$ as the tangent at the point $(a, -a)$ and passes
%% through the point $(0, 1)$. Let $P(X, Y)$ be the center of $C$, then
%% answer the following questions:
%%
%% (1) Represent $X$ and $Y$ using $a$.
%%
%% (2) Find the area of the region enclosed by the straight line $y = 1$
%% and the locus of the point $P$ when $a$ moves.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    9 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  272 (  22 equality;  54 variable)
%            Maximal formula depth :   20 (  13 average)
%            Number of connectives :  226 (   2   ~;   0   |;  22   &; 202   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   33 (   1   :;   0   =)
%            Number of variables   :   30 (   0 sgn;   0   !;  16   ?;  14   ^)
%                                         (  30   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_P: ( 'ListOf' @ $real )] :
      ? [V_C: '2d.Shape',V_Px: $real,V_Py: $real] :
        ( ( '2d.circle-type/1' @ V_C )
        & ( V_P
          = ( 'cons/2' @ $real @ V_Px @ ( 'cons/2' @ $real @ V_Py @ ( 'nil/0' @ $real ) ) ) )
        & ( ( '2d.point/2' @ V_Px @ V_Py )
          = ( '2d.center-of/1' @ V_C ) )
        & ( '2d.tangent/3'
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $uminus @ V_x ) ) )
          @ V_C
          @ ( '2d.point/2' @ 'a/0' @ ( $uminus @ 'a/0' ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ V_C ) ) )).

thf(p1_1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_P: ( 'ListOf' @ $real )] :
      ? [V_C: '2d.Shape',V_Px: $real,V_Py: $real] :
        ( ( '2d.circle-type/1' @ V_C )
        & ( V_P
          = ( 'cons/2' @ $real @ V_Px @ ( 'cons/2' @ $real @ V_Py @ ( 'nil/0' @ $real ) ) ) )
        & ( ( '2d.point/2' @ V_Px @ V_Py )
          = ( '2d.center-of/1' @ V_C ) )
        & ( '2d.tangent/3' @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1.0 @ -1.0 ) ) @ V_C @ ( '2d.point/2' @ 'a/0' @ ( $uminus @ 'a/0' ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ V_C ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_P_set: '2d.Shape'] :
        ( ( V_P_set
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
              ? [V_a: $real,V_C: '2d.Shape'] :
                ( ( '2d.circle-type/1' @ V_C )
                & ( V_P
                  = ( '2d.center-of/1' @ V_C ) )
                & ( '2d.tangent/3'
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: $real] :
                          ( $uminus @ V_x ) ) )
                  @ V_C
                  @ ( '2d.point/2' @ V_a @ ( $uminus @ V_a ) ) )
                & ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ V_C ) ) ) )
        & ( V_S
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2' @ '2d.Shape' @ V_P_set
                @ ( 'cons/2' @ '2d.Shape'
                  @ ( '2d.shape-of-cpfun/1'
                    @ ^ [V_p: '2d.Point'] :
                        ( ( '2d.y-coord/1' @ V_p )
                        = 1.0 ) )
                  @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p2_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_P_set: '2d.Shape'] :
        ( ( V_P_set
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
              ? [V_a: $real,V_C: '2d.Shape'] :
                ( ( '2d.circle-type/1' @ V_C )
                & ( V_P
                  = ( '2d.center-of/1' @ V_C ) )
                & ( '2d.tangent/3' @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1.0 @ -1.0 ) ) @ V_C @ ( '2d.point/2' @ V_a @ ( $uminus @ V_a ) ) )
                & ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ V_C ) ) ) )
        & ( V_S
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2' @ '2d.Shape' @ V_P_set
                @ ( 'cons/2' @ '2d.Shape'
                  @ ( '2d.shape-of-cpfun/1'
                    @ ^ [V_p: '2d.Point'] :
                        ( ( '2d.y-coord/1' @ V_p )
                        = 1.0 ) )
                  @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: ( 'ListOf' @ $real )] :
    ? [V_Px_dot_0: $real,V_Py_dot_0: $real] :
      ( ( ( $sum @ ( $product @ 2.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 2.0 @ 'a/0' ) @ 1.0 ) )
       != 0.0 )
      & ( V_P_dot_0
        = ( 'cons/2' @ $real @ V_Px_dot_0 @ ( 'cons/2' @ $real @ V_Py_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( V_Px_dot_0
        = ( $quotient @ ( $sum @ ( $product @ 2.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 4.0 @ 'a/0' ) @ 1.0 ) ) @ 2.0 ) )
      & ( V_Py_dot_0
        = ( $quotient @ ( $sum @ ( $product @ 2.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ 1.0 ) @ 2.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p1_1_answer,answer,(
    ^ [V_P_dot_0: ( 'ListOf' @ $real )] :
    ? [V_Px_dot_0: $real,V_Py_dot_0: $real] :
      ( ( ( $sum @ ( $product @ 2.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 2.0 @ 'a/0' ) @ 1.0 ) )
       != 0.0 )
      & ( V_P_dot_0
        = ( 'cons/2' @ $real @ V_Px_dot_0 @ ( 'cons/2' @ $real @ V_Py_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( V_Px_dot_0
        = ( $quotient @ ( $sum @ ( $product @ 2.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 4.0 @ 'a/0' ) @ 1.0 ) ) @ 2.0 ) )
      & ( V_Py_dot_0
        = ( $quotient @ ( $sum @ ( $product @ 2.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ 1.0 ) @ 2.0 ) ) ) ),
    answer_to(p1_1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(p2_question,[])).

thf(p2_1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(p2_1_question,[])).

