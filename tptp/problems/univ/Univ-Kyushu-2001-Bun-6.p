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

% Syntax   : Number of formulae    :   10 (   0 unit;   6 type;   0 defn)
%            Number of atoms       :  192 (  19 equality;  39 variable)
%            Maximal formula depth :   28 (  10 average)
%            Number of connectives :  155 (   5   ~;   1   |;  26   &; 123   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   36 (   6   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   6   ?;   6   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    4 func;    3 numbers)

include('axioms.ax').

thf('Imb/0_type',type,(
    'Imb/0': $real )).

thf('Imd/0_type',type,(
    'Imd/0': $real )).

thf('Reb/0_type',type,(
    'Reb/0': $real )).

thf('Red/0_type',type,(
    'Red/0': $real )).

thf('a/0_type',type,(
    'a/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf(p1_D_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_Dz: '2d.Shape'] :
      ? [V_b: 'complex.Complex'] :
        ( ( 'real-number/1' @ 'a/0' )
        & ( 'real-number/1' @ 'Reb/0' )
        & ( 'real-number/1' @ 'Imb/0' )
        & ( 'real-number/1' @ 'c/0' )
        & ( 'a/0' != 0.0 )
        & ( V_b
          = ( 'complex.complex/2' @ 'Reb/0' @ 'Imb/0' ) )
        & ( $greater @ ( $difference @ ( '^/2' @ ( 'complex.abs/1' @ V_b ) @ 2.0 ) @ ( $product @ 'a/0' @ 'c/0' ) ) @ 0.0 )
        & ( V_Dz
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Pz: '2d.Point'] :
              ? [V_z: 'complex.Complex'] :
                ( ( V_Pz
                  = ( 'complex.complex->point/1' @ V_z ) )
                & ( ( 'complex.+/2' @ ( 'complex.+/2' @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ 'a/0' ) @ V_z ) @ ( 'complex.conjugate/1' @ V_z ) ) @ ( 'complex.*/2' @ ( 'complex.conjugate/1' @ V_b ) @ V_z ) ) @ ( 'complex.*/2' @ V_b @ ( 'complex.conjugate/1' @ V_z ) ) ) @ ( 'complex.real->complex/1' @ 'c/0' ) )
                  = ( 'complex.real->complex/1' @ 0.0 ) ) ) ) ) ) )).

thf(p2_D_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_Dz: '2d.Shape'] :
      ? [V_d: 'complex.Complex'] :
        ( ( 'real-number/1' @ 'Red/0' )
        & ( 'real-number/1' @ 'Imd/0' )
        & ( V_d
          = ( 'complex.complex/2' @ 'Red/0' @ 'Imd/0' ) )
        & ( V_d
         != ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
        & ( V_Dz
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Pz: '2d.Point'] :
              ? [V_z: 'complex.Complex'] :
                ( ( V_Pz
                  = ( 'complex.complex->point/1' @ V_z ) )
                & ( ( 'complex.*/2' @ ( 'complex.*/2' @ V_d @ V_z ) @ ( 'complex.+/2' @ ( 'complex.conjugate/1' @ V_z ) @ ( 'complex.real->complex/1' @ 1.0 ) ) )
                  = ( 'complex.*/2' @ ( 'complex.*/2' @ ( 'complex.conjugate/1' @ V_d ) @ ( 'complex.conjugate/1' @ V_z ) ) @ ( 'complex.+/2' @ V_z @ ( 'complex.real->complex/1' @ 1.0 ) ) ) ) ) ) ) ) )).

thf(p1_D_answer,answer,(
    ^ [V_Dz_dot_0: '2d.Shape'] :
    ? [V_b_dot_0: 'complex.Complex'] :
      ( ( 'real-number/1' @ 'a/0' )
      & ( 'real-number/1' @ 'Reb/0' )
      & ( 'real-number/1' @ 'Imb/0' )
      & ( 'real-number/1' @ 'c/0' )
      & ( 'a/0' != 0.0 )
      & ( V_b_dot_0
        = ( 'complex.complex/2' @ 'Reb/0' @ 'Imb/0' ) )
      & ( $greater @ ( $difference @ ( '^/2' @ ( 'complex.abs/1' @ V_b_dot_0 ) @ 2.0 ) @ ( $product @ 'a/0' @ 'c/0' ) ) @ 0.0 )
      & ( V_Dz_dot_0
        = ( '2d.circle/2' @ ( 'complex.complex->point/1' @ ( 'complex.//2' @ V_b_dot_0 @ ( 'complex.real->complex/1' @ ( $uminus @ 'a/0' ) ) ) ) @ ( $quotient @ ( 'sqrt/1' @ ( $difference @ ( '^/2' @ ( 'complex.abs/1' @ V_b_dot_0 ) @ 2.0 ) @ ( $product @ 'a/0' @ 'c/0' ) ) ) @ ( 'abs/1' @ 'a/0' ) ) ) ) ) ),
    answer_to(p1_D_question,[])).

thf(p2_D_answer,answer,(
    ^ [V_Dz_dot_0: '2d.Shape'] :
    ? [V_d_dot_0: 'complex.Complex'] :
      ( ( 'real-number/1' @ 'Red/0' )
      & ( 'real-number/1' @ 'Imd/0' )
      & ( V_d_dot_0
        = ( 'complex.complex/2' @ 'Red/0' @ 'Imd/0' ) )
      & ( V_d_dot_0
       != ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
      & ( ( ( ( 'complex.imaginary-part/1' @ V_d_dot_0 )
            = 0.0 )
          & ( V_Dz_dot_0 = '2d.x-axis/0' ) )
        | ( ( ( 'complex.imaginary-part/1' @ V_d_dot_0 )
           != 0.0 )
          & ( V_Dz_dot_0
            = ( '2d.circle/2' @ ( 'complex.complex->point/1' @ ( 'complex.//2' @ ( 'complex.conjugate/1' @ V_d_dot_0 ) @ ( 'complex.-/2' @ V_d_dot_0 @ ( 'complex.conjugate/1' @ V_d_dot_0 ) ) ) ) @ ( 'complex.abs/1' @ ( 'complex.//2' @ ( 'complex.conjugate/1' @ V_d_dot_0 ) @ ( 'complex.-/2' @ V_d_dot_0 @ ( 'complex.conjugate/1' @ V_d_dot_0 ) ) ) ) ) ) ) ) ) ),
    answer_to(p2_D_question,[])).

