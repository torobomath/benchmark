%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2011, Humanities Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% Assume that the two tangents of the parabola $y = x^2$ are
%% perpendicular to each other.
%%
%% (1) When the coordinates of the point of contact on $l$ is given as
%% $(a, a^2)$, represent the coordinates of the intersection of $l$ and
%% $m$ using $a$.
%%
%% (2) When $l$ and $m$ are symmetric to each other with respect to the
%% $y$ axis, find the area of the region enclosed by $l$, $m$, and the
%% parabola $y = x^2$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   99 (   6 equality;  31 variable)
%            Maximal formula depth :   21 (  11 average)
%            Number of connectives :   84 (   1   ~;   0   |;  14   &;  69   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   1   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   6   ?;   6   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
      ? [V_C: '2d.Shape',V_l: '2d.Shape',V_m: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( '^/2' @ V_x @ 2.0 ) ) ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.perpendicular/2' @ V_l @ V_m )
        & ( '2d.tangent/3' @ V_l @ V_C @ ( '2d.point/2' @ 'a/0' @ ( '^/2' @ 'a/0' @ 2.0 ) ) )
        & ( '2d.tangent/2' @ V_m @ V_C )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_l @ V_m ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C: '2d.Shape',V_l: '2d.Shape',V_m: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( '^/2' @ V_x @ 2.0 ) ) ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.perpendicular/2' @ V_l @ V_m )
        & ( '2d.tangent/2' @ V_l @ V_C )
        & ( '2d.tangent/2' @ V_m @ V_C )
        & ( '2d.line-symmetry-shapes/3' @ V_l @ V_m @ '2d.y-axis/0' )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_l @ ( 'cons/2' @ '2d.Shape' @ V_m @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( ( 'a/0' != 0.0 )
      & ( V_P_dot_0
        = ( '2d.point/2' @ ( $quotient @ ( $difference @ ( $product @ 4.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ 1.0 ) @ ( $product @ 8.0 @ 'a/0' ) ) @ ( $uminus @ ( $quotient @ 1.0 @ 4.0 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ 1.0 @ 12.0 ) ) ),
    answer_to(p2_question,[])).

