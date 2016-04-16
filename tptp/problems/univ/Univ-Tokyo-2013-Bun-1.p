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

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   94 (  10 equality;  42 variable)
%            Maximal formula depth :   28 (  13 average)
%            Number of connectives :   74 (   2   ~;   4   |;  13   &;  54   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   1   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   2   !;   7   ?;   3   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    4 func;    6 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_y_opt: $real] :
      ? [V_g: 'R2R',V_C: '2d.Shape',V_O: '2d.Point',V_l: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point',V_x_opt: $real] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $product @ V_x @ ( $product @ ( $difference @ V_x @ 1.0 ) @ ( $difference @ V_x @ 3.0 ) ) ) ) ) )
        & ( V_O = '2d.origin/0' )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.is-slope-of/2' @ 't/0' @ V_l )
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
        & ! [V_t_dot_0: $real] :
            ( ( 'funapp/2' @ V_g @ V_t_dot_0 )
            = ( $product @ ( '2d.distance/2' @ V_O @ V_P ) @ ( '2d.distance/2' @ V_O @ V_Q ) ) )
        & ( 'func-extreme/3' @ V_g @ V_x_opt @ V_y_opt ) ) )).

thf(p_answer,answer,(
    ^ [V_y_opt_dot_0: $real] :
      ( ( V_y_opt_dot_0
        = ( $quotient @ ( $sum @ 36.0 @ ( $product @ 4.0 @ ( 'sqrt/1' @ 6.0 ) ) ) @ 9.0 ) )
      | ( V_y_opt_dot_0
        = ( $quotient @ ( $difference @ 36.0 @ ( $product @ 4.0 @ ( 'sqrt/1' @ 6.0 ) ) ) @ 9.0 ) ) ) ),
    answer_to(p_question,[])).

