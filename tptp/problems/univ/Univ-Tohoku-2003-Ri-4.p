%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2003, Science Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-18
%%
%% <PROBLEM-TEXT>
%% Consider the two points $P(u, u, 0)$ and $Q(u, 0, \sqrt{1-u^2})$ in
%% the $x y z$ space. When $u$ moves from $0$ to $1$, let $S$ be the
%% curved surface formed by the line segment $PQ$.
%%
%% (1) Find the distance between the point $(u, 0, 0)$ $(0\le u\le 1)$
%% and the line segment $PQ$.
%%
%% (2) Find the volume of the solid obtained by rotating the curved
%% surface $S$ around the $x$ axis.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  102 (   9 equality;  21 variable)
%            Maximal formula depth :   21 (  12 average)
%            Number of connectives :   80 (   0   ~;   0   |;  11   &;  69   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   1   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   0   !;   6   ?;   5   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    4 func;    5 numbers)

include('axioms.ax').

thf('u/0_type',type,(
    'u/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_P: '3d.Point',V_Q: '3d.Point'] :
        ( ( V_P
          = ( '3d.point/3' @ 'u/0' @ 'u/0' @ 0.0 ) )
        & ( V_Q
          = ( '3d.point/3' @ 'u/0' @ 0.0 @ ( 'sqrt/1' @ ( $difference @ 1.0 @ ( '^/2' @ 'u/0' @ 2.0 ) ) ) ) )
        & ( $lesseq @ 0.0 @ 'u/0' )
        & ( $lesseq @ 'u/0' @ 1.0 )
        & ( V_x
          = ( '3d.point-shape-distance/2' @ ( '3d.point/3' @ 'u/0' @ 0.0 @ 0.0 ) @ ( '3d.seg/2' @ V_P @ V_Q ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
      ? [V_S: '3d.Shape'] :
        ( ( V_S
          = ( '3d.shape-of-cpfun/1'
            @ ^ [V_p: '3d.Point'] :
              ? [V_u: $real,V_P: '3d.Point',V_Q: '3d.Point'] :
                ( ( $lesseq @ 0.0 @ V_u )
                & ( $lesseq @ V_u @ 1.0 )
                & ( V_P
                  = ( '3d.point/3' @ V_u @ V_u @ 0.0 ) )
                & ( V_Q
                  = ( '3d.point/3' @ V_u @ 0.0 @ ( 'sqrt/1' @ ( $difference @ 1.0 @ ( '^/2' @ V_u @ 2.0 ) ) ) ) )
                & ( '3d.on/2' @ V_p @ ( '3d.seg/2' @ V_P @ V_Q ) ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_S @ '3d.x-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $lesseq @ 0.0 @ 'u/0' )
      & ( $lesseq @ 'u/0' @ 1.0 )
      & ( V_x_dot_0
        = ( $product @ 'u/0' @ ( 'sqrt/1' @ ( $difference @ 1.0 @ ( '^/2' @ 'u/0' @ 2.0 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( V_V_dot_0
      = ( $product @ ( $sum @ ( $quotient @ ( 'sqrt/1' @ 2.0 ) @ 3.0 ) @ ( $quotient @ 1.0 @ 5.0 ) ) @ 'Pi/0' ) ) ),
    answer_to(p2_question,[])).

