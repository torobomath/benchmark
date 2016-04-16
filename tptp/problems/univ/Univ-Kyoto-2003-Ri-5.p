%% DOMAIN:    Matrices
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2003, Science Course, Problem 5
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-08
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, $c$, and $d$ be real numbers. For the second-order
%% square matrix $A=(\begin{matrix} a & b\\ c & d\end{matrix})$ and the
%% second-order unit matrix $E$, define the set $L(A)$ as
%% $L(A)=\{r E+s A| r and s are real numbers\}$. Find the necessary and
%% sufficient condition that $a$, $b$, $c$, and $d$ must satisfy in
%% order that the following condition (*) is true: (*) The element $B$
%% of $L(A)$ has an inverse matrix unless it is a zero matrix.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   86 (   8 equality;  34 variable)
%            Maximal formula depth :   21 (  18 average)
%            Number of connectives :   71 (   1   ~;   1   |;   6   &;  62   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   2   !;  10   ?;   2   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    3 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_abcd: ( 'ListOf' @ $real )] :
      ? [V_a: $real,V_b: $real,V_c: $real,V_d: $real,V_A: '2d.Matrix',V_E: '2d.Matrix'] :
        ( ( V_abcd
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ V_d @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( V_A
          = ( '2d.matrix/4' @ V_a @ V_b @ V_c @ V_d ) )
        & ( V_E = '2d.identity-matrix/0' )
        & ! [V_r: $real,V_s: $real] :
            ( ( ( '2d.m+/2' @ ( '2d.sm*/2' @ V_r @ V_E ) @ ( '2d.sm*/2' @ V_s @ V_A ) )
             != '2d.zero-matrix/0' )
           => ( '2d.is-non-singular/1' @ ( '2d.m+/2' @ ( '2d.sm*/2' @ V_r @ V_E ) @ ( '2d.sm*/2' @ V_s @ V_A ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_abcd_dot_0: ( 'ListOf' @ $real )] :
    ? [V_a_dot_0: $real,V_b_dot_0: $real,V_c_dot_0: $real,V_d_dot_0: $real] :
      ( ( V_abcd_dot_0
        = ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'cons/2' @ $real @ V_c_dot_0 @ ( 'cons/2' @ $real @ V_d_dot_0 @ ( 'nil/0' @ $real ) ) ) ) ) )
      & ( ( ( V_a_dot_0 = V_d_dot_0 )
          & ( V_b_dot_0 = 0.0 )
          & ( V_c_dot_0 = 0.0 ) )
        | ( $less @ ( '^/2' @ ( $sum @ V_a_dot_0 @ V_d_dot_0 ) @ 2.0 ) @ ( $product @ 4.0 @ ( $difference @ ( $product @ V_a_dot_0 @ V_d_dot_0 ) @ ( $product @ V_b_dot_0 @ V_c_dot_0 ) ) ) ) ) ) ),
    answer_to(p_question,[])).

