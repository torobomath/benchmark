%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2009, Humanities Course, Problem 1
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2013-12-20
%%
%% <PROBLEM-TEXT>
%% Define $r = 1 +\sqrt{3} i$, where $i$ is the imaginary unit. For real
%% numbers $a$ and $b$, define the polynomial $P(x)$ as
%% $P(x)= x^4 + a x^3 + b x^2 - 8(\sqrt{3} + 1)x + 16$. Answer the
%% following questions:
%%
%% (1) Find the values of $a$ and $b$ such that $P({\gamma})= 0$.
%%
%% (2) For $a$ and $b$ found in (1), find all the complex numbers $x$
%% such that $P(x)= 0$ except ${\gamma}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  190 (  11 equality;  29 variable)
%            Maximal formula depth :   23 (  16 average)
%            Number of connectives :  167 (   1   ~;   2   |;   5   &; 159   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   6   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   0 pred;    4 func;    8 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ab: ( 'ListOf' @ $real )] :
      ? [V_a: $real,V_b: $real,V_r: 'complex.Complex'] :
        ( ( V_ab
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) )
        & ( V_r
          = ( 'complex.+/2' @ ( 'complex.real->complex/1' @ 1.0 ) @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ ( 'sqrt/1' @ 3.0 ) ) @ 'complex.i/0' ) ) )
        & ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_r @ 4.0 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_a ) @ ( 'complex.^/2' @ V_r @ 3.0 ) ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_b ) @ ( 'complex.^/2' @ V_r @ 2.0 ) ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ ( $uminus @ ( $product @ 8.0 @ ( $sum @ ( 'sqrt/1' @ 3.0 ) @ 1.0 ) ) ) ) @ V_r ) @ ( 'complex.complex/2' @ 16.0 @ 0.0 ) ) ) ) )
          = ( 'complex.complex/2' @ 0.0 @ 0.0 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ 'complex.Complex'
    @ ^ [V_rx: 'complex.Complex'] :
      ? [V_a: $real,V_b: $real,V_r: 'complex.Complex'] :
        ( ( V_r
          = ( 'complex.+/2' @ ( 'complex.real->complex/1' @ 1.0 ) @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ ( 'sqrt/1' @ 3.0 ) ) @ 'complex.i/0' ) ) )
        & ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_r @ 4.0 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_a ) @ ( 'complex.^/2' @ V_r @ 3.0 ) ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_b ) @ ( 'complex.^/2' @ V_r @ 2.0 ) ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ ( $uminus @ ( $product @ 8.0 @ ( $sum @ ( 'sqrt/1' @ 3.0 ) @ 1.0 ) ) ) ) @ V_r ) @ ( 'complex.complex/2' @ 16.0 @ 0.0 ) ) ) ) )
          = ( 'complex.complex/2' @ 0.0 @ 0.0 ) )
        & ( V_r != V_rx )
        & ( ( 'complex.+/2' @ ( 'complex.^/2' @ V_rx @ 4.0 ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_a ) @ ( 'complex.^/2' @ V_rx @ 3.0 ) ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ V_b ) @ ( 'complex.^/2' @ V_rx @ 2.0 ) ) @ ( 'complex.+/2' @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ ( $uminus @ ( $product @ 8.0 @ ( $sum @ ( 'sqrt/1' @ 3.0 ) @ 1.0 ) ) ) ) @ V_rx ) @ ( 'complex.complex/2' @ 16.0 @ 0.0 ) ) ) ) )
          = ( 'complex.complex/2' @ 0.0 @ 0.0 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $real )] :
      ( V_ab_dot_0
      = ( 'cons/2' @ $real @ ( $difference @ -2.0 @ ( $product @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) ) @ ( 'cons/2' @ $real @ ( $sum @ 8.0 @ ( $product @ 4.0 @ ( 'sqrt/1' @ 3.0 ) ) ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_rx_dot_0: 'complex.Complex'] :
      ( ( V_rx_dot_0
        = ( 'complex.-/2' @ ( 'complex.real->complex/1' @ 1.0 ) @ ( 'complex.*/2' @ ( 'complex.real->complex/1' @ ( 'sqrt/1' @ 3.0 ) ) @ 'complex.i/0' ) ) )
      | ( V_rx_dot_0
        = ( 'complex.+/2' @ ( 'complex.real->complex/1' @ ( 'sqrt/1' @ 3.0 ) ) @ 'complex.i/0' ) )
      | ( V_rx_dot_0
        = ( 'complex.-/2' @ ( 'complex.real->complex/1' @ ( 'sqrt/1' @ 3.0 ) ) @ 'complex.i/0' ) ) ) ),
    answer_to(p2_question,[])).

