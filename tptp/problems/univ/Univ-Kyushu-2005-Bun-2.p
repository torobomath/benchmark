%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2005, Humanities Course, Problem 2
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-21
%%
%% <PROBLEM-TEXT>
%% Answer the following questions about the quadratic equation
%% $z^2 + t z + t = 0$, where $t$ is a real number.
%%
%% (1) Find the range of $t$ such that this quadratic equation has $2$
%% different imaginary solutions and all the imaginary solutions at that
%% time.
%%
%% (2) Let $z(t)$ be the imaginary solution with a positive imaginary
%% solution among those found in (1). When $t$ moves in the range found
%% in (1), find and draw the figure $C$ formed by the point $z(t)$ on
%% the complex plane.
%%
%% (3) When the point $z$ moves on the figure found in (2) on the
%% complex plane, find and draw the figure formed by the point $w$ that
%% is defined as $w =\frac{i z}{z+1}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    9 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  292 (  24 equality;  69 variable)
%            Maximal formula depth :   22 (  13 average)
%            Number of connectives :  252 (  16   ~;   1   |;  31   &; 204   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   38 (   1   :;   0   =)
%            Number of variables   :   21 (   0 sgn;   0   !;   9   ?;  12   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    3 func;    6 numbers)

include('axioms.ax').

thf('t/0_type',type,(
    't/0': $real )).

thf(p1_t_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_t: $real] :
      ? [V_z1: 'complex.Complex',V_z2: 'complex.Complex'] :
        ( ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z1 @ 2.0 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z1 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
          = ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
        & ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z2 @ 2.0 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z2 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
          = ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
        & ( V_z1 != V_z2 )
        & ~ ( 'complex.real-number/1' @ V_z1 )
        & ~ ( 'complex.real-number/1' @ V_z2 ) ) )).

thf(p1_z_qustion,question,
    ( 'find/1' @ 'complex.Complex'
    @ ^ [V_z1: 'complex.Complex'] :
      ? [V_z2: 'complex.Complex'] :
        ( ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z1 @ 2.0 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ 't/0' ) @ V_z1 ) @ ( 'complex.real->complex/1' @ 't/0' ) ) )
          = ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
        & ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z2 @ 2.0 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ 't/0' ) @ V_z2 ) @ ( 'complex.real->complex/1' @ 't/0' ) ) )
          = ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
        & ( V_z1 != V_z2 )
        & ~ ( 'complex.real-number/1' @ V_z1 )
        & ~ ( 'complex.real-number/1' @ V_z2 ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_C: '2d.Shape'] :
        ( V_C
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_zt: '2d.Point'] :
            ? [V_t: $real,V_z1: 'complex.Complex',V_z2: 'complex.Complex'] :
              ( ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z1 @ 2.0 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z1 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
                = ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
              & ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z2 @ 2.0 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z2 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
                = ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
              & ( V_z1 != V_z2 )
              & ( $less @ 0.0 @ ( 'complex.imaginary-part/1' @ V_z1 ) )
              & ( $less @ ( 'complex.imaginary-part/1' @ V_z2 ) @ 0.0 )
              & ~ ( 'complex.real-number/1' @ V_z1 )
              & ~ ( 'complex.real-number/1' @ V_z2 )
              & ( V_zt
                = ( 'complex.complex->point/1' @ V_z1 ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_W: '2d.Shape'] :
        ( V_W
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_w: '2d.Point'] :
            ? [V_t: $real,V_z1: 'complex.Complex',V_z2: 'complex.Complex'] :
              ( ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z1 @ 2.0 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z1 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
                = ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
              & ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z2 @ 2.0 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z2 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
                = ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
              & ( V_z1 != V_z2 )
              & ( $less @ 0.0 @ ( 'complex.imaginary-part/1' @ V_z1 ) )
              & ( $less @ ( 'complex.imaginary-part/1' @ V_z2 ) @ 0.0 )
              & ~ ( 'complex.real-number/1' @ V_z1 )
              & ~ ( 'complex.real-number/1' @ V_z2 )
              & ( V_w
                = ( 'complex.complex->point/1' @ ( 'complex.//2' @ ( 'complex.*/2' @ 'complex.i/0' @ V_z1 ) @ ( 'complex.+/2' @ V_z1 @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) ) ) ) ) ) ) ) )).

thf(p1_t_answer,answer,(
    ^ [V_t_dot_0: $real] :
      ( ( $less @ 0.0 @ V_t_dot_0 )
      & ( $less @ V_t_dot_0 @ 4.0 ) ) ),
    answer_to(p1_t_question,[])).

thf(p1_z_answer,answer,(
    ^ [V_z1_dot_0: 'complex.Complex'] :
      ( ( $less @ 0.0 @ 't/0' )
      & ( $less @ 't/0' @ 4.0 )
      & ( ( V_z1_dot_0
          = ( 'complex.//2' @ ( 'complex.+/2' @ ( 'complex.-/1' @ ( 'complex.real->complex/1' @ 't/0' ) ) @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ ( 'sqrt/1' @ ( $sum @ ( $uminus @ ( '^/2' @ 't/0' @ 2.0 ) ) @ ( $product @ 4.0 @ 't/0' ) ) ) ) @ 'complex.i/0' ) ) @ ( 'complex.real->complex/1' @ 2.0 ) ) )
        | ( V_z1_dot_0
          = ( 'complex.//2' @ ( 'complex.-/2' @ ( 'complex.-/1' @ ( 'complex.real->complex/1' @ 't/0' ) ) @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ ( 'sqrt/1' @ ( $sum @ ( $uminus @ ( '^/2' @ 't/0' @ 2.0 ) ) @ ( $product @ 4.0 @ 't/0' ) ) ) ) @ 'complex.i/0' ) ) @ ( 'complex.real->complex/1' @ 2.0 ) ) ) ) ) ),
    answer_to(p1_z_question,[])).

thf(p2_answer,answer,(
    ^ [V_C_dot_0: '2d.Shape'] :
      ( V_C_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_P: '2d.Point'] :
            ( ( '2d.on/2' @ V_P @ ( '2d.circle/2' @ ( '2d.point/2' @ -1.0 @ 0.0 ) @ 1.0 ) )
            & ( V_P
             != ( '2d.point/2' @ -2.0 @ 0.0 ) )
            & ( V_P != '2d.origin/0' )
            & ( $greater @ ( '2d.y-coord/1' @ V_P ) @ 0.0 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_W_dot_0: '2d.Shape'] :
      ( V_W_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_P: '2d.Point'] :
            ( ( '2d.on/2' @ V_P @ ( '2d.circle/2' @ ( '2d.point/2' @ 0.0 @ 1.0 ) @ 1.0 ) )
            & ( V_P
             != ( '2d.point/2' @ 0.0 @ 2.0 ) )
            & ( V_P != '2d.origin/0' )
            & ( $less @ ( '2d.x-coord/1' @ V_P ) @ 0.0 ) ) ) ) ),
    answer_to(p3_question,[])).

