%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2013, Humanities Course, Problem 1
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-06-30
%%
%% <PROBLEM-TEXT>
%% Prove that the distance between the point $(x_0, y_0)$ and the
%% straight line $a x + b y + c = 0$ is
%% $\frac{|a x_0 + b y_0 + c|}{\sqrt{a^2+b^2}}$ on the $x y$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   44 (   4 equality;  16 variable)
%            Maximal formula depth :   18 (  18 average)
%            Number of connectives :   37 (   2   ~;   0   |;   1   &;  33   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   5   !;   0   ?;   1   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   0 pred;    3 func;    2 numbers)

include('axioms.ax').

thf(p,conjecture,(
    ! [V_x0: $real,V_y0: $real,V_a: $real,V_b: $real,V_c: $real] :
      ( ( ( V_a != 0.0 )
        & ( V_b != 0.0 ) )
     => ( ( '2d.point-shape-distance/2' @ ( '2d.point/2' @ V_x0 @ V_y0 )
          @ ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( 0.0
                = ( $sum @ ( $sum @ ( $product @ V_a @ ( '2d.x-coord/1' @ V_P ) ) @ ( $product @ V_b @ ( '2d.y-coord/1' @ V_P ) ) ) @ V_c ) ) ) )
        = ( $quotient @ ( 'abs/1' @ ( $sum @ ( $product @ V_b @ V_y0 ) @ ( $sum @ ( $product @ V_a @ V_x0 ) @ V_c ) ) ) @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ ( '^/2' @ V_b @ 2.0 ) ) ) ) ) ) )).

