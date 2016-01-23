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

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  248 (  22 equality;  68 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :  202 (   2   ~;   0   |;  22   &; 178   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   0   :)
%            Number of variables   :   34 (   0 sgn;   0   !;  14   ?;  14   ^)
%                                         (  28   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: 'ListOf' @ 'R'] :
      ? [V_C: '2d.Shape',V_Px: 'R',V_Py: 'R'] :
        ( ( '2d.circle-type/1' @ V_C )
        & ( V_P
          = ( 'cons/2' @ V_Px @ ( 'cons/2' @ V_Py @ 'nil/0' ) ) )
        & ( ( '2d.point/2' @ V_Px @ V_Py )
          = ( '2d.center-of/1' @ V_C ) )
        & ( '2d.tangent/3'
          @ ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '-/1' @ V_x ) ) )
          @ V_C
          @ ( '2d.point/2' @ V_a @ ( '-/1' @ V_a ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 0 @ 1 ) @ V_C ) ) )).

thf(p1_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: 'ListOf' @ 'R'] :
      ? [V_C: '2d.Shape',V_Px: 'R',V_Py: 'R'] :
        ( ( '2d.circle-type/1' @ V_C )
        & ( V_P
          = ( 'cons/2' @ V_Px @ ( 'cons/2' @ V_Py @ 'nil/0' ) ) )
        & ( ( '2d.point/2' @ V_Px @ V_Py )
          = ( '2d.center-of/1' @ V_C ) )
        & ( '2d.tangent/3' @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ -1 ) ) @ V_C @ ( '2d.point/2' @ V_a @ ( '-/1' @ V_a ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 0 @ 1 ) @ V_C ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_P_set: '2d.Shape'] :
        ( ( V_P_set
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
              ? [V_C: '2d.Shape'] :
                ( ( '2d.circle-type/1' @ V_C )
                & ( V_P
                  = ( '2d.center-of/1' @ V_C ) )
                & ( '2d.tangent/3'
                  @ ( '2d.graph-of/1'
                    @ ( 'fun/1'
                      @ ^ [V_x: 'R'] :
                          ( '-/1' @ V_x ) ) )
                  @ V_C
                  @ ( '2d.point/2' @ V_a @ ( '-/1' @ V_a ) ) )
                & ( '2d.on/2' @ ( '2d.point/2' @ 0 @ 1 ) @ V_C ) ) ) )
        & ( V_S
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2' @ V_P_set
                @ ( 'cons/2'
                  @ ( '2d.shape-of-cpfun/1'
                    @ ^ [V_p: '2d.Point'] :
                        ( ( '2d.y-coord/1' @ V_p )
                        = 1 ) )
                  @ 'nil/0' ) ) ) ) ) ) )).

thf(p2_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_P_set: '2d.Shape'] :
        ( ( V_P_set
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
              ? [V_C: '2d.Shape'] :
                ( ( '2d.circle-type/1' @ V_C )
                & ( V_P
                  = ( '2d.center-of/1' @ V_C ) )
                & ( '2d.tangent/3' @ ( '2d.line/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1 @ -1 ) ) @ V_C @ ( '2d.point/2' @ V_a @ ( '-/1' @ V_a ) ) )
                & ( '2d.on/2' @ ( '2d.point/2' @ 0 @ 1 ) @ V_C ) ) ) )
        & ( V_S
          = ( '2d.area-of/1'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2' @ V_P_set
                @ ( 'cons/2'
                  @ ( '2d.shape-of-cpfun/1'
                    @ ^ [V_p: '2d.Point'] :
                        ( ( '2d.y-coord/1' @ V_p )
                        = 1 ) )
                  @ 'nil/0' ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: 'ListOf' @ 'R'] :
    ? [V_Px_dot_0: 'R',V_Py_dot_0: 'R'] :
      ( ( ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 2 @ V_a ) @ 1 ) )
       != 0 )
      & ( V_P_dot_0
        = ( 'cons/2' @ V_Px_dot_0 @ ( 'cons/2' @ V_Py_dot_0 @ 'nil/0' ) ) )
      & ( V_Px_dot_0
        = ( '//2' @ ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 4 @ V_a ) @ 1 ) ) @ 2 ) )
      & ( V_Py_dot_0
        = ( '//2' @ ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_a @ 2 ) ) @ 1 ) @ 2 ) ) ) ),
    answer_to(p1_question,[])).

thf(p1_1_answer,answer,(
    ^ [V_P_dot_0: 'ListOf' @ 'R'] :
    ? [V_Px_dot_0: 'R',V_Py_dot_0: 'R'] :
      ( ( ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 2 @ V_a ) @ 1 ) )
       != 0 )
      & ( V_P_dot_0
        = ( 'cons/2' @ V_Px_dot_0 @ ( 'cons/2' @ V_Py_dot_0 @ 'nil/0' ) ) )
      & ( V_Px_dot_0
        = ( '//2' @ ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_a @ 2 ) ) @ ( '+/2' @ ( '*/2' @ 4 @ V_a ) @ 1 ) ) @ 2 ) )
      & ( V_Py_dot_0
        = ( '//2' @ ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_a @ 2 ) ) @ 1 ) @ 2 ) ) ) ),
    answer_to(p1_1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '*/2' @ ( '//2' @ 2 @ 3 ) @ ( 'sqrt/1' @ 2 ) ) ) ),
    answer_to(p2_question,[])).

thf(p2_1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '*/2' @ ( '//2' @ 2 @ 3 ) @ ( 'sqrt/1' @ 2 ) ) ) ),
    answer_to(p2_1_question,[])).
