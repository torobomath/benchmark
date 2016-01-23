%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2001, Science Course, Problem 4
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-28
%%
%% <PROBLEM-TEXT>
%% Consider the point $z$ on the complex plane.
%%
%% (1) If the real numbers $a$ and $c$, and the complex number $b$
%% satisfy $|b|^2 - a c > 0$, find the figure drawn by the point $z$
%% that satisfies
%% $a z\overline{z} +\overline{b} z + b\overline{z} + c = 0$ when
%% $a\not= 0$, where $\overline{z}$ is the complex number conjugate to
%% $z$.
%%
%% (2) For the complex number $d$ other than $0$ and the $2$ different
%% points $p$ and $q$ on the complex plane, find the figure drawn by the
%% point $z$ that satisfies
%% $d(z - p)(\overline{z} -\overline{q})=\overline{d}(z - q)(\overline{z} -\overline{p})$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  246 (  21 equality; 103 variable)
%            Maximal formula depth :   22 (  19 average)
%            Number of connectives :  207 (   7   ~;   1   |;  16   &; 183   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :)
%            Number of variables   :   32 (   0 sgn;   0   !;   6   ?;   6   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_D_qustion,question,
    ( 'Find/1'
    @ ^ [V_Dz: '2d.Shape'] :
        ( ( V_a != 0 )
        & ( '>/2' @ ( '-/2' @ ( '^/2' @ ( 'complex.abs/1' @ ( 'complex.complex/2' @ V_b1 @ V_b2 ) ) @ 2 ) @ ( '*/2' @ V_a @ V_c ) ) @ 0 )
        & ( V_Dz
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Pz: '2d.Point'] :
              ? [V_z: 'complex.Complex',V_b: 'complex.Complex'] :
                ( ( V_Pz
                  = ( 'complex.complex->point/1' @ V_z ) )
                & ( V_b
                  = ( 'complex.complex/2' @ V_b1 @ V_b2 ) )
                & ( ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_a ) @ ( 'complex.*/2' @ V_z @ ( 'complex.conjugate/1' @ V_z ) ) ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.conjugate/1' @ V_b ) @ V_z ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ V_b @ ( 'complex.conjugate/1' @ V_z ) ) @ ( 'complex.real->complex/1' @ V_c ) ) ) )
                  = ( 'complex.complex/2' @ 0 @ 0 ) ) ) ) ) ) )).

thf(p2_D_qustion,question,
    ( 'Find/1'
    @ ^ [V_Dz: '2d.Shape'] :
        ( ( ( 'complex.complex/2' @ V_d1 @ V_d2 )
         != ( 'complex.complex/2' @ 0 @ 0 ) )
        & ( ( 'complex.complex/2' @ V_p1 @ V_p2 )
         != ( 'complex.complex/2' @ V_q1 @ V_q2 ) )
        & ( V_Dz
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Pz: '2d.Point'] :
              ? [V_z: 'complex.Complex',V_d: 'complex.Complex',V_p: 'complex.Complex',V_q: 'complex.Complex'] :
                ( ( V_d
                  = ( 'complex.complex/2' @ V_d1 @ V_d2 ) )
                & ( V_p
                  = ( 'complex.complex/2' @ V_p1 @ V_p2 ) )
                & ( V_q
                  = ( 'complex.complex/2' @ V_q1 @ V_q2 ) )
                & ( V_Pz
                  = ( 'complex.complex->point/1' @ V_z ) )
                & ( ( 'complex.*/2' @ V_d @ ( 'complex.*/2' @ ( 'complex.-/2' @ V_z @ V_p ) @ ( 'complex.-/2' @ ( 'complex.conjugate/1' @ V_z ) @ ( 'complex.conjugate/1' @ V_q ) ) ) )
                  = ( 'complex.*/2' @ ( 'complex.conjugate/1' @ V_d ) @ ( 'complex.*/2' @ ( 'complex.-/2' @ V_z @ V_q ) @ ( 'complex.-/2' @ ( 'complex.conjugate/1' @ V_z ) @ ( 'complex.conjugate/1' @ V_p ) ) ) ) ) ) ) ) ) )).

