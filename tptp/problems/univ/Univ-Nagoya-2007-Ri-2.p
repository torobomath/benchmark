%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2007, Science Course, Problem 2
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-12
%%
%% <PROBLEM-TEXT>
%% (1) Draw the graph of the function $f(x)= 2 x^3 - 3 x^2 + 1$.
%%
%% (2) When the equation $f(x)= a$ ( $a$ is a real number) has $3$
%% different real solutions ${\alpha} < {\beta} < {\gamma}$, represent
%% $l = {\gamma} - {\alpha}$ using only ${\beta}$.
%%
%% (3) When $a$ changes under the condition described in (2), find the
%% movable range of $l$
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  224 (  11 equality;  49 variable)
%            Maximal formula depth :   20 (  12 average)
%            Number of connectives :  196 (   0   ~;   0   |;  15   &; 181   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   1   :;   0   =)
%            Number of variables   :   20 (   0 sgn;   0   !;   7   ?;  13   ^)
%                                         (  20   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   13 (   2 pred;    5 func;    6 numbers)

include('axioms.ax').

thf('beta/0_type',type,(
    'beta/0': $real )).

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Point'
    @ ^ [V_p: '2d.Point'] :
        ( ( '2d.y-coord/1' @ V_p )
        = ( $sum @ ( $product @ 2.0 @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 3.0 ) ) @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) ) ) @ 1.0 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_l: $real] :
      ? [V_a: $real,V_alpha: $real,V_gamma: $real] :
        ( ( ( ^ [V_x_dot_1: $real] :
                ( $sum @ ( $product @ 2.0 @ ( '^/2' @ V_x_dot_1 @ 3.0 ) ) @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ V_x_dot_1 @ 2.0 ) ) ) @ 1.0 ) )
            @ V_alpha )
          = V_a )
        & ( ( ^ [V_x_dot_0: $real] :
                ( $sum @ ( $product @ 2.0 @ ( '^/2' @ V_x_dot_0 @ 3.0 ) ) @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) @ 1.0 ) )
            @ 'beta/0' )
          = V_a )
        & ( ( ^ [V_x: $real] :
                ( $sum @ ( $product @ 2.0 @ ( '^/2' @ V_x @ 3.0 ) ) @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ V_x @ 2.0 ) ) ) @ 1.0 ) )
            @ V_gamma )
          = V_a )
        & ( $less @ V_alpha @ 'beta/0' )
        & ( $less @ 'beta/0' @ V_gamma )
        & ( 'pairwise-distinct/1' @ $real @ ( 'cons/2' @ $real @ V_alpha @ ( 'cons/2' @ $real @ 'beta/0' @ ( 'cons/2' @ $real @ V_gamma @ ( 'nil/0' @ $real ) ) ) ) )
        & ( V_l
          = ( $difference @ V_gamma @ V_alpha ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_l: $real] :
      ? [V_a: $real,V_alpha: $real,V_beta: $real,V_gamma: $real] :
        ( ( ( ^ [V_x_dot_1: $real] :
                ( $sum @ ( $product @ 2.0 @ ( '^/2' @ V_x_dot_1 @ 3.0 ) ) @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ V_x_dot_1 @ 2.0 ) ) ) @ 1.0 ) )
            @ V_alpha )
          = V_a )
        & ( ( ^ [V_x_dot_0: $real] :
                ( $sum @ ( $product @ 2.0 @ ( '^/2' @ V_x_dot_0 @ 3.0 ) ) @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) @ 1.0 ) )
            @ V_beta )
          = V_a )
        & ( ( ^ [V_x: $real] :
                ( $sum @ ( $product @ 2.0 @ ( '^/2' @ V_x @ 3.0 ) ) @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ V_x @ 2.0 ) ) ) @ 1.0 ) )
            @ V_gamma )
          = V_a )
        & ( $less @ V_alpha @ V_beta )
        & ( $less @ V_beta @ V_gamma )
        & ( 'pairwise-distinct/1' @ $real @ ( 'cons/2' @ $real @ V_alpha @ ( 'cons/2' @ $real @ V_beta @ ( 'cons/2' @ $real @ V_gamma @ ( 'nil/0' @ $real ) ) ) ) )
        & ( V_l
          = ( $difference @ V_gamma @ V_alpha ) ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x: $real,V_y: $real] :
        ( V_y
        = ( $sum @ ( $product @ 2.0 @ ( '^/2' @ V_x @ 3.0 ) ) @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ V_x @ 2.0 ) ) ) @ 1.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_l_dot_0: $real] :
      ( ( $less @ 0.0 @ 'beta/0' )
      & ( $less @ 'beta/0' @ 1.0 )
      & ( V_l_dot_0
        = ( 'sqrt/1' @ ( $sum @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ 'beta/0' @ 2.0 ) ) ) @ ( $sum @ ( $product @ 3.0 @ 'beta/0' ) @ ( $quotient @ 9.0 @ 4.0 ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_l_dot_0: $real] :
      ( ( $less @ ( $quotient @ 3.0 @ 2.0 ) @ V_l_dot_0 )
      & ( $lesseq @ V_l_dot_0 @ ( 'sqrt/1' @ 3.0 ) ) ) ),
    answer_to(p3_question,[])).

