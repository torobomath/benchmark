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

% Syntax   : Number of formulae    :   14 (   0 unit;  10 type;   0 defn)
%            Number of atoms       :  248 (  21 equality;  29 variable)
%            Maximal formula depth :   22 (   7 average)
%            Number of connectives :  209 (   7   ~;   1   |;  16   &; 185   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   37 (  10   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   6   ?;   6   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    4 func;    2 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b1/0_type',type,(
    'b1/0': $real )).

thf('b2/0_type',type,(
    'b2/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf('d1/0_type',type,(
    'd1/0': $real )).

thf('d2/0_type',type,(
    'd2/0': $real )).

thf('p1/0_type',type,(
    'p1/0': $real )).

thf('p2/0_type',type,(
    'p2/0': $real )).

thf('q1/0_type',type,(
    'q1/0': $real )).

thf('q2/0_type',type,(
    'q2/0': $real )).

thf(p1_D_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_Dz: '2d.Shape'] :
        ( ( 'a/0' != 0.0 )
        & ( $greater @ ( $difference @ ( '^/2' @ ( 'complex.abs/1' @ ( 'complex.complex/2' @ 'b1/0' @ 'b2/0' ) ) @ 2.0 ) @ ( $product @ 'a/0' @ 'c/0' ) ) @ 0.0 )
        & ( V_Dz
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Pz: '2d.Point'] :
              ? [V_z: 'complex.Complex',V_b: 'complex.Complex'] :
                ( ( V_Pz
                  = ( 'complex.complex->point/1' @ V_z ) )
                & ( V_b
                  = ( 'complex.complex/2' @ 'b1/0' @ 'b2/0' ) )
                & ( ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ 'a/0' ) @ ( 'complex.*/2' @ V_z @ ( 'complex.conjugate/1' @ V_z ) ) ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.conjugate/1' @ V_b ) @ V_z ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ V_b @ ( 'complex.conjugate/1' @ V_z ) ) @ ( 'complex.real->complex/1' @ 'c/0' ) ) ) )
                  = ( 'complex.complex/2' @ 0.0 @ 0.0 ) ) ) ) ) ) )).

thf(p2_D_qustion,question,
    ( 'find/1' @ '2d.Shape'
    @ ^ [V_Dz: '2d.Shape'] :
        ( ( ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' )
         != ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
        & ( ( 'complex.complex/2' @ 'p1/0' @ 'p2/0' )
         != ( 'complex.complex/2' @ 'q1/0' @ 'q2/0' ) )
        & ( V_Dz
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_Pz: '2d.Point'] :
              ? [V_z: 'complex.Complex',V_d: 'complex.Complex',V_p: 'complex.Complex',V_q: 'complex.Complex'] :
                ( ( V_d
                  = ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' ) )
                & ( V_p
                  = ( 'complex.complex/2' @ 'p1/0' @ 'p2/0' ) )
                & ( V_q
                  = ( 'complex.complex/2' @ 'q1/0' @ 'q2/0' ) )
                & ( V_Pz
                  = ( 'complex.complex->point/1' @ V_z ) )
                & ( ( 'complex.*/2' @ V_d @ ( 'complex.*/2' @ ( 'complex.-/2' @ V_z @ V_p ) @ ( 'complex.-/2' @ ( 'complex.conjugate/1' @ V_z ) @ ( 'complex.conjugate/1' @ V_q ) ) ) )
                  = ( 'complex.*/2' @ ( 'complex.conjugate/1' @ V_d ) @ ( 'complex.*/2' @ ( 'complex.-/2' @ V_z @ V_q ) @ ( 'complex.-/2' @ ( 'complex.conjugate/1' @ V_z ) @ ( 'complex.conjugate/1' @ V_p ) ) ) ) ) ) ) ) ) )).

thf(p1_D_answer,answer,(
    ^ [V_Dz_dot_0: '2d.Shape'] :
      ( ( 'a/0' != 0.0 )
      & ( $greater @ ( $difference @ ( '^/2' @ ( 'complex.abs/1' @ ( 'complex.complex/2' @ 'b1/0' @ 'b2/0' ) ) @ 2.0 ) @ ( $product @ 'a/0' @ 'c/0' ) ) @ 0.0 )
      & ( V_Dz_dot_0
        = ( '2d.circle/2' @ ( 'complex.complex->point/1' @ ( 'complex.//2' @ ( 'complex.complex/2' @ 'b1/0' @ 'b2/0' ) @ ( 'complex.real->complex/1' @ ( $uminus @ 'a/0' ) ) ) ) @ ( $quotient @ ( 'sqrt/1' @ ( $difference @ ( '^/2' @ ( 'complex.abs/1' @ ( 'complex.complex/2' @ 'b1/0' @ 'b2/0' ) ) @ 2.0 ) @ ( $product @ 'a/0' @ 'c/0' ) ) ) @ ( 'abs/1' @ 'a/0' ) ) ) ) ) ),
    answer_to(p1_D_question,[])).

thf(p2_D_answer,answer,(
    ^ [V_Dz_dot_0: '2d.Shape'] :
      ( ( ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' )
       != ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
      & ( ( 'complex.complex/2' @ 'p1/0' @ 'p2/0' )
       != ( 'complex.complex/2' @ 'q1/0' @ 'q2/0' ) )
      & ( ( ( ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' )
            = ( 'complex.conjugate/1' @ ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' ) ) )
          & ( V_Dz_dot_0
            = ( '2d.line/2' @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ 'p1/0' @ 'p2/0' ) ) @ ( 'complex.complex->point/1' @ ( 'complex.complex/2' @ 'q1/0' @ 'q2/0' ) ) ) ) )
        | ( ( ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' )
           != ( 'complex.conjugate/1' @ ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' ) ) )
          & ( V_Dz_dot_0
            = ( '2d.circle/2' @ ( 'complex.complex->point/1' @ ( 'complex.//2' @ ( 'complex.-/2' @ ( 'complex.*/2' @ ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' ) @ ( 'complex.complex/2' @ 'p1/0' @ 'p2/0' ) ) @ ( 'complex.*/2' @ ( 'complex.conjugate/1' @ ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' ) ) @ ( 'complex.complex/2' @ 'q1/0' @ 'q2/0' ) ) ) @ ( 'complex.-/2' @ ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' ) @ ( 'complex.conjugate/1' @ ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' ) ) ) ) ) @ ( $quotient @ ( $product @ ( 'complex.abs/1' @ ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' ) ) @ ( 'complex.abs/1' @ ( 'complex.-/2' @ ( 'complex.complex/2' @ 'p1/0' @ 'p2/0' ) @ ( 'complex.complex/2' @ 'q1/0' @ 'q2/0' ) ) ) ) @ ( 'complex.abs/1' @ ( 'complex.-/2' @ ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' ) @ ( 'complex.conjugate/1' @ ( 'complex.complex/2' @ 'd1/0' @ 'd2/0' ) ) ) ) ) ) ) ) ) ) ),
    answer_to(p2_D_question,[])).

