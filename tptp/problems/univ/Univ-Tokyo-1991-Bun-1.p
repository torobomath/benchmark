%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1991, Humanities Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-09
%%
%% <PROBLEM-TEXT>
%% Find the maximum and minimum values of the function
%% $f(x)=x^3-2 x^2-3 x+4$ in the interval $-\frac{7}{4}\le x\le 3$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   83 (   5 equality;  17 variable)
%            Maximal formula depth :   19 (  15 average)
%            Number of connectives :   73 (   0   ~;   0   |;   7   &;  66   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   5   ?;   4   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   16 (   1 pred;    3 func;   12 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ans: ( 'ListOf' @ $real )] :
      ? [V_f: 'R2R',V_min: $real,V_max: $real] :
        ( ( V_ans
          = ( 'cons/2' @ $real @ V_min @ ( 'cons/2' @ $real @ V_max @ ( 'nil/0' @ $real ) ) ) )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 4.0 @ ( 'cons/2' @ $real @ -3.0 @ ( 'cons/2' @ $real @ -2.0 @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_m_dot_0: $real] :
              ? [V_x_dot_0: $real] :
                ( ( $lesseq @ ( $quotient @ -7.0 @ 4.0 ) @ V_x_dot_0 )
                & ( $lesseq @ V_x_dot_0 @ 3.0 )
                & ( V_m_dot_0
                  = ( 'funapp/2' @ V_f @ V_x_dot_0 ) ) ) )
          @ V_min )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_m: $real] :
              ? [V_x: $real] :
                ( ( $lesseq @ ( $quotient @ -7.0 @ 4.0 ) @ V_x )
                & ( $lesseq @ V_x @ 3.0 )
                & ( V_m
                  = ( 'funapp/2' @ V_f @ V_x ) ) ) )
          @ V_max ) ) )).

thf(p_answer,answer,(
    ^ [V_ans_dot_0: ( 'ListOf' @ $real )] :
      ( V_ans_dot_0
      = ( 'cons/2' @ $real @ ( $quotient @ -143.0 @ 64.0 ) @ ( 'cons/2' @ $real @ ( $quotient @ ( $sum @ 38.0 @ ( $product @ 26.0 @ ( 'sqrt/1' @ 13.0 ) ) ) @ 27.0 ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p_question,[])).

