%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2013, Humanities Course, Problem 1
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2013-11-11
%%
%% <PROBLEM-TEXT>
%% Let $C$ be the graph of the function $y=x(x - 1)(x - 3)$, let $l$ be
%% the straight line with the inclination $t$ passing through the origin
%% $O$, and assume that $C$ and $l$ have common points other than $O$.
%% Let $O$, $P$, and $Q$ be the common points of $C$ and $l$, and
%% $g(t)$, the product of $|\vec{OP}|$ and $|\vec{OQ}|$. However, if one
%% of such common points is a point of contact, the point is regarded as
%% two among $O$, $P$, and $Q$. Investigate the increase/decrease of the
%% function $g(t)$, and find the extremums of the function.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   93 (  10 equality;  43 variable)
%            Maximal formula depth :   28 (  18 average)
%            Number of connectives :   73 (   2   ~;   4   |;  13   &;  53   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   13 (   1 sgn;   2   !;   7   ?;   3   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_y_opt: 'R'] :
      ? [V_g: 'R2R',V_C: '2d.Shape',V_O: '2d.Point',V_l: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_x_opt: 'R'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: 'R'] :
                  ( '*/2' @ V_x @ ( '*/2' @ ( '-/2' @ V_x @ 1 ) @ ( '-/2' @ V_x @ 3 ) ) ) ) ) )
        & ( V_O = '2d.origin/0' )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.is-slope-of/2' @ V_t @ V_l )
        & ( '2d.on/2' @ V_O @ V_l )
        & ( '2d.on/2' @ V_P @ V_l )
        & ( '2d.on/2' @ V_Q @ V_l )
        & ( '2d.on/2' @ V_P @ V_C )
        & ( '2d.on/2' @ V_Q @ V_C )
        & ( ( V_O != V_P )
          | ( V_O != V_Q ) )
        & ! [V_R: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_R @ V_C )
              & ( '2d.on/2' @ V_R @ V_l ) )
           => ( ( V_R = V_O )
              | ( V_R = V_P )
              | ( V_R = V_Q ) ) )
        & ! [V_t_dot_0: 'R'] :
            ( ( 'funapp/2' @ V_g @ V_t_dot_0 )
            = ( '*/2' @ ( '2d.distance/2' @ V_O @ V_P ) @ ( '2d.distance/2' @ V_O @ V_Q ) ) )
        & ( 'func-extreme/3' @ V_g @ V_x_opt @ V_y_opt ) ) )).

thf(p_answer,answer,(
    ^ [V_y_opt_dot_0: 'R'] :
      ( ( V_y_opt_dot_0
        = ( '//2' @ ( '+/2' @ 36 @ ( '*/2' @ 4 @ ( 'sqrt/1' @ 6 ) ) ) @ 9 ) )
      | ( V_y_opt_dot_0
        = ( '//2' @ ( '-/2' @ 36 @ ( '*/2' @ 4 @ ( 'sqrt/1' @ 6 ) ) ) @ 9 ) ) ) ),
    answer_to(p_question,[])).
