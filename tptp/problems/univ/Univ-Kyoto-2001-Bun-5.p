%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2001, Humanities Course, Problem 5
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-08
%%
%% <PROBLEM-TEXT>
%% Consider the region $D$ defined by $-1\le y\le 1$ and the circle $C$
%% centered at $P$ and passing through the origin $O$ on the $xy$ plane.
%% Assuming that $C$ is included in $D$, draw the movable region of $P$
%% and find the area of the region.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  100 (   9 equality;  28 variable)
%            Maximal formula depth :   16 (  12 average)
%            Number of connectives :   79 (   1   ~;   0   |;  13   &;  65   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :   13 (   0 sgn;   0   !;   5   ?;   8   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    5 func;    5 numbers)

include('axioms.ax').

thf(a_1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_E: '2d.Shape'] :
      ? [V_D: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( $lesseq @ -1.0 @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
                & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 1.0 ) ) ) )
        & ( V_E
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
              ? [V_C: '2d.Shape'] :
                ( ( '2d.circle-type/1' @ V_C )
                & ( V_p
                  = ( '2d.center-of/1' @ V_C ) )
                & ( '2d.on/2' @ '2d.origin/0' @ V_C )
                & ( '2d.inside-of/2' @ V_C @ V_D ) ) ) ) ) )).

thf(a_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_D: '2d.Shape',V_E: '2d.Shape'] :
        ( ( V_D
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( $lesseq @ -1.0 @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
                & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 1.0 ) ) ) )
        & ( V_E
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
              ? [V_C: '2d.Shape'] :
                ( ( '2d.circle-type/1' @ V_C )
                & ( V_p
                  = ( '2d.center-of/1' @ V_C ) )
                & ( '2d.on/2' @ '2d.origin/0' @ V_C )
                & ( '2d.inside-of/2' @ V_C @ V_D ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ V_E ) ) ) )).

thf(a_1_answer,answer,
    ( '2d.shape-of-cpfun/1'
    @ ^ [V_P: '2d.Point'] :
        ( ( V_P != '2d.origin/0' )
        & ( $lesseq @ ( $difference @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 2.0 ) ) @ ( $quotient @ 1.0 @ 2.0 ) ) @ ( '2d.y-coord/1' @ V_P ) )
        & ( $lesseq @ ( '2d.y-coord/1' @ V_P ) @ ( $sum @ ( $uminus @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 2.0 ) ) ) @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) ),
    answer_to(a_1_question,[])).

thf(a_2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ 4.0 @ 3.0 ) ) ),
    answer_to(a_2_question,[])).

