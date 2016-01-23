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
%            Number of atoms       :  156 (   0 equality;   4 variable)
%            Maximal formula depth :   16 (  14 average)
%            Number of connectives :  154 (   0   ~;   0   |;   1   &; 153   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :    1 (   0 sgn;   0   !;   0   ?;   1   ^)
%                                         (   1   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Draw/1'
    @ ^ [V_P: '2d.Point'] :
        ( ( '<=/2' @ 1 @ ( '+/2' @ ( 'abs/1' @ ( '-/2' @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_P ) ) @ 2 ) ) @ ( 'abs/1' @ ( '-/2' @ ( 'abs/1' @ ( '2d.y-coord/1' @ V_P ) ) @ 2 ) ) ) )
        & ( '<=/2' @ ( '+/2' @ ( 'abs/1' @ ( '-/2' @ ( 'abs/1' @ ( '2d.x-coord/1' @ V_P ) ) @ 2 ) ) @ ( 'abs/1' @ ( '-/2' @ ( 'abs/1' @ ( '2d.y-coord/1' @ V_P ) ) @ 2 ) ) ) @ 3 ) ) )).

thf(p_answer,answer,
    ( '2d.shape-/2' @ ( '2d.union/1' @ ( 'cons/2' @ ( '2d.with-boundary/1' @ ( '2d.square/4' @ ( '2d.point/2' @ -1 @ 2 ) @ ( '2d.point/2' @ 2 @ -1 ) @ ( '2d.point/2' @ 5 @ 2 ) @ ( '2d.point/2' @ 2 @ 5 ) ) ) @ ( 'cons/2' @ ( '2d.with-boundary/1' @ ( '2d.square/4' @ ( '2d.point/2' @ -5 @ 2 ) @ ( '2d.point/2' @ -2 @ -1 ) @ ( '2d.point/2' @ 1 @ 2 ) @ ( '2d.point/2' @ -2 @ 5 ) ) ) @ ( 'cons/2' @ ( '2d.with-boundary/1' @ ( '2d.square/4' @ ( '2d.point/2' @ -5 @ -2 ) @ ( '2d.point/2' @ -2 @ -5 ) @ ( '2d.point/2' @ 1 @ -2 ) @ ( '2d.point/2' @ -2 @ 1 ) ) ) @ ( 'cons/2' @ ( '2d.with-boundary/1' @ ( '2d.square/4' @ ( '2d.point/2' @ -1 @ -2 ) @ ( '2d.point/2' @ 2 @ -5 ) @ ( '2d.point/2' @ 5 @ -2 ) @ ( '2d.point/2' @ 2 @ 1 ) ) ) @ 'nil/0' ) ) ) ) ) @ ( '2d.union/1' @ ( 'cons/2' @ ( '2d.inner-part-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ 1 @ 2 ) @ ( '2d.point/2' @ 2 @ 1 ) @ ( '2d.point/2' @ 3 @ 2 ) @ ( '2d.point/2' @ 2 @ 3 ) ) ) @ ( 'cons/2' @ ( '2d.inner-part-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ -3 @ 2 ) @ ( '2d.point/2' @ -2 @ 1 ) @ ( '2d.point/2' @ -1 @ 2 ) @ ( '2d.point/2' @ -2 @ 3 ) ) ) @ ( 'cons/2' @ ( '2d.inner-part-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ -3 @ -2 ) @ ( '2d.point/2' @ -2 @ -3 ) @ ( '2d.point/2' @ -1 @ -2 ) @ ( '2d.point/2' @ -2 @ -1 ) ) ) @ ( 'cons/2' @ ( '2d.inner-part-of/1' @ ( '2d.square/4' @ ( '2d.point/2' @ 1 @ -2 ) @ ( '2d.point/2' @ 2 @ -3 ) @ ( '2d.point/2' @ 3 @ -2 ) @ ( '2d.point/2' @ 2 @ -1 ) ) ) @ 'nil/0' ) ) ) ) ) ),
    answer_to(p_question,[])).
