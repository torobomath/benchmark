%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2001, Science Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-14
%%
%% <PROBLEM-TEXT>
%% For the complex numbers $z = x + y i$ and $w = u + v i$ ( $x$, $y$,
%% $u$, and $v$ are real numbers, and $i =\sqrt{-1}$ is the imaginary
%% unit), assume that $z\gg w$ represent that both $x\ge u$ and $y\ge v$
%% are true.
%%
%% (1) Find the range of the complex number $z$ that satisfies the
%% conditions $z^2\gg 3$ and $\overline{z}\gg -\frac{5}{\overline{z}}$,
%% and draw the range on the complex plane, where $\overline{z}$ is a
%% complex number conjugate to $z$.
%%
%% (2) Assuming that $z$ moves in the range found in (1), find the
%% minimum value of the absolute value $|z - 3 i|$ and the value of $z$
%% that gives the minimum value.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  219 (  12 equality;  63 variable)
%            Maximal formula depth :   20 (  14 average)
%            Number of connectives :  189 (   0   ~;   1   |;  21   &; 167   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   38 (   0   :)
%            Number of variables   :   25 (   0 sgn;   0   !;   8   ?;  17   ^)
%                                         (  25   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
      ? [V_f: 'complex.Complex' > 'complex.Complex' > $o] :
        ( V_D
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: 'R',V_y: 'R'] :
            ? [V_z: 'complex.Complex'] :
              ( ( ( 'complex.complex->point/1' @ V_z )
                = ( '2d.point/2' @ V_x @ V_y ) )
              & ( V_f
                = ( ^ [V_z_dot_0: 'complex.Complex',V_w: 'complex.Complex'] :
                      ( ( '>=/2' @ ( 'complex.real-part/1' @ V_z_dot_0 ) @ ( 'complex.real-part/1' @ V_w ) )
                      & ( '>=/2' @ ( 'complex.imaginary-part/1' @ V_z_dot_0 ) @ ( 'complex.imaginary-part/1' @ V_w ) ) ) ) )
              & ( 'PLamApp/2' @ ( 'LamApp/2' @ V_f @ ( 'complex.^/2' @ V_z @ 2 ) ) @ ( 'complex.real->complex/1' @ 3 ) )
              & ( 'PLamApp/2' @ ( 'LamApp/2' @ V_f @ ( 'complex.conjugate/1' @ V_z ) ) @ ( 'complex.//2' @ ( 'complex.real->complex/1' @ -5 ) @ ( 'complex.conjugate/1' @ V_z ) ) ) ) ) ) )).

thf(p2_z_qustion,question,
    ( 'Find/1'
    @ ^ [V_minz: 'complex.Complex'] :
      ? [V_f: 'complex.Complex' > 'complex.Complex' > $o,V_minI: 'R'] :
        ( ( V_f
          = ( ^ [V_z_dot_0: 'complex.Complex',V_w: 'complex.Complex'] :
                ( ( '>=/2' @ ( 'complex.real-part/1' @ V_z_dot_0 ) @ ( 'complex.real-part/1' @ V_w ) )
                & ( '>=/2' @ ( 'complex.imaginary-part/1' @ V_z_dot_0 ) @ ( 'complex.imaginary-part/1' @ V_w ) ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_I: 'R'] :
              ? [V_z: 'complex.Complex'] :
                ( ( 'PLamApp/2' @ ( 'LamApp/2' @ V_f @ ( 'complex.^/2' @ V_z @ 2 ) ) @ ( 'complex.real->complex/1' @ 3 ) )
                & ( 'PLamApp/2' @ ( 'LamApp/2' @ V_f @ ( 'complex.conjugate/1' @ V_z ) ) @ ( 'complex.//2' @ ( 'complex.real->complex/1' @ -5 ) @ ( 'complex.conjugate/1' @ V_z ) ) )
                & ( V_I
                  = ( 'complex.abs/1' @ ( 'complex.-/2' @ V_z @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ 3 ) @ 'complex.i/0' ) ) ) ) ) )
          @ V_minI )
        & ( 'PLamApp/2' @ ( 'LamApp/2' @ V_f @ ( 'complex.^/2' @ V_minz @ 2 ) ) @ ( 'complex.real->complex/1' @ 3 ) )
        & ( 'PLamApp/2' @ ( 'LamApp/2' @ V_f @ ( 'complex.conjugate/1' @ V_minz ) ) @ ( 'complex.//2' @ ( 'complex.real->complex/1' @ -5 ) @ ( 'complex.conjugate/1' @ V_minz ) ) )
        & ( V_minI
          = ( 'complex.abs/1' @ ( 'complex.-/2' @ V_minz @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ 3 ) @ 'complex.i/0' ) ) ) ) ) )).

