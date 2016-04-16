%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2001, Humanities Course, Problem 3
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-26
%%
%% <PROBLEM-TEXT>
%% Consider the circle $C$ whose center is on the real axis among the
%% circles passing through the points $z_1 =(1 +\sqrt{2})+\sqrt{2} i$
%% and $z_2 =\sqrt{3} i$ on the complex plane, then answer the following
%% questions:
%%
%% (1) Find the center ${\eta}$ and the radius $r$ of the circle $C$.
%%
%% (2) Find the arguments of the complex number $z_1 - {\eta}$ and
%% $z_2-{\eta}$.
%%
%% (3) Find the area of the sector enclosed by the line segments
%% $z_1 {\eta}$, $z_2 {\eta}$, and the shorter arc
%% $\stackrel{\frown}{z_1z_2}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   10 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  265 (  24 equality;  74 variable)
%            Maximal formula depth :   25 (  13 average)
%            Number of connectives :  207 (   0   ~;   0   |;  32   &; 175   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   38 (   0   :;   0   =)
%            Number of variables   :   34 (   0 sgn;   0   !;  24   ?;  10   ^)
%                                         (  34   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    3 func;    8 numbers)

include('axioms.ax').

thf(p1_1_qustion,question,
    ( 'find/1' @ 'complex.Complex'
    @ ^ [V_w: 'complex.Complex'] :
      ? [V_z1: 'complex.Complex',V_z2: 'complex.Complex',V_r: $real,V_C: '2d.Shape'] :
        ( ( V_z1
          = ( 'complex.complex/2' @ ( $sum @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) @ ( 'sqrt/1' @ 2.0 ) ) )
        & ( V_z2
          = ( 'complex.complex/2' @ 0.0 @ ( 'sqrt/1' @ 3.0 ) ) )
        & ( V_C
          = ( '2d.circle/2' @ ( 'complex.complex->point/1' @ V_w ) @ V_r ) )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z1 ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z2 ) @ V_C )
        & ( '2d.on/2' @ ( '2d.center-of/1' @ V_C ) @ '2d.x-axis/0' ) ) )).

thf(p1_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_r: $real] :
      ? [V_z1: 'complex.Complex',V_z2: 'complex.Complex',V_w: 'complex.Complex',V_C: '2d.Shape'] :
        ( ( V_z1
          = ( 'complex.complex/2' @ ( $sum @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) @ ( 'sqrt/1' @ 2.0 ) ) )
        & ( V_z2
          = ( 'complex.complex/2' @ 0.0 @ ( 'sqrt/1' @ 3.0 ) ) )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z1 ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z2 ) @ V_C )
        & ( '2d.circle-type/1' @ V_C )
        & ( V_C
          = ( '2d.circle/2' @ ( 'complex.complex->point/1' @ V_w ) @ V_r ) )
        & ( '2d.on/2' @ ( '2d.center-of/1' @ V_C ) @ '2d.x-axis/0' ) ) )).

thf(p2z1w_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_ans: $real] :
      ? [V_z1: 'complex.Complex',V_z2: 'complex.Complex',V_w: 'complex.Complex',V_r: $real,V_C: '2d.Shape'] :
        ( ( V_z1
          = ( 'complex.complex/2' @ ( $sum @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) @ ( 'sqrt/1' @ 2.0 ) ) )
        & ( V_z2
          = ( 'complex.complex/2' @ 0.0 @ ( 'sqrt/1' @ 3.0 ) ) )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z1 ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z2 ) @ V_C )
        & ( $greater @ V_r @ 0.0 )
        & ( V_C
          = ( '2d.circle/2' @ ( 'complex.complex->point/1' @ V_w ) @ V_r ) )
        & ( '2d.on/2' @ ( '2d.center-of/1' @ V_C ) @ '2d.x-axis/0' )
        & ( V_ans
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ '2d.origin/0' @ ( 'complex.complex->point/1' @ ( 'complex.-/2' @ V_z1 @ V_w ) ) ) ) ) ) )).

thf(p2z2w_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_ans: $real] :
      ? [V_z1: 'complex.Complex',V_z2: 'complex.Complex',V_w: 'complex.Complex',V_r: $real,V_C: '2d.Shape'] :
        ( ( V_z1
          = ( 'complex.complex/2' @ ( $sum @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) @ ( 'sqrt/1' @ 2.0 ) ) )
        & ( V_z2
          = ( 'complex.complex/2' @ 0.0 @ ( 'sqrt/1' @ 3.0 ) ) )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z1 ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z2 ) @ V_C )
        & ( $greater @ V_r @ 0.0 )
        & ( V_C
          = ( '2d.circle/2' @ ( 'complex.complex->point/1' @ V_w ) @ V_r ) )
        & ( '2d.on/2' @ ( '2d.center-of/1' @ V_C ) @ '2d.x-axis/0' )
        & ( V_ans
          = ( '2d.rad-of-angle/1' @ ( '2d.angle/3' @ ( '2d.point/2' @ 1.0 @ 0.0 ) @ '2d.origin/0' @ ( 'complex.complex->point/1' @ ( 'complex.-/2' @ V_z2 @ V_w ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_z1: 'complex.Complex',V_z2: 'complex.Complex',V_w: 'complex.Complex',V_C: '2d.Shape',V_z1z2: '2d.Shape',V_r: $real] :
        ( ( V_z1
          = ( 'complex.complex/2' @ ( $sum @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) @ ( 'sqrt/1' @ 2.0 ) ) )
        & ( V_z2
          = ( 'complex.complex/2' @ 0.0 @ ( 'sqrt/1' @ 3.0 ) ) )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z1 ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_z2 ) @ V_C )
        & ( V_C
          = ( '2d.circle/2' @ ( 'complex.complex->point/1' @ V_w ) @ V_r ) )
        & ( '2d.on/2' @ ( '2d.center-of/1' @ V_C ) @ '2d.x-axis/0' )
        & ( V_z1z2
          = ( '2d.minor-arc/1' @ ( '2d.arc/3' @ ( '2d.center-of/1' @ V_C ) @ ( 'complex.complex->point/1' @ V_z1 ) @ ( 'complex.complex->point/1' @ V_z2 ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( '2d.line/2' @ ( 'complex.complex->point/1' @ V_z1 ) @ ( 'complex.complex->point/1' @ V_w ) ) @ ( 'cons/2' @ '2d.Shape' @ ( '2d.line/2' @ ( 'complex.complex->point/1' @ V_z2 ) @ ( 'complex.complex->point/1' @ V_w ) ) @ ( 'cons/2' @ '2d.Shape' @ V_z1z2 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_w_dot_0: 'complex.Complex'] :
      ( V_w_dot_0
      = ( 'complex.complex/2' @ 1.0 @ 0.0 ) ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_r_dot_0: $real] : ( V_r_dot_0 = 2.0 ) ),
    answer_to(p1_2_question,[])).

thf(p2z1w_answer,answer,(
    ^ [V_ans_dot_0: $real] :
      ( V_ans_dot_0
      = ( $product @ 45.0 @ 'Degree/0' ) ) ),
    answer_to(p2z1w_question,[])).

thf(p2z2w_answer,answer,(
    ^ [V_ans_dot_0: $real] :
      ( V_ans_dot_0
      = ( $product @ 120.0 @ 'Degree/0' ) ) ),
    answer_to(p2z2w_question,[])).

thf(p3_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $product @ ( $quotient @ 5.0 @ 6.0 ) @ 'Pi/0' ) ) ),
    answer_to(p3_question,[])).

