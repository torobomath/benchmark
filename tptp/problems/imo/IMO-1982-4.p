%% DOMAIN:    Number Theory, number theory
%% THEORY:    PA
%% SOURCE:    International Mathematical Olympiad, 1982, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-11-20
%%
%% <PROBLEM-TEXT>
%% Prove that if $n$ is a positive integer such that the equation
%% ¥[
%% x^3 -3xy^2 + y^3 = n
%% ¥]
%% has a solution in  integers $(x, y)$, then it has at least three such solutions.
%% Show that the equation has no solutions in integers when $n = 2891$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  121 (   8 equality;  37 variable)
%            Maximal formula depth :   22 (  17 average)
%            Number of connectives :  107 (   4   ~;   0   |;   6   &;  96   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   11 (   0   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   3   !;   8   ?;   0   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    3 func;    4 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_n: $int] :
      ( ( ( $greater @ V_n @ 0 )
        & ? [V_x: $int,V_y: $int] :
            ( ( $sum @ ( $difference @ ( 'int.^/2' @ V_x @ 3 ) @ ( $product @ 3 @ ( $product @ V_x @ ( 'int.^/2' @ V_y @ 2 ) ) ) ) @ ( 'int.^/2' @ V_y @ 3 ) )
            = V_n ) )
     => ? [V_x1: $int,V_y1: $int,V_x2: $int,V_y2: $int,V_x3: $int,V_y3: $int] :
          ( ( ( 'pair/2' @ $int @ $int @ V_x1 @ V_y1 )
           != ( 'pair/2' @ $int @ $int @ V_x2 @ V_y2 ) )
          & ( ( 'pair/2' @ $int @ $int @ V_x1 @ V_y1 )
           != ( 'pair/2' @ $int @ $int @ V_x3 @ V_y3 ) )
          & ( ( 'pair/2' @ $int @ $int @ V_x2 @ V_y2 )
           != ( 'pair/2' @ $int @ $int @ V_x3 @ V_y3 ) )
          & ( ( $sum @ ( $difference @ ( 'int.^/2' @ V_x1 @ 3 ) @ ( $product @ 3 @ ( $product @ V_x1 @ ( 'int.^/2' @ V_y1 @ 2 ) ) ) ) @ ( 'int.^/2' @ V_y1 @ 3 ) )
            = V_n )
          & ( ( $sum @ ( $difference @ ( 'int.^/2' @ V_x2 @ 3 ) @ ( $product @ 3 @ ( $product @ V_x2 @ ( 'int.^/2' @ V_y2 @ 2 ) ) ) ) @ ( 'int.^/2' @ V_y2 @ 3 ) )
            = V_n )
          & ( ( $sum @ ( $difference @ ( 'int.^/2' @ V_x3 @ 3 ) @ ( $product @ 3 @ ( $product @ V_x3 @ ( 'int.^/2' @ V_y3 @ 2 ) ) ) ) @ ( 'int.^/2' @ V_y3 @ 3 ) )
            = V_n ) ) ) )).

thf(p2,conjecture,(
    ! [V_x: $int,V_y: $int] :
      ( ( $sum @ ( $difference @ ( 'int.^/2' @ V_x @ 3 ) @ ( $product @ 3 @ ( $product @ V_x @ ( 'int.^/2' @ V_y @ 2 ) ) ) ) @ ( 'int.^/2' @ V_y @ 3 ) )
     != 2891 ) )).

