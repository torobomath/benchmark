%% DOMAIN:    Quadratic Functions
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 1999, Humanities Course, Problem 1
%% AUTHOR:    Hidenao Iwane
%% GENERATED: 2014-01-20
%%
%% <PROBLEM-TEXT>
%% Let $k$ be a real number, and define
%% $f(x)= x^2 - 2 k x +\frac{1}{5}(2 k - 1)(4 k - 3)$. When the equation
%% $f(x)= 0$ has the real solutions ${\alpha}$ and ${\beta}$ (
%% ${\alpha}\le {\beta}$), answer the following questions.
%%
%% (1) Find the range of the value of $k$ such that ${\alpha}$ and
%% ${\beta}$ satisfy ${\alpha}\le 1\le {\beta}$.
%%
%% (2) In the case of (1), find the range of the possible minimum value
%% of $f(x)$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  156 (   8 equality;  36 variable)
%            Maximal formula depth :   28 (  15 average)
%            Number of connectives :  136 (   0   ~;   0   |;  14   &; 122   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   23 (   0   :;   0   =)
%            Number of variables   :   14 (   0 sgn;   0   !;   9   ?;   5   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   1 pred;    4 func;    9 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_k: $real] :
      ? [V_a: $real,V_b: $real,V_f: 'R2R'] :
        ( ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $quotient @ ( $product @ ( $difference @ ( $product @ 2.0 @ V_k ) @ 1.0 ) @ ( $difference @ ( $product @ 4.0 @ V_k ) @ 3.0 ) ) @ 5.0 ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $product @ 2.0 @ V_k ) ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
        & ( ( 'funapp/2' @ V_f @ V_a )
          = 0.0 )
        & ( ( 'funapp/2' @ V_f @ V_b )
          = 0.0 )
        & ( $lesseq @ V_a @ V_b )
        & ( $lesseq @ V_a @ 1.0 )
        & ( $lesseq @ 1.0 @ V_b ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
      ? [V_k: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_z: $real] :
            ? [V_x: $real,V_f: 'R2R'] :
              ( ( V_f
                = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $quotient @ ( $product @ ( $difference @ ( $product @ 2.0 @ V_k ) @ 1.0 ) @ ( $difference @ ( $product @ 4.0 @ V_k ) @ 3.0 ) ) @ 5.0 ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $product @ 2.0 @ V_k ) ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
              & ( V_z
                = ( 'funapp/2' @ V_f @ V_x ) )
              & ? [V_a: $real,V_b: $real,V_f_dot_0: 'R2R'] :
                  ( ( V_f_dot_0
                    = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $quotient @ ( $product @ ( $difference @ ( $product @ 2.0 @ V_k ) @ 1.0 ) @ ( $difference @ ( $product @ 4.0 @ V_k ) @ 3.0 ) ) @ 5.0 ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $product @ 2.0 @ V_k ) ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) )
                  & ( ( 'funapp/2' @ V_f_dot_0 @ V_a )
                    = 0.0 )
                  & ( ( 'funapp/2' @ V_f_dot_0 @ V_b )
                    = 0.0 )
                  & ( $lesseq @ V_a @ V_b )
                  & ( $lesseq @ V_a @ 1.0 )
                  & ( $lesseq @ 1.0 @ V_b ) ) ) )
        @ V_m ) )).

thf(p1_answer,answer,(
    ^ [V_k_dot_0: $real] :
      ( ( $lesseq @ ( $quotient @ 1.0 @ 2.0 ) @ V_k_dot_0 )
      & ( $lesseq @ V_k_dot_0 @ 2.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_m_dot_0: $real] :
      ( ( $lesseq @ ( $quotient @ -16.0 @ 15.0 ) @ V_m_dot_0 )
      & ( $lesseq @ V_m_dot_0 @ ( $quotient @ -1.0 @ 4.0 ) ) ) ),
    answer_to(p2_question,[])).

