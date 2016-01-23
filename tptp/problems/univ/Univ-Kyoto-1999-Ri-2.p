%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 1999, Science Course, Problem 2
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-14
%%
%% <PROBLEM-TEXT>
%% Let $A$ and $B$ be fixed points on a plane, and let $c$ be a positive
%% constant. When the point $P$ on a plane satisfies
%% $|\vec{PA}| |\vec{PB}|+\vec{PA}\cdot\vec{PB}=c$, find the locus of
%% the point $P$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   68 (   8 equality;  32 variable)
%            Maximal formula depth :   18 (  18 average)
%            Number of connectives :   50 (   0   ~;   0   |;   6   &;  44   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :   18 (   8 sgn;   0   !;   4   ?;   4   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p0_qustion,question,
    ( 'Find/1'
    @ ^ [V_Pn: '2d.Shape'] :
        ( V_Pn
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_P: '2d.Point'] :
            ? [V_A: '2d.Point',V_B: '2d.Point'] :
              ( ( V_A
                = ( '2d.point/2' @ V_Ax @ V_Ay ) )
              & ( V_B
                = ( '2d.point/2' @ V_Bx @ V_By ) )
              & ( '>/2' @ V_c @ 0 )
              & ( ( '+/2' @ ( '*/2' @ ( '2d.distance/2' @ V_P @ V_A ) @ ( '2d.distance/2' @ V_P @ V_B ) ) @ ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_P @ V_A ) @ ( '2d.vec/2' @ V_P @ V_B ) ) )
                = V_c ) ) ) ) )).

thf(p0_answer,answer,(
    ^ [V_Pn_dot_0: '2d.Shape'] :
    ? [V_A_dot_0: '2d.Point',V_B_dot_0: '2d.Point'] :
      ( ( '>/2' @ V_c @ 0 )
      & ( V_A_dot_0
        = ( '2d.point/2' @ V_Ax @ V_Ay ) )
      & ( V_B_dot_0
        = ( '2d.point/2' @ V_Bx @ V_By ) )
      & ( V_Pn_dot_0
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_P_dot_0: '2d.Point'] :
              ( ( '+/2' @ ( '2d.distance/2' @ V_P_dot_0 @ V_A_dot_0 ) @ ( '2d.distance/2' @ V_P_dot_0 @ V_B_dot_0 ) )
              = ( 'sqrt/1' @ ( '+/2' @ ( '*/2' @ 2 @ V_c ) @ ( '^/2' @ ( '2d.distance/2' @ V_A_dot_0 @ V_B_dot_0 ) @ 2 ) ) ) ) ) ) ) ),
    answer_to(p0_question,[])).
