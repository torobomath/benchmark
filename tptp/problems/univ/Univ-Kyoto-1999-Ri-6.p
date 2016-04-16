%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 1999, Science Course, Problem 6
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-14
%%
%% <PROBLEM-TEXT>
%% Assume that $x$ and $y$ are given as follows using $t$ as a
%% parameter.
%% $x=\frac{3 t-t^2}{t+1}$ $y=\frac{3 t^2-t^3}{t+1}$ When the parameter
%% $t$ moves in the range $0\le t\le 3$, find the ranges in which $x$
%% and $y$ move, respectively. Find the area of the intersection of the
%% figure formed by $(x, y)$ and the region $y\ge x$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  155 (   8 equality;  38 variable)
%            Maximal formula depth :   24 (  12 average)
%            Number of connectives :  133 (   0   ~;   0   |;  11   &; 122   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :;   0   =)
%            Number of variables   :   15 (   0 sgn;   0   !;   5   ?;  10   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   15 (   2 pred;    5 func;    8 numbers)

include('axioms.ax').

thf(p1_x_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_t: $real,V_y: $real] :
        ( ( V_x
          = ( $quotient @ ( $sum @ ( $product @ 3.0 @ V_t ) @ ( $uminus @ ( '^/2' @ V_t @ 2.0 ) ) ) @ ( $sum @ V_t @ 1.0 ) ) )
        & ( V_y
          = ( $quotient @ ( $sum @ ( $product @ 3.0 @ ( '^/2' @ V_t @ 2.0 ) ) @ ( $uminus @ ( '^/2' @ V_t @ 3.0 ) ) ) @ ( $sum @ V_t @ 1.0 ) ) )
        & ( $lesseq @ 0.0 @ V_t )
        & ( $lesseq @ V_t @ 3.0 ) ) )).

thf(p1_y_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_y: $real] :
      ? [V_t: $real,V_x: $real] :
        ( ( V_x
          = ( $quotient @ ( $sum @ ( $product @ 3.0 @ V_t ) @ ( $uminus @ ( '^/2' @ V_t @ 2.0 ) ) ) @ ( $sum @ V_t @ 1.0 ) ) )
        & ( V_y
          = ( $quotient @ ( $sum @ ( $product @ 3.0 @ ( '^/2' @ V_t @ 2.0 ) ) @ ( $uminus @ ( '^/2' @ V_t @ 3.0 ) ) ) @ ( $sum @ V_t @ 1.0 ) ) )
        & ( $lesseq @ 0.0 @ V_t )
        & ( $lesseq @ V_t @ 3.0 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
        ( V_S
        = ( '2d.area-of/1'
          @ ( '2d.intersection/2'
            @ ( '2d.shape-enclosed-by/1'
              @ ( 'cons/2' @ '2d.Shape'
                @ ( '2d.set-of-cfun/1'
                  @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                    ? [V_t: $real] :
                      ( ( V_x_dot_0
                        = ( $quotient @ ( $sum @ ( $product @ 3.0 @ V_t ) @ ( $uminus @ ( '^/2' @ V_t @ 2.0 ) ) ) @ ( $sum @ V_t @ 1.0 ) ) )
                      & ( V_y_dot_0
                        = ( $quotient @ ( $sum @ ( $product @ 3.0 @ ( '^/2' @ V_t @ 2.0 ) ) @ ( $uminus @ ( '^/2' @ V_t @ 3.0 ) ) ) @ ( $sum @ V_t @ 1.0 ) ) )
                      & ( $lesseq @ 0.0 @ V_t )
                      & ( $lesseq @ V_t @ 3.0 ) ) )
                @ ( 'nil/0' @ '2d.Shape' ) ) )
            @ ( '2d.set-of-cfun/1'
              @ ^ [V_x: $real,V_y: $real] :
                  ( $greatereq @ V_y @ V_x ) ) ) ) ) )).

thf(p1_x_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $lesseq @ 0.0 @ V_x_dot_0 )
      & ( $lesseq @ V_x_dot_0 @ 1.0 ) ) ),
    answer_to(p1_x_question,[])).

thf(p1_y_answer,answer,(
    ^ [V_y_dot_0: $real] :
      ( ( $lesseq @ 0.0 @ V_y_dot_0 )
      & ( $lesseq @ V_y_dot_0 @ ( $difference @ ( $product @ 6.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 9.0 ) ) ) ),
    answer_to(p1_y_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $difference @ ( $quotient @ 43.0 @ 3.0 ) @ ( $product @ 20.0 @ ( 'ln/1' @ 2.0 ) ) ) ) ),
    answer_to(p2_question,[])).

