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

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   93 (   6 equality;  36 variable)
%            Maximal formula depth :   20 (  13 average)
%            Number of connectives :   78 (   1   ~;   0   |;  14   &;  63   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :)
%            Number of variables   :   14 (   0 sgn;   0   !;   6   ?;   6   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: '2d.Point'] :
      ? [V_C: '2d.Shape',V_l: '2d.Shape',V_m: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '^/2' @ V_x @ 2 ) ) ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.perpendicular/2' @ V_l @ V_m )
        & ( '2d.tangent/3' @ V_l @ V_C @ ( '2d.point/2' @ V_a @ ( '^/2' @ V_a @ 2 ) ) )
        & ( '2d.tangent/2' @ V_m @ V_C )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_l @ V_m ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C: '2d.Shape',V_l: '2d.Shape',V_m: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '^/2' @ V_x @ 2 ) ) ) )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.line-type/1' @ V_m )
        & ( '2d.perpendicular/2' @ V_l @ V_m )
        & ( '2d.tangent/2' @ V_l @ V_C )
        & ( '2d.tangent/2' @ V_m @ V_C )
        & ( '2d.line-symmetry-shapes/3' @ V_l @ V_m @ '2d.y-axis/0' )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_l @ ( 'cons/2' @ V_m @ ( 'cons/2' @ V_C @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( ( V_a != 0 )
      & ( V_P_dot_0
        = ( '2d.point/2' @ ( '//2' @ ( '-/2' @ ( '*/2' @ 4 @ ( '^/2' @ V_a @ 2 ) ) @ 1 ) @ ( '*/2' @ 8 @ V_a ) ) @ ( '-/1' @ ( '//2' @ 1 @ 4 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ 1 @ 12 ) ) ),
    answer_to(p2_question,[])).
