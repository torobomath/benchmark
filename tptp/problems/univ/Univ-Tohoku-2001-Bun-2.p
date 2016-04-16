%% DOMAIN:    Quadratic Functions
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2001, Humanities Course, Problem 2
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% Find the range of the real number $p$ such that the parabola
%% $y =(x - p)^2 - 2$ intersects with the triangle with the vertices at
%% the points $(0, 0)$, $(1, 2)$, and $(0, 2)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   44 (   2 equality;  12 variable)
%            Maximal formula depth :   16 (  12 average)
%            Number of connectives :   38 (   0   ~;   1   |;   5   &;  32   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   3   ?;   3   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    1 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_p: $real] :
      ? [V_C: '2d.Shape',V_T: '2d.Shape'] :
        ( ( V_C
          = ( '2d.graph-of/1'
            @ ( 'fun/1'
              @ ^ [V_x: $real] :
                  ( $difference @ ( '^/2' @ ( $difference @ V_x @ V_p ) @ 2.0 ) @ 2.0 ) ) ) )
        & ( V_T
          = ( '2d.triangle/3' @ ( '2d.point/2' @ 0.0 @ 0.0 ) @ ( '2d.point/2' @ 1.0 @ 2.0 ) @ ( '2d.point/2' @ 0.0 @ 2.0 ) ) )
        & ? [V_Q: '2d.Point'] :
            ( ( '2d.on/2' @ V_Q @ V_C )
            & ( '2d.on/2' @ V_Q @ V_T ) ) ) )).

thf(p_answer,answer,(
    ^ [V_p_dot_0: $real] :
      ( ( ( $lesseq @ -2.0 @ V_p_dot_0 )
        & ( $lesseq @ V_p_dot_0 @ -1.0 ) )
      | ( ( $lesseq @ ( 'sqrt/1' @ 2.0 ) @ V_p_dot_0 )
        & ( $lesseq @ V_p_dot_0 @ 3.0 ) ) ) ),
    answer_to(p_question,[])).

