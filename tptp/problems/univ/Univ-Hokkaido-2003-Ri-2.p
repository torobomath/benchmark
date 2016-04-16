%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2003, Science Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-25
%%
%% <PROBLEM-TEXT>
%% Let $z$ be a complex number, and $i$, the imaginary unit.
%%
%% (1) Draw the figure $P$ formed by all the points $z$ such that
%% $\frac{1}{z+i} +\frac{1}{z-i}$ is a real number.
%%
%% (2) When $z$ moves on the figure $P$ found above, draw the figure
%% formed by $w =\frac{z+i}{z-i}$ on the complex plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  106 (  11 equality;  26 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :   84 (   4   ~;   2   |;   9   &;  69   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   5   ?;   7   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   0 pred;    0 func;    3 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_P: '2d.Shape'] :
        ( V_P
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
            ? [V_z: 'complex.Complex'] :
              ( ( V_p
                = ( 'complex.complex->point/1' @ V_z ) )
              & ( 'complex.real-number/1' @ ( 'complex.+/2' @ ( 'complex.//2' @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) @ ( 'complex.+/2' @ V_z @ 'complex.i/0' ) ) @ ( 'complex.//2' @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) @ ( 'complex.-/2' @ V_z @ 'complex.i/0' ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_w_set: '2d.Shape'] :
      ? [V_P: '2d.Shape'] :
        ( ( V_P
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
              ? [V_z_dot_0: 'complex.Complex'] :
                ( ( V_p_dot_0
                  = ( 'complex.complex->point/1' @ V_z_dot_0 ) )
                & ( 'complex.real-number/1' @ ( 'complex.+/2' @ ( 'complex.//2' @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) @ ( 'complex.+/2' @ V_z_dot_0 @ 'complex.i/0' ) ) @ ( 'complex.//2' @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) @ ( 'complex.-/2' @ V_z_dot_0 @ 'complex.i/0' ) ) ) ) ) ) )
        & ( V_w_set
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
              ? [V_z: 'complex.Complex',V_w: 'complex.Complex'] :
                ( ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z ) @ V_P )
                & ( V_w
                  = ( 'complex.//2' @ ( 'complex.+/2' @ V_z @ 'complex.i/0' ) @ ( 'complex.-/2' @ V_z @ 'complex.i/0' ) ) )
                & ( V_p
                  = ( 'complex.complex->point/1' @ V_w ) ) ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.shape-of-cpfun/1'
    @ ^ [V_p_dot_0: '2d.Point'] :
        ( ( ( '2d.on/2' @ V_p_dot_0 @ ( '2d.circle/2' @ '2d.origin/0' @ 1.0 ) )
          | ( '2d.on/2' @ V_p_dot_0 @ '2d.x-axis/0' ) )
        & ( V_p_dot_0
         != ( '2d.point/2' @ 0.0 @ 1.0 ) )
        & ( V_p_dot_0
         != ( '2d.point/2' @ 0.0 @ -1.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.shape-of-cpfun/1'
    @ ^ [V_P_dot_0: '2d.Point'] :
        ( ( ( '2d.on/2' @ V_P_dot_0 @ ( '2d.circle/2' @ '2d.origin/0' @ 1.0 ) )
          | ( '2d.on/2' @ V_P_dot_0 @ '2d.y-axis/0' ) )
        & ( V_P_dot_0 != '2d.origin/0' )
        & ( V_P_dot_0
         != ( '2d.point/2' @ 1.0 @ 0.0 ) ) ) ),
    answer_to(p2_question,[])).