thf(p2_I_qustion,question,
    ( 'Find/1'
    @ ^ [V_minI: 'R'] :
      ? [V_f: 'complex.Complex' > 'complex.Complex' > $o,V_minz: 'complex.Complex'] :
        ( ( V_f
          = ( ^ [V_z_dot_0: 'complex.Complex',V_w: 'complex.Complex'] :
                ( ( '>=/2' @ ( 'complex.real-part/1' @ V_z_dot_0 ) @ ( 'complex.real-part/1' @ V_w ) )
                & ( '>=/2' @ ( 'complex.imaginary-part/1' @ V_z_dot_0 ) @ ( 'complex.imaginary-part/1' @ V_w ) ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_I: 'R'] :
              ? [V_z: 'complex.Complex'] :
                ( ( 'PLamApp/2' @ ( 'LamApp/2' @ V_f @ ( 'complex.^/2' @ V_z @ 2 ) ) @ ( 'complex.real->complex/1' @ 3 ) )
                & ( 'PLamApp/2' @ ( 'LamApp/2' @ V_f @ ( 'complex.conjugate/1' @ V_z ) ) @ ( 'complex.//2' @ ( 'complex.real->complex/1' @ -5 ) @ ( 'complex.conjugate/1' @ V_z ) ) )
                & ( V_I
                  = ( 'complex.abs/1' @ ( 'complex.-/2' @ V_z @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ 3 ) @ 'complex.i/0' ) ) ) ) ) )
          @ V_minI )
        & ( 'PLamApp/2' @ ( 'LamApp/2' @ V_f @ ( 'complex.^/2' @ V_minz @ 2 ) ) @ ( 'complex.real->complex/1' @ 3 ) )
        & ( 'PLamApp/2' @ ( 'LamApp/2' @ V_f @ ( 'complex.conjugate/1' @ V_minz ) ) @ ( 'complex.//2' @ ( 'complex.real->complex/1' @ -5 ) @ ( 'complex.conjugate/1' @ V_minz ) ) )
        & ( V_minI
          = ( 'complex.abs/1' @ ( 'complex.-/2' @ V_minz @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ 3 ) @ 'complex.i/0' ) ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( ( '<=/2' @ 0 @ V_x_dot_0 )
        & ( '<=/2' @ 3 @ ( '-/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '^/2' @ V_y_dot_0 @ 2 ) ) )
        & ( ( V_y_dot_0 = 0 )
          | ( ( '</2' @ 0 @ V_y_dot_0 )
            & ( '<=/2' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '^/2' @ V_y_dot_0 @ 2 ) ) @ 5 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_z_answer,answer,(
    ^ [V_minz_dot_0: 'complex.Complex'] :
      ( V_minz_dot_0
      = ( 'complex.complex/2' @ 2 @ 1 ) ) ),
    answer_to(p2_z_question,[])).

thf(p2_I_answer,answer,(
    ^ [V_minI_dot_0: 'R'] :
      ( V_minI_dot_0
      = ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) ) ),
    answer_to(p2_I_question,[])).
