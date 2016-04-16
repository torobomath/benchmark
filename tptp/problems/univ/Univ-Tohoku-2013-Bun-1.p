%% DOMAIN:    Quadratic Functions
%% THEORY:    RCF
%% SOURCE:    Tohoku University, 2013, Humanities Course, Problem 1
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2015-01-08
%%
%% <PROBLEM-TEXT>
%% Let $a$ be a real number. Answer the following questions:
%%
%% (1) Find the range of the value of $a$ such that the quadratic
%% equation $x^2 - 2(a + 1)x + 3 a = 0$ has two different real solutions
%% in the range of $- 1\le x\le 3$.
%%
%% (2) When $a$ moves in the range found in (1), find the range of the
%% values of the $y$ coordinate of the vertex of the parabola
%% $y = x^2 - 2(a + 1)x + 3 a$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  170 (   6 equality;  32 variable)
%            Maximal formula depth :   25 (  15 average)
%            Number of connectives :  156 (   2   ~;   0   |;  15   &; 139   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   6   ?;   4   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   14 (   1 pred;    4 func;    9 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_a: $real] :
      ? [V_x1: $real,V_x2: $real] :
        ( ( $lesseq @ ( $uminus @ 1.0 ) @ V_x1 )
        & ( $lesseq @ V_x1 @ 3.0 )
        & ( $lesseq @ ( $uminus @ 1.0 ) @ V_x2 )
        & ( $lesseq @ V_x2 @ 3.0 )
        & ( V_x1 != V_x2 )
        & ( 0.0
          = ( 'funapp/2' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $product @ 3.0 @ V_a ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $product @ 2.0 @ ( $sum @ V_a @ 1.0 ) ) ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) @ V_x1 ) )
        & ( 0.0
          = ( 'funapp/2' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $product @ 3.0 @ V_a ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $product @ 2.0 @ ( $sum @ V_a @ 1.0 ) ) ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) @ V_x2 ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_y: $real] :
      ? [V_a: $real,V_x1: $real,V_x2: $real] :
        ( ( $lesseq @ ( $uminus @ 1.0 ) @ V_x1 )
        & ( $lesseq @ V_x1 @ 3.0 )
        & ( $lesseq @ ( $uminus @ 1.0 ) @ V_x2 )
        & ( $lesseq @ V_x2 @ 3.0 )
        & ( V_x1 != V_x2 )
        & ( 0.0
          = ( 'funapp/2' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $product @ 3.0 @ V_a ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $product @ 2.0 @ ( $sum @ V_a @ 1.0 ) ) ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) @ V_x1 ) )
        & ( 0.0
          = ( 'funapp/2' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $product @ 3.0 @ V_a ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $product @ 2.0 @ ( $sum @ V_a @ 1.0 ) ) ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) @ V_x2 ) )
        & ? [V_x: $real] :
            ( 'func-extreme/3' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ ( $product @ 3.0 @ V_a ) @ ( 'cons/2' @ $real @ ( $uminus @ ( $product @ 2.0 @ ( $sum @ V_a @ 1.0 ) ) ) @ ( 'cons/2' @ $real @ 1.0 @ ( 'nil/0' @ $real ) ) ) ) ) @ V_x @ V_y ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: $real] :
      ( ( $lesseq @ ( $quotient @ -3.0 @ 5.0 ) @ V_a_dot_0 )
      & ( $lesseq @ V_a_dot_0 @ 1.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_y_dot_0: $real] :
      ( ( $lesseq @ ( $quotient @ -49.0 @ 25.0 ) @ V_y_dot_0 )
      & ( $lesseq @ V_y_dot_0 @ ( $quotient @ -3.0 @ 4.0 ) ) ) ),
    answer_to(p2_question,[])).

