%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1993, Humanities Course, Problem 1
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% Assume that the cubic function $f(x)=x^3+a x^2+b x$ has a local
%% maximum value and a local minimum value in the interval
%% $-1\le x\le 1$. Draw the range of the pairs of real numbers $(a, b)$
%% that satisfy this condition on the $ab$ plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   92 (   3 equality;  29 variable)
%            Maximal formula depth :   18 (  16 average)
%            Number of connectives :   86 (   0   ~;   0   |;  12   &;  74   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   0   !;   7   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   3 pred;    5 func;    6 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_ab: ( 'ListOf' @ $real )] :
      ? [V_a: $real,V_b: $real,V_f: 'R2R'] :
        ( ( V_ab
          = ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ V_b @ ( 'nil/0' @ $real ) ) ) )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ V_a @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ? [V_x0: $real,V_x1: $real] :
            ( ( $lesseq @ -1.0 @ V_x0 )
            & ( $lesseq @ V_x0 @ 1.0 )
            & ( $lesseq @ -1.0 @ V_x1 )
            & ( $lesseq @ V_x1 @ 1.0 )
            & ( 'func-maximal/3' @ V_f @ V_x0 @ ( 'funapp/2' @ V_f @ V_x0 ) )
            & ( 'func-minimal/3' @ V_f @ V_x1 @ ( 'funapp/2' @ V_f @ V_x1 ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_ab_dot_0: ( 'ListOf' @ $real )] :
    ? [V_a_dot_0: $real,V_b_dot_0: $real] :
      ( ( V_ab_dot_0
        = ( 'cons/2' @ $real @ V_a_dot_0 @ ( 'cons/2' @ $real @ V_b_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( $less @ V_b_dot_0 @ ( $quotient @ ( '^/2' @ V_a_dot_0 @ 2.0 ) @ 3.0 ) )
      & ( $less @ -3.0 @ V_a_dot_0 )
      & ( $less @ V_a_dot_0 @ 3.0 )
      & ( $greatereq @ V_b_dot_0 @ ( $difference @ ( $product @ 2.0 @ V_a_dot_0 ) @ 3.0 ) )
      & ( $greatereq @ V_b_dot_0 @ ( $uminus @ ( $sum @ ( $product @ 2.0 @ V_a_dot_0 ) @ 3.0 ) ) ) ) ),
    answer_to(p_question,[])).

