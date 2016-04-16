%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2001, Humanities Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% Find the two common tangents of the two parabolas $C$:
%% $y = -(x + 1)^2$ and $D$: $y =(x - 1)^2 + 1$. Find the area of the
%% region enclosed by the two common tangents of $C$ and $D$ and $C$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  190 (  14 equality;  47 variable)
%            Maximal formula depth :   24 (  16 average)
%            Number of connectives :  162 (   2   ~;   1   |;  21   &; 138   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :   18 (   0 sgn;   0   !;  10   ?;   8   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    4 func;    6 numbers)

include('axioms.ax').

thf(a_1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ '2d.Shape' )
    @ ^ [V_s_t: ( 'ListOf' @ '2d.Shape' )] :
      ? [V_C: '2d.Shape',V_D: '2d.Shape',V_s: '2d.Shape',V_t: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: $real] :
                  ( $uminus @ ( '^/2' @ ( $sum @ V_x_dot_0 @ 1.0 ) @ 2.0 ) ) ) ) )
        & ( V_D
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $sum @ ( '^/2' @ ( $difference @ V_x @ 1.0 ) @ 2.0 ) @ 1.0 ) ) ) )
        & ( '2d.line-type/1' @ V_s )
        & ( '2d.line-type/1' @ V_t )
        & ( '2d.tangent/2' @ V_C @ V_s )
        & ( '2d.tangent/2' @ V_C @ V_t )
        & ( '2d.tangent/2' @ V_D @ V_s )
        & ( '2d.tangent/2' @ V_D @ V_t )
        & ( V_s != V_t )
        & ( V_s_t
          = ( 'cons/2' @ '2d.Shape' @ V_s @ ( 'cons/2' @ '2d.Shape' @ V_t @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )).

thf(a_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C: '2d.Shape',V_D: '2d.Shape',V_s: '2d.Shape',V_t: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x_dot_0: $real] :
                  ( $uminus @ ( '^/2' @ ( $sum @ V_x_dot_0 @ 1.0 ) @ 2.0 ) ) ) ) )
        & ( V_D
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $sum @ ( '^/2' @ ( $difference @ V_x @ 1.0 ) @ 2.0 ) @ 1.0 ) ) ) )
        & ( '2d.line-type/1' @ V_s )
        & ( '2d.line-type/1' @ V_t )
        & ( '2d.tangent/2' @ V_C @ V_s )
        & ( '2d.tangent/2' @ V_C @ V_t )
        & ( '2d.tangent/2' @ V_D @ V_s )
        & ( '2d.tangent/2' @ V_D @ V_t )
        & ( V_s != V_t )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ V_s @ ( 'cons/2' @ '2d.Shape' @ V_t @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(a_1_answer,answer,(
    ^ [V_s_t_dot_0: ( 'ListOf' @ '2d.Shape' )] :
    ? [V_s_dot_0: '2d.Shape',V_t_dot_0: '2d.Shape'] :
      ( ( V_s_t_dot_0
        = ( 'cons/2' @ '2d.Shape' @ V_s_dot_0 @ ( 'cons/2' @ '2d.Shape' @ V_t_dot_0 @ ( 'nil/0' @ '2d.Shape' ) ) ) )
      & ( ( ( V_s_dot_0
            = ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ ( '2d.point/2' @ ( $quotient @ 1.0 @ 4.0 ) @ ( $quotient @ ( 'sqrt/1' @ 6.0 ) @ -4.0 ) ) ) )
          & ( V_t_dot_0
            = ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ ( '2d.point/2' @ ( $quotient @ 1.0 @ 4.0 ) @ ( $quotient @ ( 'sqrt/1' @ 6.0 ) @ 4.0 ) ) ) ) )
        | ( ( V_t_dot_0
            = ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ ( '2d.point/2' @ ( $quotient @ 1.0 @ 4.0 ) @ ( $quotient @ ( 'sqrt/1' @ 6.0 ) @ -4.0 ) ) ) )
          & ( V_s_dot_0
            = ( '2d.line/2' @ ( '2d.point/2' @ 0.0 @ ( $quotient @ 1.0 @ 2.0 ) ) @ ( '2d.point/2' @ ( $quotient @ 1.0 @ 4.0 ) @ ( $quotient @ ( 'sqrt/1' @ 6.0 ) @ 4.0 ) ) ) ) ) ) ) ),
    answer_to(a_1_question,[])).

thf(a_2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ ( 'sqrt/1' @ 6.0 ) @ 2.0 ) ) ),
    answer_to(a_2_question,[])).

