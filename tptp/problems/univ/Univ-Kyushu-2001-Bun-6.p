%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2001, Humanities Course, Problem 6
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
%% (2) For the complex number $d$ other than $0$, find the figure drawn
%% by the point $z$ that satisfies
%% $d z(\overline{z} + 1)=\overline{d}\overline{z}(z + 1)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  190 (  19 equality;  71 variable)
%            Maximal formula depth :   28 (  21 average)
%            Number of connectives :  153 (   5   ~;   1   |;  26   &; 121   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   24 (   0 sgn;   0   !;   6   ?;   6   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_D_qustion,question,
    ( 'Find/1'
    @ ^ [V_Dz: '2d.Shape'] :
      ? [V_b: 'complex.Complex'] :
        ( ( 'real-number/1' @ V_a )
        & ( 'real-number/1' @ V_Reb )
        & ( 'real-number/1' @ V_Imb )
        & ( 'real-number/1' @ V_c )
        & ( V_a != 0 )
        & ( V_b
          = ( 'complex.complex/2' @ V_Reb @ V_Imb ) )
        & ( '>/2' @ ( '-/2' @ ( '^/2' @ ( 'complex.abs/1' @ V_b ) @ 2 ) @ ( '*/2' @ V_a @ V_c ) ) @ 0 )
        & ( V_Dz
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Pz: '2d.Point'] :
              ? [V_z: 'complex.Complex'] :
                ( ( V_Pz
                  = ( 'complex.complex->point/1' @ V_z ) )
                & ( ( 'complex.+/2' @ ( 'complex.+/2' @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_a ) @ V_z ) @ ( 'complex.conjugate/1' @ V_z ) ) @ ( 'complex.*/2' @ ( 'complex.conjugate/1' @ V_b ) @ V_z ) ) @ ( 'complex.*/2' @ V_b @ ( 'complex.conjugate/1' @ V_z ) ) ) @ ( 'complex.real->complex/1' @ V_c ) )
                  = ( 'complex.real->complex/1' @ 0 ) ) ) ) ) ) )).

thf(p2_D_qustion,question,
    ( 'Find/1'
    @ ^ [V_Dz: '2d.Shape'] :
      ? [V_d: 'complex.Complex'] :
        ( ( 'real-number/1' @ V_Red )
        & ( 'real-number/1' @ V_Imd )
        & ( V_d
          = ( 'complex.complex/2' @ V_Red @ V_Imd ) )
        & ( V_d
         != ( 'complex.complex/2' @ 0 @ 0 ) )
        & ( V_Dz
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Pz: '2d.Point'] :
              ? [V_z: 'complex.Complex'] :
                ( ( V_Pz
                  = ( 'complex.complex->point/1' @ V_z ) )
                & ( ( 'complex.*/2' @ ( 'complex.*/2' @ V_d @ V_z ) @ ( 'complex.+/2' @ ( 'complex.conjugate/1' @ V_z ) @ ( 'complex.real->complex/1' @ 1 ) ) )
                  = ( 'complex.*/2' @ ( 'complex.*/2' @ ( 'complex.conjugate/1' @ V_d ) @ ( 'complex.conjugate/1' @ V_z ) ) @ ( 'complex.+/2' @ V_z @ ( 'complex.real->complex/1' @ 1 ) ) ) ) ) ) ) ) )).

thf(p1_D_answer,answer,(
    ^ [V_Dz_dot_0: '2d.Shape'] :
    ? [V_b_dot_0: 'complex.Complex'] :
      ( ( 'real-number/1' @ V_a )
      & ( 'real-number/1' @ V_Reb )
      & ( 'real-number/1' @ V_Imb )
      & ( 'real-number/1' @ V_c )
      & ( V_a != 0 )
      & ( V_b_dot_0
        = ( 'complex.complex/2' @ V_Reb @ V_Imb ) )
      & ( '>/2' @ ( '-/2' @ ( '^/2' @ ( 'complex.abs/1' @ V_b_dot_0 ) @ 2 ) @ ( '*/2' @ V_a @ V_c ) ) @ 0 )
      & ( V_Dz_dot_0
        = ( '2d.circle/2' @ ( 'complex.complex->point/1' @ ( 'complex.//2' @ V_b_dot_0 @ ( 'complex.real->complex/1' @ ( '-/1' @ V_a ) ) ) ) @ ( '//2' @ ( 'sqrt/1' @ ( '-/2' @ ( '^/2' @ ( 'complex.abs/1' @ V_b_dot_0 ) @ 2 ) @ ( '*/2' @ V_a @ V_c ) ) ) @ ( 'abs/1' @ V_a ) ) ) ) ) ),
    answer_to(p1_D_question,[])).

thf(p2_D_answer,answer,(
    ^ [V_Dz_dot_0: '2d.Shape'] :
    ? [V_d_dot_0: 'complex.Complex'] :
      ( ( 'real-number/1' @ V_Red )
      & ( 'real-number/1' @ V_Imd )
      & ( V_d_dot_0
        = ( 'complex.complex/2' @ V_Red @ V_Imd ) )
      & ( V_d_dot_0
       != ( 'complex.complex/2' @ 0 @ 0 ) )
      & ( ( ( ( 'complex.imaginary-part/1' @ V_d_dot_0 )
            = 0 )
          & ( V_Dz_dot_0 = '2d.x-axis/0' ) )
        | ( ( ( 'complex.imaginary-part/1' @ V_d_dot_0 )
           != 0 )
          & ( V_Dz_dot_0
            = ( '2d.circle/2' @ ( 'complex.complex->point/1' @ ( 'complex.//2' @ ( 'complex.conjugate/1' @ V_d_dot_0 ) @ ( 'complex.-/2' @ V_d_dot_0 @ ( 'complex.conjugate/1' @ V_d_dot_0 ) ) ) ) @ ( 'complex.abs/1' @ ( 'complex.//2' @ ( 'complex.conjugate/1' @ V_d_dot_0 ) @ ( 'complex.-/2' @ V_d_dot_0 @ ( 'complex.conjugate/1' @ V_d_dot_0 ) ) ) ) ) ) ) ) ) ),
    answer_to(p2_D_question,[])).
