%% DOMAIN:    Algebra, simultaneous equations
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 1961, Problem 1
%% SCORE:     6
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-16
%%
%% <PROBLEM-TEXT>
%% Solve the system of equations:
%% \[     x+y+z = a            \]
%% \[     x^2 +y^2 +z^2 = b^2  \]
%% \[     xy = z^2             \]
%% where $a$ and $b$ are constants. Give the conditions that $a$ and $b$ must satisfy
%% so that $x$, $y$, $z$ (the solutions of the system) are distinct positive numbers.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   81 (   8 equality;  30 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :   68 (   3   ~;   0   |;  11   &;  54   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   7   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   2 pred;    2 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ab: ( 'ListOf' @ $real )] :
      ? [V_a: $real,V_b: $real,V_x: $real,V_y: $real,V_z: $real] :
        ( ( V_ab
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) )
        & ( ( $sum @ V_x @ ( $sum @ V_y @ V_z ) )
          = V_a )
        & ( ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( $sum @ ( '^/2' @ V_y @ 2.0 ) @ ( '^/2' @ V_z @ 2.0 ) ) )
          = ( '^/2' @ V_b @ 2.0 ) )
        & ( ( $product @ V_x @ V_y )
          = ( '^/2' @ V_z @ 2.0 ) )
        & ( $greater @ V_x @ 0.0 )
        & ( $greater @ V_y @ 0.0 )
        & ( $greater @ V_z @ 0.0 )
        & ( V_x != V_y )
        & ( V_y != V_z )
        & ( V_x != V_z ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $real )] :
    ? [V_a_dot_0: $real,V_b_dot_0: $real] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( $less @ ( 'abs/1' @ V_b_dot_0 ) @ V_a_dot_0 )
      & ( $less @ V_a_dot_0 @ ( $product @ ( 'sqrt/1' @ 3.0 ) @ ( 'abs/1' @ V_b_dot_0 ) ) ) ) ),
    answer_to(p_question,[])).

