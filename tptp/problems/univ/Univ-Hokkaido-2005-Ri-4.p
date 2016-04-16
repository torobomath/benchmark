%% DOMAIN:    DUP
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2005, Science Course, Problem 4
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-10-02
%%
%% <PROBLEM-TEXT>
%% Define the complex numbers $a_n$ ($n = 1, 2, \cdots$) as follows:
%% \[
%% a_1 = 1 + i, a_{n+1} = \frac{a_n}{2a_n - 3},
%% \]
%% where $i$ is the imaginary unit. Answer the following questions:
%% (1) Find the equation of the circle passing through the three
%% points $0$, $a_1$, and $a_2$ on the complex plane.
%% (2) Prove that all $a_n$ are on the circle found above.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  116 (   5 equality;  38 variable)
%            Maximal formula depth :   17 (  13 average)
%            Number of connectives :  103 (   0   ~;   0   |;  15   &;  85   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   3   !;   4   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   2 pred;    1 func;    6 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ 'complex.Complex'
    @ ^ [V_p: 'complex.Complex'] :
      ? [V_C: '2d.Shape',V_a_: ( $int > 'complex.Complex' )] :
        ( ( ( V_a_ @ 1 )
          = ( 'complex.+/2' @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) @ 'complex.i/0' ) )
        & ! [V_n: $int] :
            ( ( ( $is_int @ V_n )
              & ( $greatereq @ V_n @ 1 ) )
           => ( ( V_a_ @ ( $sum @ V_n @ 1 ) )
              = ( 'complex.//2' @ ( V_a_ @ V_n ) @ ( 'complex.-/2' @ ( 'complex.*/2' @ ( 'complex.complex/2' @ 2.0 @ 0.0 ) @ ( V_a_ @ V_n ) ) @ ( 'complex.complex/2' @ 3.0 @ 0.0 ) ) ) ) )
        & ( '2d.on/2' @ '2d.origin/0' @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( V_a_ @ 1 ) ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( V_a_ @ 2 ) ) @ V_C )
        & ( '2d.circle-type/1' @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_p ) @ V_C ) ) )).

thf(p2,conjecture,(
    ? [V_C: '2d.Shape',V_a_: ( $int > 'complex.Complex' )] :
      ( ( ( V_a_ @ 1 )
        = ( 'complex.+/2' @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) @ 'complex.i/0' ) )
      & ! [V_n_dot_0: $int] :
          ( ( ( $is_int @ V_n_dot_0 )
            & ( $greatereq @ V_n_dot_0 @ 1 ) )
         => ( ( V_a_ @ ( $sum @ V_n_dot_0 @ 1 ) )
            = ( 'complex.//2' @ ( V_a_ @ V_n_dot_0 ) @ ( 'complex.-/2' @ ( 'complex.*/2' @ ( 'complex.complex/2' @ 2.0 @ 0.0 ) @ ( V_a_ @ V_n_dot_0 ) ) @ ( 'complex.complex/2' @ 3.0 @ 0.0 ) ) ) ) )
      & ( '2d.on/2' @ '2d.origin/0' @ V_C )
      & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( V_a_ @ 1 ) ) @ V_C )
      & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( V_a_ @ 2 ) ) @ V_C )
      & ( '2d.circle-type/1' @ V_C )
      & ! [V_n: $int] :
          ( ( ( $is_int @ V_n )
            & ( $greatereq @ V_n @ 1 ) )
         => ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( V_a_ @ V_n ) ) @ V_C ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_p_dot_0: 'complex.Complex'] :
      ( 1.0
      = ( 'complex.abs/1' @ ( 'complex.-/2' @ V_p_dot_0 @ ( 'complex.complex/2' @ 1.0 @ 0.0 ) ) ) ) ),
    answer_to(p1_question,[])).

