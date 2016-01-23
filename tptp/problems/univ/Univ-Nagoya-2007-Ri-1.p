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

% Syntax   : Number of formulae    :    5 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  165 (  27 equality;  48 variable)
%            Maximal formula depth :   14 (  12 average)
%            Number of connectives :  110 (   0   ~;   5   |;  20   &;  84   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :)
%            Number of variables   :   22 (   3 sgn;   4   !;   2   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_As: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Matrix'] :
        ( ( ( '2d.m^/2' @ V_A @ 2 )
          = '2d.identity-matrix/0' )
        & ( V_A
          = ( '2d.matrix/4' @ V_a @ V_b @ 0 @ V_d ) )
        & ( V_As
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_d @ 'nil/0' ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_As: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Matrix'] :
        ( ( ( '2d.m^/2' @ V_A @ 3 )
          = '2d.identity-matrix/0' )
        & ( V_A
          = ( '2d.matrix/4' @ V_a @ V_b @ 0 @ V_d ) )
        & ( V_As
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_d @ 'nil/0' ) ) ) ) ) )).

thf(p3,conjecture,(
    ! [V_A: '2d.Matrix',V_a: 'R',V_b: 'R',V_d: 'R'] :
      ( ( ( ( '2d.m^/2' @ V_A @ 4 )
          = '2d.identity-matrix/0' )
        & ( V_A
          = ( '2d.matrix/4' @ V_a @ V_b @ 0 @ V_d ) ) )
     => ( ( '2d.m^/2' @ V_A @ 2 )
        = '2d.identity-matrix/0' ) ) )).

thf(p1_answer,answer,(
    ^ [V_As_dot_0: 'ListOf' @ 'R'] :
      ( ( ( V_b = 0 )
        & ( V_a = 1 )
        & ( V_d = 1 )
        & ( V_As_dot_0
          = ( 'cons/2' @ 1 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) )
      | ( ( V_b = 0 )
        & ( V_a
          = ( '-/1' @ 1 ) )
        & ( V_d
          = ( '-/1' @ 1 ) )
        & ( V_As_dot_0
          = ( 'cons/2' @ ( '-/1' @ 1 ) @ ( 'cons/2' @ 0 @ ( 'cons/2' @ ( '-/1' @ 1 ) @ 'nil/0' ) ) ) ) )
      | ( ( ( '<=/2' @ V_b @ 0 )
          | ( '</2' @ 0 @ V_b ) )
        & ( V_a = 1 )
        & ( V_d
          = ( '-/1' @ 1 ) )
        & ( V_As_dot_0
          = ( 'cons/2' @ 1 @ ( 'cons/2' @ V_b @ ( 'cons/2' @ ( '-/1' @ 1 ) @ 'nil/0' ) ) ) ) )
      | ( ( ( '<=/2' @ V_b @ 0 )
          | ( '</2' @ 0 @ V_b ) )
        & ( V_a
          = ( '-/1' @ 1 ) )
        & ( V_d = 1 )
        & ( V_As_dot_0
          = ( 'cons/2' @ ( '-/1' @ 1 ) @ ( 'cons/2' @ V_b @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_As_dot_0: 'ListOf' @ 'R'] :
      ( ( V_a = 1 )
      & ( V_d = 1 )
      & ( V_b = 0 )
      & ( V_As_dot_0
        = ( 'cons/2' @ 1 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ 1 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p2_question,[])).
