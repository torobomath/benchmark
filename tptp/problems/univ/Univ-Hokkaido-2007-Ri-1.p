%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2007, Science Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-09-27
%%
%% <PROBLEM-TEXT>
%% Consider the circle $C$ defined by the equation
%% $x^2 + y^2 - 4 y + 2 = 0$.
%%
%% (1) Find the coordinates of the center of the circle that passes
%% through the points $A(-\sqrt{2}, 0)$ and $0(0, 0)$ and is in contact
%% with the circle $C$.
%%
%% (2) When the point $P$ moves on the circle $C$, find the maximum and
%% minimum values of $\cos\angle APO$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  164 (  17 equality;  44 variable)
%            Maximal formula depth :   22 (  14 average)
%            Number of connectives :  124 (   0   ~;   1   |;  16   &; 107   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   24 (   0 sgn;   0   !;  10   ?;  14   ^)
%                                         (  24   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_c: '2d.Point'] :
      ? [V_C1: '2d.Shape',V_C: '2d.Shape'] :
        ( ( '2d.circle-type/1' @ V_C1 )
        & ( '2d.circle-type/1' @ V_C )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 0
                = ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '^/2' @ V_y @ 2 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 4 @ V_y ) ) @ 2 ) ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ ( '-/1' @ ( 'sqrt/1' @ 2 ) ) @ 0 ) @ V_C1 )
        & ( '2d.on/2' @ '2d.origin/0' @ V_C1 )
        & ( ( '2d.center-of/1' @ V_C1 )
          = V_c )
        & ( '2d.tangent/2' @ V_C @ V_C1 ) ) )).

thf(p2_min_qustion,question,
    ( 'Find/1'
    @ ^ [V_min: 'R'] :
      ? [V_C: '2d.Shape',V_A: '2d.Point',V_O: '2d.Point'] :
        ( ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_cosAPO: 'R'] :
              ? [V_P: '2d.Point'] :
                ( ( '2d.on/2' @ V_P @ V_C )
                & ( V_cosAPO
                  = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_O ) ) ) ) )
          @ V_min )
        & ( V_A
          = ( '2d.point/2' @ ( '-/1' @ ( 'sqrt/1' @ 2 ) ) @ 0 ) )
        & ( V_O
          = ( '2d.point/2' @ 0 @ 0 ) )
        & ( '2d.circle-type/1' @ V_C )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 0
                = ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '^/2' @ V_y @ 2 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 4 @ V_y ) ) @ 2 ) ) ) ) ) ) ) )).

thf(p2_max_qustion,question,
    ( 'Find/1'
    @ ^ [V_max: 'R'] :
      ? [V_C: '2d.Shape',V_A: '2d.Point',V_O: '2d.Point'] :
        ( ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_cosAPO: 'R'] :
              ? [V_P: '2d.Point'] :
                ( ( '2d.on/2' @ V_P @ V_C )
                & ( V_cosAPO
                  = ( '2d.cos-of-angle/1' @ ( '2d.angle/3' @ V_A @ V_P @ V_O ) ) ) ) )
          @ V_max )
        & ( V_A
          = ( '2d.point/2' @ ( '-/1' @ ( 'sqrt/1' @ 2 ) ) @ 0 ) )
        & ( V_O
          = ( '2d.point/2' @ 0 @ 0 ) )
        & ( '2d.circle-type/1' @ V_C )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 0
                = ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '^/2' @ V_y @ 2 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 4 @ V_y ) ) @ 2 ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_c_dot_0: '2d.Point'] :
      ( ( V_c_dot_0
        = ( '2d.point/2' @ ( '-/1' @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 2 ) ) @ 0 ) )
      | ( V_c_dot_0
        = ( '2d.point/2' @ ( '-/1' @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 2 ) ) @ 2 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_min_answer,answer,(
    ^ [V_min_dot_0: 'R'] : ( V_min_dot_0 = 0 ) ),
    answer_to(p2_min_question,[])).

thf(p2_max_answer,answer,(
    ^ [V_max_dot_0: 'R'] :
      ( V_max_dot_0
      = ( '//2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) @ 3 ) ) ),
    answer_to(p2_max_question,[])).
