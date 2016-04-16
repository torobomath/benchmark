%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2001, Science Course, Problem 2
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-14
%%
%% <PROBLEM-TEXT>
%% Let $f(x)= x^4 + x^3 - 3 x^2$. Assume that only one tangent can be
%% drawn from the point $(0, a)$ to the curve $y = f(x)$, and the
%% tangent is in contact with the curve at only one point. Find the
%% value of $a$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   63 (   5 equality;  24 variable)
%            Maximal formula depth :   19 (  11 average)
%            Number of connectives :   51 (   0   ~;   0   |;   9   &;  40   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   3   !;   3   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   0 pred;    0 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_f: '2d.Shape',V_l: '2d.Shape',V_P: '2d.Point'] :
        ( ( V_f
          = ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ -3.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ V_a ) @ V_l )
        & ( '2d.line-type/1' @ V_l )
        & ( '2d.tangent/3' @ V_f @ V_l @ V_P )
        & ! [V_m: '2d.Shape',V_Q: '2d.Point'] :
            ( ( ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ V_a ) @ V_m )
              & ( '2d.line-type/1' @ V_m )
              & ( '2d.tangent/3' @ V_f @ V_m @ V_Q ) )
           => ( ( V_m = V_l )
              & ( V_P = V_Q ) ) )
        & ! [V_R: '2d.Point'] :
            ( ( ( '2d.on/2' @ V_R @ V_l )
              & ( '2d.on/2' @ V_R @ V_f ) )
           => ( V_R = V_P ) ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: $real] : ( V_a_dot_0 = 2.0 ) ),
    answer_to(p_question,[])).

