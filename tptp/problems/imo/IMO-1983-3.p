%% DOMAIN:    Number Theory, number theory
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1983, Problem 3
%% SCORE:     7
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-18
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$ and $c$ be positive integers, no two of which have a common divisor
%% greater than $1$. Show that $2abc - ab - bc - ca$ is the largest integer which
%% cannot be expressed in the form $xbc + yca + zab$, where $x$, $y$ and $z$ are
%% non-negative integers.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  121 (   2 equality;  54 variable)
%            Maximal formula depth :   27 (  27 average)
%            Number of connectives :  118 (   2   ~;   0   |;  14   &; 101   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   10 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   4   !;   6   ?;   0   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   3 pred;    3 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_a: $int,V_b: $int,V_c: $int,V_n: $int] :
      ( ( ( $less @ 0 @ V_a )
        & ( $less @ 0 @ V_b )
        & ( $less @ 0 @ V_c )
        & ( 'int.are-coprime/2' @ V_a @ V_b )
        & ( 'int.are-coprime/2' @ V_b @ V_c )
        & ( 'int.are-coprime/2' @ V_c @ V_a )
        & ( $is_int @ V_n )
        & ~ ( ? [V_x: $int,V_y: $int,V_z: $int] :
                ( ( $lesseq @ 0 @ V_x )
                & ( $lesseq @ 0 @ V_y )
                & ( $lesseq @ 0 @ V_z )
                & ( V_n
                  = ( $sum @ ( $product @ V_x @ ( $product @ V_b @ V_c ) ) @ ( $sum @ ( $product @ V_y @ ( $product @ V_c @ V_a ) ) @ ( $product @ V_z @ ( $product @ V_a @ V_b ) ) ) ) ) ) ) )
     => ( ~ ( ? [V_x_dot_0: $int,V_y_dot_0: $int,V_z_dot_0: $int] :
                ( ( $lesseq @ 0 @ V_x_dot_0 )
                & ( $lesseq @ 0 @ V_y_dot_0 )
                & ( $lesseq @ 0 @ V_z_dot_0 )
                & ( ( $sum @ ( $product @ 2 @ ( $product @ V_a @ ( $product @ V_b @ V_c ) ) ) @ ( $sum @ ( $uminus @ ( $product @ V_a @ V_b ) ) @ ( $sum @ ( $uminus @ ( $product @ V_b @ V_c ) ) @ ( $uminus @ ( $product @ V_c @ V_a ) ) ) ) )
                  = ( $sum @ ( $product @ V_x_dot_0 @ ( $product @ V_b @ V_c ) ) @ ( $sum @ ( $product @ V_y_dot_0 @ ( $product @ V_c @ V_a ) ) @ ( $product @ V_z_dot_0 @ ( $product @ V_a @ V_b ) ) ) ) ) ) )
        & ( $lesseq @ V_n @ ( $sum @ ( $product @ 2 @ ( $product @ V_a @ ( $product @ V_b @ V_c ) ) ) @ ( $sum @ ( $uminus @ ( $product @ V_a @ V_b ) ) @ ( $sum @ ( $uminus @ ( $product @ V_b @ V_c ) ) @ ( $uminus @ ( $product @ V_c @ V_a ) ) ) ) ) ) ) ) )).

