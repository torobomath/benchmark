%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2011, Science Course, Problem 5
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-16
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a real number, and $z$, a complex number other than $0$.
%% Represent the complex number conjugate to $z$ as $\overline{z}$.
%%
%% (1) Find $z$ that satisfies the following: $z - 1 -\frac{a}{z} = 0$.
%%
%% (2) Find the range of $a$ such that there exists $z$ that satisfies
%% the following: $\overline{z} + 1 -\frac{a}{z} = 0$.
%%
%% (3) Find the range of $a$ such that there exists $z$ that satisfies
%% the following: $z(\overline{z})^2 +\overline{z} -\frac{a}{z} = 0$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  195 (  14 equality;  22 variable)
%            Maximal formula depth :   17 (   9 average)
%            Number of connectives :  164 (   3   ~;   6   |;   8   &; 147   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   1   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   2   ?;   6   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   4 pred;    5 func;    4 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ 'complex.Complex'
    @ ^ [V_z: 'complex.Complex'] :
        ( ( V_z
         != ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
        & ( ( 'complex.+/2' @ V_z @ ( 'complex.+/2' @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) @ ( 'complex.-/1' @ ( 'complex.//2' @ ( 'complex.real->complex/1' @ 'a/0' ) @ V_z ) ) ) )
          = ( 'complex.complex/2' @ 0.0 @ 0.0 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_z: 'complex.Complex'] :
        ( ( V_z
         != ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
        & ( ( 'complex.+/2' @ ( 'complex.conjugate/1' @ V_z ) @ ( 'complex.+/2' @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) @ ( 'complex.-/1' @ ( 'complex.//2' @ ( 'complex.real->complex/1' @ V_a ) @ V_z ) ) ) )
          = ( 'complex.complex/2' @ 0.0 @ 0.0 ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_z: 'complex.Complex'] :
        ( ( V_z
         != ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
        & ( ( 'complex.+/2' @ ( 'complex.*/2' @ V_z @ ( 'complex.^/2' @ ( 'complex.conjugate/1' @ V_z ) @ 2.0 ) ) @ ( 'complex.+/2' @ ( 'complex.conjugate/1' @ V_z ) @ ( 'complex.-/1' @ ( 'complex.//2' @ ( 'complex.real->complex/1' @ V_a ) @ V_z ) ) ) )
          = ( 'complex.complex/2' @ 0.0 @ 0.0 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_z_dot_0: 'complex.Complex'] :
      ( ( ( $lesseq @ ( $quotient @ ( $uminus @ 1.0 ) @ 4.0 ) @ 'a/0' )
        & ( $less @ 'a/0' @ 0.0 )
        & ( ( V_z_dot_0
            = ( 'complex.real->complex/1' @ ( $quotient @ ( $sum @ ( $uminus @ 1.0 ) @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( $product @ 4.0 @ 'a/0' ) ) ) ) @ 2.0 ) ) )
          | ( V_z_dot_0
            = ( 'complex.real->complex/1' @ ( $quotient @ ( $difference @ ( $uminus @ 1.0 ) @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( $product @ 4.0 @ 'a/0' ) ) ) ) @ 2.0 ) ) ) ) )
      | ( ( $less @ 0.0 @ 'a/0' )
        & ( ( V_z_dot_0
            = ( 'complex.real->complex/1' @ ( $quotient @ ( $sum @ ( $uminus @ 1.0 ) @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( $product @ 4.0 @ 'a/0' ) ) ) ) @ 2.0 ) ) )
          | ( V_z_dot_0
            = ( 'complex.real->complex/1' @ ( $quotient @ ( $difference @ ( $uminus @ 1.0 ) @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( $product @ 4.0 @ 'a/0' ) ) ) ) @ 2.0 ) ) ) ) )
      | ( ( $less @ 'a/0' @ ( $quotient @ ( $uminus @ 1.0 ) @ 4.0 ) )
        & ( ( V_z_dot_0
            = ( 'complex.complex/2' @ ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) @ ( $quotient @ ( 'sqrt/1' @ ( $uminus @ ( $sum @ 1.0 @ ( $product @ 4.0 @ 'a/0' ) ) ) ) @ 2.0 ) ) )
          | ( V_z_dot_0
            = ( 'complex.complex/2' @ ( $uminus @ ( $quotient @ 1.0 @ 2.0 ) ) @ ( $quotient @ ( $uminus @ ( 'sqrt/1' @ ( $uminus @ ( $sum @ 1.0 @ ( $product @ 4.0 @ 'a/0' ) ) ) ) ) @ 2.0 ) ) ) ) )
      | ( ( 'a/0' = 0.0 )
        & ( V_z_dot_0
          = ( 'complex.real->complex/1' @ ( $uminus @ 1.0 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( $greatereq @ V_a_dot_0 @ ( $quotient @ ( $uminus @ 1.0 ) @ 4.0 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( $greater @ V_a_dot_0 @ 0.0 ) ),
    answer_to(p3_question,[])).

