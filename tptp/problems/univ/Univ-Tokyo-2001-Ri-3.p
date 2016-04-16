%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2001, Science Course, Problem 3
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2013-12-19
%%
%% <PROBLEM-TEXT>
%% For the real number $t>1$, let $a(t)$ be the area of the triangle on
%% the $xy$ plane whose vertices are the points $O(0, 0)$, $P(1, 1)$,
%% and $Q(t, \frac{1}{t})$, and let $b(t)$ be the area of the region
%% enclosed by the line segment $OP$ and $OQ$, and the hyperbola
%% $x y=1$. Assume that $c(t)=\frac{b(t)}{a(t)}$, then prove that the
%% function $c()$ always decreases in the range of $t>1$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   50 (   1 equality;  10 variable)
%            Maximal formula depth :   22 (  22 average)
%            Number of connectives :   47 (   0   ~;   0   |;   0   &;  46   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   1   !;   0   ?;   4   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    4 (   1 pred;    2 func;    1 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_t: $real] :
      ( ( $greater @ V_t @ 1.0 )
     => ( 'decreasing-at/2'
        @ ( 'fun/1'
          @ ^ [V_t_dot_0: $real] :
              ( $quotient
              @ ( ^ [V_t_dot_2: $real] :
                    ( '2d.area-of/1' @ ( '2d.triangle/3' @ '2d.origin/0' @ ( '2d.point/2' @ 1.0 @ 1.0 ) @ ( '2d.point/2' @ V_t_dot_2 @ ( $quotient @ 1.0 @ V_t_dot_2 ) ) ) )
                @ V_t_dot_0 )
              @ ( ^ [V_t_dot_1: $real] :
                    ( '2d.area-of/1'
                    @ ( '2d.shape-enclosed-by/1'
                      @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ '2d.origin/0' @ ( '2d.point/2' @ 1.0 @ 1.0 ) )
                        @ ( 'cons/2' @ '2d.Shape' @ ( '2d.seg/2' @ '2d.origin/0' @ ( '2d.point/2' @ V_t_dot_1 @ ( $quotient @ 1.0 @ V_t_dot_1 ) ) )
                          @ ( 'cons/2' @ '2d.Shape'
                            @ ( '2d.shape-of-cpfun/1'
                              @ ^ [V_p: '2d.Point'] :
                                  ( 1.0
                                  = ( $product @ ( '2d.x-coord/1' @ V_p ) @ ( '2d.y-coord/1' @ V_p ) ) ) )
                            @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
                @ V_t_dot_0 ) ) )
        @ V_t ) ) )).

