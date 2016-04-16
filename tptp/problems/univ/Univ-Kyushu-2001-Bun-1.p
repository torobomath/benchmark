%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Kyushu University, 2001, Humanities Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-05-28
%%
%% <PROBLEM-TEXT>
%% Consider the function $f(x)=\frac{2}{3} a x^3 +(a + b)x^2 +(b + 1)x$.
%%
%% (1) Find the condition for $a$ and $b$ such that the function $f(x)$
%% always increases, and draw the region on the $a b$ plane.
%%
%% (2) Find the condition for $b$ such that the function $f(x)$ always
%% increases when $x > - 1$.
%%
%% (3) Find the condition for $a$ and $b$ such that the function $f(x)$
%% always increases when $x > - 1$, and draw the region on the $a b$
%% plane.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :   11 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  292 (  14 equality;  76 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :  254 (   0   ~;   2   |;  23   &; 226   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   1   :;   0   =)
%            Number of variables   :   30 (   0 sgn;   6   !;  12   ?;  12   ^)
%                                         (  30   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    4 func;    5 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_a_b_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_b: $real] :
      ? [V_f: 'R2R'] :
        ( ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $sum @ V_b @ 1.0 ) @ ( 'cons/2' @ $real @ ( $sum @ 'a/0' @ V_b ) @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ 'a/0' ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ( 'monotonically-increasing/1' @ V_f ) ) )).

thf(p1_D_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
            ? [V_f: 'R2R',V_a: $real,V_b: $real] :
              ( ( V_f
                = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $sum @ V_b @ 1.0 ) @ ( 'cons/2' @ $real @ ( $sum @ V_a @ V_b ) @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ V_a ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
              & ( 'monotonically-increasing/1' @ V_f )
              & ( V_a
                = ( '2d.x-coord/1' @ V_p ) )
              & ( V_b
                = ( '2d.y-coord/1' @ V_p ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_b: $real] :
      ? [V_f: 'R2R',V_a: $real] :
        ( ( V_a = 0.0 )
        & ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $sum @ V_b @ 1.0 ) @ ( 'cons/2' @ $real @ ( $sum @ V_a @ V_b ) @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ V_a ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ! [V_x1: $real,V_x2: $real] :
            ( ( ( $greater @ V_x1 @ -1.0 )
              & ( $greater @ V_x2 @ -1.0 )
              & ( $greater @ V_x1 @ V_x2 ) )
           => ( $greater @ ( 'funapp/2' @ V_f @ V_x1 ) @ ( 'funapp/2' @ V_f @ V_x2 ) ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_b: $real] :
      ? [V_f: 'R2R'] :
        ( ( V_f
          = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $sum @ V_b @ 1.0 ) @ ( 'cons/2' @ $real @ ( $sum @ 'a/0' @ V_b ) @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ 'a/0' ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
        & ! [V_x1: $real,V_x2: $real] :
            ( ( ( $greater @ V_x1 @ -1.0 )
              & ( $greater @ V_x2 @ -1.0 )
              & ( $greater @ V_x1 @ V_x2 ) )
           => ( $greater @ ( 'funapp/2' @ V_f @ V_x1 ) @ ( 'funapp/2' @ V_f @ V_x2 ) ) ) ) )).

thf(p3_D_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
        ( V_D
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
            ? [V_f: 'R2R',V_a: $real,V_b: $real] :
              ( ( V_f
                = ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $sum @ V_b @ 1.0 ) @ ( 'cons/2' @ $real @ ( $sum @ V_a @ V_b ) @ ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 2.0 @ 3.0 ) @ V_a ) @ ( 'nil/0' @ $real ) ) ) ) ) ) )
              & ! [V_x1: $real,V_x2: $real] :
                  ( ( ( $greater @ V_x1 @ -1.0 )
                    & ( $greater @ V_x2 @ -1.0 )
                    & ( $greater @ V_x1 @ V_x2 ) )
                 => ( $greater @ ( 'funapp/2' @ V_f @ V_x1 ) @ ( 'funapp/2' @ V_f @ V_x2 ) ) )
              & ( ( '2d.x-coord/1' @ V_p )
                = V_a )
              & ( ( '2d.y-coord/1' @ V_p )
                = V_b ) ) ) ) )).

thf(p1_a_b_answer,answer,(
    ^ [V_b_dot_0: $real] :
      ( $lesseq @ ( $sum @ ( '^/2' @ ( $difference @ 'a/0' @ 1.0 ) @ 2.0 ) @ ( '^/2' @ V_b_dot_0 @ 2.0 ) ) @ 1.0 ) ),
    answer_to(p1_a_b_question,[])).

thf(p1_D_answer,answer,
    ( '2d.shape-of-cpfun/1'
    @ ^ [V_P: '2d.Point'] :
        ( $lesseq @ ( $sum @ ( '^/2' @ ( $difference @ ( '2d.x-coord/1' @ V_P ) @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( '2d.y-coord/1' @ V_P ) @ 2.0 ) ) @ 1.0 ) ),
    answer_to(p1_D_question,[])).

thf(p2_answer,answer,(
    ^ [V_b_dot_0: $real] :
      ( ( $lesseq @ 0.0 @ V_b_dot_0 )
      & ( $lesseq @ V_b_dot_0 @ 1.0 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_b_dot_0: $real] :
      ( ( $lesseq @ 0.0 @ 'a/0' )
      & ( ( ( $lesseq @ 'a/0' @ V_b_dot_0 )
          & ( $lesseq @ V_b_dot_0 @ 1.0 ) )
        | ( $lesseq @ ( $sum @ ( '^/2' @ ( $difference @ 'a/0' @ 1.0 ) @ 2.0 ) @ ( '^/2' @ V_b_dot_0 @ 2.0 ) ) @ 1.0 ) ) ) ),
    answer_to(p3_question,[])).

thf(p3_D_answer,answer,
    ( '2d.shape-of-cpfun/1'
    @ ^ [V_P: '2d.Point'] :
      ? [V_a_dot_0: $real,V_b_dot_0: $real] :
        ( ( $lesseq @ 0.0 @ V_a_dot_0 )
        & ( V_a_dot_0
          = ( '2d.x-coord/1' @ V_P ) )
        & ( V_b_dot_0
          = ( '2d.y-coord/1' @ V_P ) )
        & ( ( ( $lesseq @ V_a_dot_0 @ V_b_dot_0 )
            & ( $lesseq @ V_b_dot_0 @ 1.0 ) )
          | ( $lesseq @ ( $sum @ ( '^/2' @ ( $difference @ V_a_dot_0 @ 1.0 ) @ 2.0 ) @ ( '^/2' @ V_b_dot_0 @ 2.0 ) ) @ 1.0 ) ) ) ),
    answer_to(p3_D_question,[])).

