%% DOMAIN:    Algebra, inequalities
%% THEORY:    RCF
%% SOURCE:    International Mathematical Olympiad, 2005, Problem 3
%% SCORE:     7
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-11-19
%%
%% <PROBLEM-TEXT>
%% Let x, y, z be three positive reals such that xyz >= 1. Prove that
%% (x^5 - x^2)/(x^5 + y^2 + z^2) + (y^5 - y^2)/(x^2 + y^5 + z^2)
%% + (z^5 - z^2)/(x^2 + y^2 + z^5) >= 0.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   77 (   0 equality;  21 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   76 (   0   ~;   0   |;   3   &;  72   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   12 (   0   :;   0   =)
%            Number of variables   :    3 (   0 sgn;   3   !;   0   ?;   0   ^)
%                                         (   3   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    4 func;    4 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_x: $real,V_y: $real,V_z: $real] :
      ( ( ( $greater @ V_x @ 0.0 )
        & ( $greater @ V_y @ 0.0 )
        & ( $greater @ V_z @ 0.0 )
        & ( $greatereq @ ( $product @ V_x @ ( $product @ V_y @ V_z ) ) @ 1.0 ) )
     => ( $greatereq @ ( $sum @ ( $quotient @ ( $difference @ ( '^/2' @ V_x @ 5.0 ) @ ( '^/2' @ V_x @ 2.0 ) ) @ ( $sum @ ( '^/2' @ V_x @ 5.0 ) @ ( $sum @ ( '^/2' @ V_y @ 2.0 ) @ ( '^/2' @ V_z @ 2.0 ) ) ) ) @ ( $sum @ ( $quotient @ ( $difference @ ( '^/2' @ V_y @ 5.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( $sum @ ( '^/2' @ V_y @ 5.0 ) @ ( '^/2' @ V_z @ 2.0 ) ) ) ) @ ( $quotient @ ( $difference @ ( '^/2' @ V_z @ 5.0 ) @ ( '^/2' @ V_z @ 2.0 ) ) @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( $sum @ ( '^/2' @ V_y @ 2.0 ) @ ( '^/2' @ V_z @ 5.0 ) ) ) ) ) ) @ 0.0 ) ) )).

