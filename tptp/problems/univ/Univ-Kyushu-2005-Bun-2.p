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

% Syntax   : Number of formulae    :    8 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  288 (  24 equality;  81 variable)
%            Maximal formula depth :   22 (  14 average)
%            Number of connectives :  248 (  16   ~;   1   |;  31   &; 200   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   37 (   0   :)
%            Number of variables   :   23 (   0 sgn;   0   !;   9   ?;  12   ^)
%                                         (  21   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_t_qustion,question,
    ( 'Find/1'
    @ ^ [V_t: 'R'] :
      ? [V_z1: 'complex.Complex',V_z2: 'complex.Complex'] :
        ( ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z1 @ 2 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z1 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
          = ( 'complex.complex/2' @ 0 @ 0 ) )
        & ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z2 @ 2 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z2 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
          = ( 'complex.complex/2' @ 0 @ 0 ) )
        & ( V_z1 != V_z2 )
        & ~ ( 'complex.real-number/1' @ V_z1 )
        & ~ ( 'complex.real-number/1' @ V_z2 ) ) )).

thf(p1_z_qustion,question,
    ( 'Find/1'
    @ ^ [V_z1: 'complex.Complex'] :
      ? [V_z2: 'complex.Complex'] :
        ( ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z1 @ 2 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z1 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
          = ( 'complex.complex/2' @ 0 @ 0 ) )
        & ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z2 @ 2 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z2 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
          = ( 'complex.complex/2' @ 0 @ 0 ) )
        & ( V_z1 != V_z2 )
        & ~ ( 'complex.real-number/1' @ V_z1 )
        & ~ ( 'complex.real-number/1' @ V_z2 ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_C: '2d.Shape'] :
        ( V_C
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_zt: '2d.Point'] :
            ? [V_t: 'R',V_z1: 'complex.Complex',V_z2: 'complex.Complex'] :
              ( ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z1 @ 2 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z1 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
                = ( 'complex.complex/2' @ 0 @ 0 ) )
              & ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z2 @ 2 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z2 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
                = ( 'complex.complex/2' @ 0 @ 0 ) )
              & ( V_z1 != V_z2 )
              & ( '</2' @ 0 @ ( 'complex.imaginary-part/1' @ V_z1 ) )
              & ( '</2' @ ( 'complex.imaginary-part/1' @ V_z2 ) @ 0 )
              & ~ ( 'complex.real-number/1' @ V_z1 )
              & ~ ( 'complex.real-number/1' @ V_z2 )
              & ( V_zt
                = ( 'complex.complex->point/1' @ V_z1 ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_W: '2d.Shape'] :
        ( V_W
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_w: '2d.Point'] :
            ? [V_t: 'R',V_z1: 'complex.Complex',V_z2: 'complex.Complex'] :
              ( ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z1 @ 2 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z1 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
                = ( 'complex.complex/2' @ 0 @ 0 ) )
              & ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_z2 @ 2 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_t ) @ V_z2 ) @ ( 'complex.real->complex/1' @ V_t ) ) )
                = ( 'complex.complex/2' @ 0 @ 0 ) )
              & ( V_z1 != V_z2 )
              & ( '</2' @ 0 @ ( 'complex.imaginary-part/1' @ V_z1 ) )
              & ( '</2' @ ( 'complex.imaginary-part/1' @ V_z2 ) @ 0 )
              & ~ ( 'complex.real-number/1' @ V_z1 )
              & ~ ( 'complex.real-number/1' @ V_z2 )
              & ( V_w
                = ( 'complex.complex->point/1' @ ( 'complex.//2' @ ( 'complex.*/2' @ 'complex.i/0' @ V_z1 ) @ ( 'complex.+/2' @ V_z1 @ ( 'complex.complex/2' @ 1 @ 0 ) ) ) ) ) ) ) ) )).

thf(p1_t_answer,answer,(
    ^ [V_t_dot_0: 'R'] :
      ( ( '</2' @ 0 @ V_t_dot_0 )
      & ( '</2' @ V_t_dot_0 @ 4 ) ) ),
    answer_to(p1_t_question,[])).

thf(p1_z_answer,answer,(
    ^ [V_z1_dot_0: 'complex.Complex'] :
      ( ( '</2' @ 0 @ V_t )
      & ( '</2' @ V_t @ 4 )
      & ( ( V_z1_dot_0
          = ( 'complex.//2' @ ( 'complex.+/2' @ ( 'complex.-/1' @ ( 'complex.real->complex/1' @ V_t ) ) @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ ( 'sqrt/1' @ ( '+/2' @ ( '-/1' @ ( '^/2' @ V_t @ 2 ) ) @ ( '*/2' @ 4 @ V_t ) ) ) ) @ 'complex.i/0' ) ) @ ( 'complex.real->complex/1' @ 2 ) ) )
        | ( V_z1_dot_0
          = ( 'complex.//2' @ ( 'complex.-/2' @ ( 'complex.-/1' @ ( 'complex.real->complex/1' @ V_t ) ) @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ ( 'sqrt/1' @ ( '+/2' @ ( '-/1' @ ( '^/2' @ V_t @ 2 ) ) @ ( '*/2' @ 4 @ V_t ) ) ) ) @ 'complex.i/0' ) ) @ ( 'complex.real->complex/1' @ 2 ) ) ) ) ) ),
    answer_to(p1_z_question,[])).

thf(p2_answer,answer,(
    ^ [V_C_dot_0: '2d.Shape'] :
      ( V_C_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_P: '2d.Point'] :
            ( ( '2d.on/2' @ V_P @ ( '2d.circle/2' @ ( '2d.point/2' @ -1 @ 0 ) @ 1 ) )
            & ( V_P
             != ( '2d.point/2' @ -2 @ 0 ) )
            & ( V_P != '2d.origin/0' )
            & ( '>/2' @ ( '2d.y-coord/1' @ V_P ) @ 0 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_W_dot_0: '2d.Shape'] :
      ( V_W_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_P: '2d.Point'] :
            ( ( '2d.on/2' @ V_P @ ( '2d.circle/2' @ ( '2d.point/2' @ 0 @ 1 ) @ 1 ) )
            & ( V_P
             != ( '2d.point/2' @ 0 @ 2 ) )
            & ( V_P != '2d.origin/0' )
            & ( '</2' @ ( '2d.x-coord/1' @ V_P ) @ 0 ) ) ) ) ),
    answer_to(p3_question,[])).
