%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2005, Science Course, Problem 6
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-09
%%
%% <PROBLEM-TEXT>
%% Let $r$ be a positive real number. In the $xyz$ space, find the
%% volume of the solid consisting of all the points that satisfy
%% $\begin{matrix} x^2+y^2\le r^2\\ y^2+z^2\ge r^2\\ z^2+x^2\le r^2\end{matrix}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   59 (   2 equality;   8 variable)
%            Maximal formula depth :   17 (  10 average)
%            Number of connectives :   53 (   0   ~;   0   |;   4   &;  49   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   1   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   0   ?;   5   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   3 pred;    4 func;    5 numbers)

include('axioms.ax').

thf('r/0_type',type,(
    'r/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_v: $real] :
        ( ( $less @ 0.0 @ 'r/0' )
        & ( V_v
          = ( '3d.volume-of/1'
            @ ( '3d.set-of-cfun/1'
              @ ^ [V_x: $real,V_y: $real,V_z: $real] :
                  ( ( $greatereq @ ( '^/2' @ 'r/0' @ 2.0 ) @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) )
                  & ( $lesseq @ ( '^/2' @ 'r/0' @ 2.0 ) @ ( $sum @ ( '^/2' @ V_y @ 2.0 ) @ ( '^/2' @ V_z @ 2.0 ) ) )
                  & ( $greatereq @ ( '^/2' @ 'r/0' @ 2.0 ) @ ( $sum @ ( '^/2' @ V_z @ 2.0 ) @ ( '^/2' @ V_x @ 2.0 ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_v_dot_0: $real] :
      ( ( $less @ 0.0 @ 'r/0' )
      & ( V_v_dot_0
        = ( $product @ ( $difference @ ( $product @ 8.0 @ ( 'sqrt/1' @ 2.0 ) ) @ ( $quotient @ 32.0 @ 3.0 ) ) @ ( '^/2' @ 'r/0' @ 3.0 ) ) ) ) ),
    answer_to(p_question,[])).

