%% DOMAIN:    Geometry, polyhedrons
%% THEORY:    RCF+PA
%% SOURCE:    International Mathematical Olympiad, 1999, Problem 1
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-12-03
%%
%% <PROBLEM-TEXT>
%% Determine all finite sets S of at least three points in the plane
%% which satisfy the following condition:
%% for any two distinct points A and B in S, the perpendicular bisector
%% of the line segment AB is an axis of symmetry for S.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   48 (   2 equality;  27 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :   45 (   1   ~;   0   |;   9   &;  34   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :    8 (   0 sgn;   4   !;   2   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'ListOf' @ '2d.Point'] :
        ( ( 'int.<=/2' @ 3 @ ( 'list-len/1' @ V_S ) )
        & ! [V_A: '2d.Point',V_B: '2d.Point',V_P: '2d.Point',V_l: '2d.Shape'] :
            ( ( ( V_A != V_B )
              & ( 'member/2' @ V_A @ V_S )
              & ( 'member/2' @ V_B @ V_S )
              & ( 'member/2' @ V_P @ V_S )
              & ( '2d.line-type/1' @ V_l )
              & ( '2d.is-perp-bisector/2' @ V_l @ ( '2d.seg/2' @ V_A @ V_B ) ) )
           => ? [V_Q: '2d.Point',V_R: '2d.Point'] :
                ( ( 'member/2' @ V_Q @ V_S )
                & ( '2d.perpendicular/2' @ ( '2d.line/2' @ V_P @ V_Q ) @ V_l )
                & ( '2d.intersect/3' @ V_l @ ( '2d.line/2' @ V_P @ V_Q ) @ V_R )
                & ( ( '2d.distance/2' @ V_P @ V_R )
                  = ( '2d.distance/2' @ V_Q @ V_R ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: 'ListOf' @ '2d.Point'] :
      ( '2d.is-regular-polygon/1' @ ( '2d.polygon/1' @ V_S_dot_0 ) ) ),
    answer_to(p_question,[])).
