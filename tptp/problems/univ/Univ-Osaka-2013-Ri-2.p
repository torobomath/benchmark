%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2013, Science Course, Problem 2
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-06-30
%%
%% <PROBLEM-TEXT>
%% Draw the region represented by the inequality
%% $1\le ||x| - 2| + ||y| - 2|\le 3$ on the $x y$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  167 (   0 equality;   4 variable)
%            Maximal formula depth :   16 (  14 average)
%            Number of connectives :  165 (   0   ~;   0   |;   1   &; 164   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :    1 (   0 sgn;   0   !;   0   ?;   1   ^)
%                                         (   1   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    2 func;    8 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'draw/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
        ( ( $lesseq @ 1.0 @ ( $sum @ ( 'abs/1' @ ( $difference @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_P ) ) @ 2.0 ) ) @ ( 'abs/1' @ ( $difference @ ( 'abs/1' @ ( '2d.y-coord/1' @ V_P ) ) @ 2.0 ) ) ) )
        & ( $lesseq @ ( $sum @ ( 'abs/1' @ ( $difference @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_P ) ) @ 2.0 ) ) @ ( 'abs/1' @ ( $difference @ ( 'abs/1' @ ( '2d.y-coord/1' @ V_P ) ) @ 2.0 ) ) ) @ 3.0 ) ) )).

thf(p_answer,answer,
    ( '2d.shape-/2' @ ( '2d.union/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.with-boundary/1' @ ( '2d.square/4' @ ( '2d.point/2' @ -1.0 @ 2.0 ) @ ( '2d.point/2' @ 2.0 @ -1.0 ) @ ( '2d.point/2' @ 5.0 @ 2.0 ) @ ( '2d.point/2' @ 2.0 @ 5.0 ) ) ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.with-boundary/1' @ ( '2d.square/4' @ ( '2d.point/2' @ -5.0 @ 2.0 ) @ ( '2d.point/2' @ -2.0 @ -1.0 ) @ ( '2d.point/2' @ 1.0 @ 2.0 ) @ ( '2d.point/2' @ -2.0 @ 5.0 ) ) ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.with-boundary/1' @ ( '2d.square/4' @ ( '2d.point/2' @ -5.0 @ -2.0 ) @ ( '2d.point/2' @ -2.0 @ -5.0 ) @ ( '2d.point/2' @ 1.0 @ -2.0 ) @ ( '2d.point/2' @ -2.0 @ 1.0 ) ) ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.with-boundary/1' @ ( '2d.square/4' @ ( '2d.point/2' @ -1.0 @ -2.0 ) @ ( '2d.point/2' @ 2.0 @ -5.0 ) @ ( '2d.point/2' @ 5.0 @ -2.0 ) @ ( '2d.point/2' @ 2.0 @ 1.0 ) ) ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) @ ( '2d.union/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.inner-part-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ 1.0 @ 2.0 ) @ ( '2d.point/2' @ 2.0 @ 1.0 ) @ ( '2d.point/2' @ 3.0 @ 2.0 ) @ ( '2d.point/2' @ 2.0 @ 3.0 ) ) ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.inner-part-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ -3.0 @ 2.0 ) @ ( '2d.point/2' @ -2.0 @ 1.0 ) @ ( '2d.point/2' @ -1.0 @ 2.0 ) @ ( '2d.point/2' @ -2.0 @ 3.0 ) ) ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.inner-part-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ -3.0 @ -2.0 ) @ ( '2d.point/2' @ -2.0 @ -3.0 ) @ ( '2d.point/2' @ -1.0 @ -2.0 ) @ ( '2d.point/2' @ -2.0 @ -1.0 ) ) ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.inner-part-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ 1.0 @ -2.0 ) @ ( '2d.point/2' @ 2.0 @ -3.0 ) @ ( '2d.point/2' @ 3.0 @ -2.0 ) @ ( '2d.point/2' @ 2.0 @ -1.0 ) ) ) @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ),
    answer_to(p_question,[])).