thf(p1_D_answer,answer,(
    ^ [V_Dz_dot_0: '2d.Shape'] :
      ( ( V_a != 0 )
      & ( '>/2' @ ( '-/2' @ ( '^/2' @ ( 'complex.abs/1' @ ( 'complex.complex/2' @ V_b1 @ V_b2 ) ) @ 2 ) @ ( '*/2' @ V_a @ V_c ) ) @ 0 )
      & ( V_Dz_dot_0
        = ( '2d.circle/2' @ ( 'complex.complex->point/1' @ ( 'complex.//2' @ ( 'complex.complex/2' @ V_b1 @ V_b2 ) @ ( 'complex.real->complex/1' @ ( '-/1' @ V_a ) ) ) ) @ ( '//2' @ ( 'sqrt/1' @ ( '-/2' @ ( '^/2' @ ( 'complex.abs/1' @ ( 'complex.complex/2' @ V_b1 @ V_b2 ) ) @ 2 ) @ ( '*/2' @ V_a @ V_c ) ) ) @ ( 'abs/1' @ V_a ) ) ) ) ) ),
    answer_to(p1_D_question,[])).

thf(p2_D_answer,answer,(
    ^ [V_Dz_dot_0: '2d.Shape'] :
      ( ( ( 'complex.complex/2' @ V_d1 @ V_d2 )
       != ( 'complex.complex/2' @ 0 @ 0 ) )
      & ( ( 'complex.complex/2' @ V_p1 @ V_p2 )
       != ( 'complex.complex/2' @ V_q1 @ V_q2 ) )
      & ( ( ( ( 'complex.complex/2' @ V_d1 @ V_d2 )
            = ( 'complex.conjugate/1' @ ( 'complex.complex/2' @ V_d1 @ V_d2 ) ) )
          & ( V_Dz_dot_0
            = ( '2d.line/2' @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ V_p1 @ V_p2 ) ) @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ V_q1 @ V_q2 ) ) ) ) )
        | ( ( ( 'complex.complex/2' @ V_d1 @ V_d2 )
           != ( 'complex.conjugate/1' @ ( 'complex.complex/2' @ V_d1 @ V_d2 ) ) )
          & ( V_Dz_dot_0
            = ( '2d.circle/2' @ ( 'complex.complex->point/1' @ ( 'complex.//2' @ ( 'complex.-/2' @ ( 'complex.*/2' @ ( 'complex.complex/2' @ V_d1 @ V_d2 ) @ ( 'complex.complex/2' @ V_p1 @ V_p2 ) ) @ ( 'complex.*/2' @ ( 'complex.conjugate/1' @ ( 'complex.complex/2' @ V_d1 @ V_d2 ) ) @ ( 'complex.complex/2' @ V_q1 @ V_q2 ) ) ) @ ( 'complex.-/2' @ ( 'complex.complex/2' @ V_d1 @ V_d2 ) @ ( 'complex.conjugate/1' @ ( 'complex.complex/2' @ V_d1 @ V_d2 ) ) ) ) ) @ ( '//2' @ ( '*/2' @ ( 'complex.abs/1' @ ( 'complex.complex/2' @ V_d1 @ V_d2 ) ) @ ( 'complex.abs/1' @ ( 'complex.-/2' @ ( 'complex.complex/2' @ V_p1 @ V_p2 ) @ ( 'complex.complex/2' @ V_q1 @ V_q2 ) ) ) ) @ ( 'complex.abs/1' @ ( 'complex.-/2' @ ( 'complex.complex/2' @ V_d1 @ V_d2 ) @ ( 'complex.conjugate/1' @ ( 'complex.complex/2' @ V_d1 @ V_d2 ) ) ) ) ) ) ) ) ) ) ),
    answer_to(p2_D_question,[])).
