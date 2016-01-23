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

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  192 (  14 equality;  34 variable)
%            Maximal formula depth :   17 (  10 average)
%            Number of connectives :  161 (   3   ~;   6   |;   8   &; 144   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   10 (   1 sgn;   0   !;   2   ?;   6   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_z: 'complex.Complex'] :
        ( ( V_z
         != ( 'complex.complex/2' @ 0 @ 0 ) )
        & ( ( 'complex.+/2' @ V_z @ ( 'complex.+/2' @ ( 'complex.complex/2' @ 1 @ 0 ) @ ( 'complex.-/1' @ ( 'complex.//2' @ ( 'complex.real->complex/1' @ V_a ) @ V_z ) ) ) )
          = ( 'complex.complex/2' @ 0 @ 0 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_z: 'complex.Complex'] :
        ( ( V_z
         != ( 'complex.complex/2' @ 0 @ 0 ) )
        & ( ( 'complex.+/2' @ ( 'complex.conjugate/1' @ V_z ) @ ( 'complex.+/2' @ ( 'complex.complex/2' @ 1 @ 0 ) @ ( 'complex.-/1' @ ( 'complex.//2' @ ( 'complex.real->complex/1' @ V_a ) @ V_z ) ) ) )
          = ( 'complex.complex/2' @ 0 @ 0 ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_z: 'complex.Complex'] :
        ( ( V_z
         != ( 'complex.complex/2' @ 0 @ 0 ) )
        & ( ( 'complex.+/2' @ ( 'complex.*/2' @ V_z @ ( 'complex.^/2' @ ( 'complex.conjugate/1' @ V_z ) @ 2 ) ) @ ( 'complex.+/2' @ ( 'complex.conjugate/1' @ V_z ) @ ( 'complex.-/1' @ ( 'complex.//2' @ ( 'complex.real->complex/1' @ V_a ) @ V_z ) ) ) )
          = ( 'complex.complex/2' @ 0 @ 0 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_z_dot_0: 'complex.Complex'] :
      ( ( ( '<=/2' @ ( '//2' @ ( '-/1' @ 1 ) @ 4 ) @ V_a )
        & ( '</2' @ V_a @ 0 )
        & ( ( V_z_dot_0
            = ( 'complex.real->complex/1' @ ( '//2' @ ( '+/2' @ ( '-/1' @ 1 ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '*/2' @ 4 @ V_a ) ) ) ) @ 2 ) ) )
          | ( V_z_dot_0
            = ( 'complex.real->complex/1' @ ( '//2' @ ( '-/2' @ ( '-/1' @ 1 ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '*/2' @ 4 @ V_a ) ) ) ) @ 2 ) ) ) ) )
      | ( ( '</2' @ 0 @ V_a )
        & ( ( V_z_dot_0
            = ( 'complex.real->complex/1' @ ( '//2' @ ( '+/2' @ ( '-/1' @ 1 ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '*/2' @ 4 @ V_a ) ) ) ) @ 2 ) ) )
          | ( V_z_dot_0
            = ( 'complex.real->complex/1' @ ( '//2' @ ( '-/2' @ ( '-/1' @ 1 ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '*/2' @ 4 @ V_a ) ) ) ) @ 2 ) ) ) ) )
      | ( ( '</2' @ V_a @ ( '//2' @ ( '-/1' @ 1 ) @ 4 ) )
        & ( ( V_z_dot_0
            = ( 'complex.complex/2' @ ( '-/1' @ ( '//2' @ 1 @ 2 ) ) @ ( '//2' @ ( 'sqrt/1' @ ( '-/1' @ ( '+/2' @ 1 @ ( '*/2' @ 4 @ V_a ) ) ) ) @ 2 ) ) )
          | ( V_z_dot_0
            = ( 'complex.complex/2' @ ( '-/1' @ ( '//2' @ 1 @ 2 ) ) @ ( '//2' @ ( '-/1' @ ( 'sqrt/1' @ ( '-/1' @ ( '+/2' @ 1 @ ( '*/2' @ 4 @ V_a ) ) ) ) ) @ 2 ) ) ) ) )
      | ( ( V_a = 0 )
        & ( V_z_dot_0
          = ( 'complex.real->complex/1' @ ( '-/1' @ 1 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( '>=/2' @ V_a_dot_0 @ ( '//2' @ ( '-/1' @ 1 ) @ 4 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( '>/2' @ V_a_dot_0 @ 0 ) ),
    answer_to(p3_question,[])).
