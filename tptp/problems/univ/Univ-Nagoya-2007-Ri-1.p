%% DOMAIN:    Matrices
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2007, Science Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-07-12
%%
%% <PROBLEM-TEXT>
%% Consider the $2$ x $2$ matrix
%% $(\begin{matrix} a & b\\ c & d\end{matrix})$. If $a$, $b$, and $d$
%% are real numbers and $c = 0$, the matrix
%% $(\begin{matrix} a & b\\ 0 & d\end{matrix})$ is called an upper
%% triangular matrix. Define
%% $E =(\begin{matrix} 1 & 0\\ 0 & 1\end{matrix})$.
%%
%% (1) Find all the upper triangular matrices $A$ that satisfy
%% $A^2 = E$.
%%
%% (2) Find all the upper triangular matrices $A$ that satisfy
%% $A^3 = E$.
%%
%% (3) When the upper triangular matrix $A$ satisfies $A^4 = E$, prove
%% that $A^2 = E$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    8 (   0 unit;   3 type;   0 defn)
%            Number of atoms       :  197 (  27 equality;  17 variable)
%            Maximal formula depth :   14 (   8 average)
%            Number of connectives :  142 (   0   ~;   5   |;  20   &; 116   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   3   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   4   !;   2   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   2 pred;    1 func;    5 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('d/0_type',type,(
    'd/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_As: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Matrix'] :
        ( ( ( '2d.m^/2' @ V_A @ 2 )
          = '2d.identity-matrix/0' )
        & ( V_A
          = ( '2d.matrix/4' @ 'a/0' @ 'b/0' @ 0.0 @ 'd/0' ) )
        & ( V_As
          = ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'd/0' @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_As: ( 'ListOf' @ $real )] :
      ? [V_A: '2d.Matrix'] :
        ( ( ( '2d.m^/2' @ V_A @ 3 )
          = '2d.identity-matrix/0' )
        & ( V_A
          = ( '2d.matrix/4' @ 'a/0' @ 'b/0' @ 0.0 @ 'd/0' ) )
        & ( V_As
          = ( 'cons/2' @ $real @ 'a/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 'd/0' @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p3,conjecture,(
    ! [V_A: '2d.Matrix',V_a: $real,V_b: $real,V_d: $real] :
      ( ( ( ( '2d.m^/2' @ V_A @ 4 )
          = '2d.identity-matrix/0' )
        & ( V_A
          = ( '2d.matrix/4' @ V_a @ V_b @ 0.0 @ V_d ) ) )
     => ( ( '2d.m^/2' @ V_A @ 2 )
        = '2d.identity-matrix/0' ) ) )).

thf(p1_answer,answer,(
    ^ [V_As_dot_0: ( 'ListOf' @ $real )] :
      ( ( ( 'b/0' = 0.0 )
        & ( 'a/0' = 1.0 )
        & ( 'd/0' = 1.0 )
        & ( V_As_dot_0
          = ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
      | ( ( 'b/0' = 0.0 )
        & ( 'a/0'
          = ( $uminus @ 1.0 ) )
        & ( 'd/0'
          = ( $uminus @ 1.0 ) )
        & ( V_As_dot_0
          = ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) )
      | ( ( ( $lesseq @ 'b/0' @ 0.0 )
          | ( $less @ 0.0 @ 'b/0' ) )
        & ( 'a/0' = 1.0 )
        & ( 'd/0'
          = ( $uminus @ 1.0 ) )
        & ( V_As_dot_0
          = ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'nil/0' @ $real ) ) ) ) ) )
      | ( ( ( $lesseq @ 'b/0' @ 0.0 )
          | ( $less @ 0.0 @ 'b/0' ) )
        & ( 'a/0'
          = ( $uminus @ 1.0 ) )
        & ( 'd/0' = 1.0 )
        & ( V_As_dot_0
          = ( 'cons/2' @ $real @ ( $uminus @ 1.0 ) @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_As_dot_0: ( 'ListOf' @ $real )] :
      ( ( 'a/0' = 1.0 )
      & ( 'd/0' = 1.0 )
      & ( 'b/0' = 0.0 )
      & ( V_As_dot_0
        = ( 'cons/2' @ $real @ 1.0 @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

