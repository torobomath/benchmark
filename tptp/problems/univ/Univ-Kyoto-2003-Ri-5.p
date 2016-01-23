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
%            Number of atoms       :   74 (   8 equality;  34 variable)
%            Maximal formula depth :   21 (  18 average)
%            Number of connectives :   59 (   1   ~;   1   |;   6   &;  50   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   14 (   0 sgn;   2   !;  10   ?;   2   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_abcd: 'ListOf' @ 'R'] :
      ? [V_a: 'R',V_b: 'R',V_c: 'R',V_d: 'R',V_A: '2d.Matrix',V_E: '2d.Matrix'] :
        ( ( V_abcd
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_b @ ( 'cons/2' @ V_c @ ( 'cons/2' @ V_d @ 'nil/0' ) ) ) ) )
        & ( V_A
          = ( '2d.matrix/4' @ V_a @ V_b @ V_c @ V_d ) )
        & ( V_E = '2d.identity-matrix/0' )
        & ! [V_r: 'R',V_s: 'R'] :
            ( ( ( '2d.m+/2' @ ( '2d.sm*/2' @ V_r @ V_E ) @ ( '2d.sm*/2' @ V_s @ V_A ) )
             != '2d.zero-matrix/0' )
           => ( '2d.is-non-singular/1' @ ( '2d.m+/2' @ ( '2d.sm*/2' @ V_r @ V_E ) @ ( '2d.sm*/2' @ V_s @ V_A ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_abcd_dot_0: 'ListOf' @ 'R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R',V_c_dot_0: 'R',V_d_dot_0: 'R'] :
      ( ( V_abcd_dot_0
        = ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ V_b_dot_0 @ ( 'cons/2' @ V_c_dot_0 @ ( 'cons/2' @ V_d_dot_0 @ 'nil/0' ) ) ) ) )
      & ( ( ( V_a_dot_0 = V_d_dot_0 )
          & ( V_b_dot_0 = 0 )
          & ( V_c_dot_0 = 0 ) )
        | ( '</2' @ ( '^/2' @ ( '+/2' @ V_a_dot_0 @ V_d_dot_0 ) @ 2 ) @ ( '*/2' @ 4 @ ( '-/2' @ ( '*/2' @ V_a_dot_0 @ V_d_dot_0 ) @ ( '*/2' @ V_b_dot_0 @ V_c_dot_0 ) ) ) ) ) ) ),
    answer_to(p_question,[])).
