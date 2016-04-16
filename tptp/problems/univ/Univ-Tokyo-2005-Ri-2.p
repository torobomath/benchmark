%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2005, Science Course, Problem 2
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-09
%%
%% <PROBLEM-TEXT>
%% For any complex number $z$ that satisfies $|z|>\frac{5}{4}$, let $T$
%% be the set of all the complex numbers $w$ that are not represented as
%% $w=z^2-2 z$. That is,
%% $T=\{If w| w=z^2-2 z, then |z|\le\frac{5}{4}\}$. Then, find the value
%% of the complex number $w$ belonging to $T$ such that the absolute
%% value $|w|$ is the maximum.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   56 (   5 equality;  14 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :   44 (   0   ~;   0   |;   3   &;  39   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   2   !;   2   ?;   3   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    2 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ 'complex.Complex'
    @ ^ [V_w: 'complex.Complex'] :
      ? [V_max_abs: $real] :
        ( ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_w_abs: $real] :
              ? [V_w1: 'complex.Complex'] :
                ( ! [V_z_dot_0: 'complex.Complex'] :
                    ( ( V_w1
                      = ( 'complex.-/2' @ ( 'complex.^/2' @ V_z_dot_0 @ 2.0 ) @ ( 'complex.*/2' @ ( 'complex.complex/2' @ 2.0 @ 0.0 ) @ V_z_dot_0 ) ) )
                   => ( $lesseq @ ( 'complex.abs/1' @ V_z_dot_0 ) @ ( $quotient @ 5.0 @ 4.0 ) ) )
                & ( ( 'complex.abs/1' @ V_w1 )
                  = V_w_abs ) ) )
          @ V_max_abs )
        & ! [V_z: 'complex.Complex'] :
            ( ( V_w
              = ( 'complex.-/2' @ ( 'complex.^/2' @ V_z @ 2.0 ) @ ( 'complex.*/2' @ ( 'complex.complex/2' @ 2.0 @ 0.0 ) @ V_z ) ) )
           => ( $lesseq @ ( 'complex.abs/1' @ V_z ) @ ( $quotient @ 5.0 @ 4.0 ) ) )
        & ( ( 'complex.abs/1' @ V_w )
          = V_max_abs ) ) )).

thf(p_answer,answer,(
    ^ [V_w_dot_0: 'complex.Complex'] :
      ( V_w_dot_0
      = ( 'complex.complex/2' @ ( $uminus @ ( $quotient @ 25.0 @ 16.0 ) ) @ 0.0 ) ) ),
    answer_to(p_question,[])).

