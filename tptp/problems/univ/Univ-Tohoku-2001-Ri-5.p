%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2001, Science Course, Problem 5
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-23
%%
%% <PROBLEM-TEXT>
%% Assume that the complex numbers $z = x + y i$ and $w = u + v i$,
%% where $x$, $y$, $u$, and $v$ are real numbers, satisfy
%% $|z| = |w| = 1$ and $y v < 0$. Represent the necessary and sufficient
%% condition such that $|1 + z + w| < 1$ using $x$ and $u$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   74 (   6 equality;  24 variable)
%            Maximal formula depth :   21 (  17 average)
%            Number of connectives :   62 (   0   ~;   0   |;  11   &;  51   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   8   ?;   2   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   2 pred;    3 func;    2 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_xu: ( 'ListOf' @ $real )] :
      ? [V_z: 'complex.Complex',V_w: 'complex.Complex',V_x: $real,V_y: $real,V_u: $real,V_v: $real] :
        ( ( V_z
          = ( 'complex.complex/2' @ V_x @ V_y ) )
        & ( V_w
          = ( 'complex.complex/2' @ V_u @ V_v ) )
        & ( 1.0
          = ( 'complex.abs/1' @ V_z ) )
        & ( 1.0
          = ( 'complex.abs/1' @ V_w ) )
        & ( $greater @ 0.0 @ ( $product @ V_y @ V_v ) )
        & ( $less @ ( 'complex.abs/1' @ ( 'complex.+/2' @ ( 'complex.real->complex/1' @ 1.0 ) @ ( 'complex.+/2' @ V_z @ V_w ) ) ) @ 1.0 )
        & ( V_xu
          = ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_u @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_xu_dot_0: ( 'ListOf' @ $real )] :
    ? [V_x_dot_0: $real,V_u_dot_0: $real] :
      ( ( V_xu_dot_0
        = ( 'cons/2' @ $real @ V_x_dot_0 @ ( 'cons/2' @ $real @ V_u_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( $less @ ( $uminus @ 1.0 ) @ V_x_dot_0 )
      & ( $less @ V_x_dot_0 @ 1.0 )
      & ( $less @ ( $uminus @ 1.0 ) @ V_u_dot_0 )
      & ( $less @ V_u_dot_0 @ 1.0 )
      & ( $less @ ( $sum @ V_x_dot_0 @ V_u_dot_0 ) @ 0.0 ) ) ),
    answer_to(p_question,[])).

