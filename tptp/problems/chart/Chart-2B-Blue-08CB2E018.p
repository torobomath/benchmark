%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2E018
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  317 (   9 equality;  64 variable)
%            Maximal formula depth :   19 (  14 average)
%            Number of connectives :  295 (   0   ~;   6   |;  40   &; 249   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   1   :;   0   =)
%            Number of variables   :   13 (   0 sgn;   0   !;   6   ?;   7   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   1 pred;    4 func;    7 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_b: $real] :
      ? [V_D: ( '2d.Point' > $o )] :
        ( ( V_D
          = ( ^ [V_R: '2d.Point'] :
              ? [V_P: '2d.Point',V_Q: '2d.Point'] :
                ( ( $lesseq @ -1.0 @ ( '2d.x-coord/1' @ V_P ) )
                & ( $lesseq @ ( '2d.x-coord/1' @ V_P ) @ 1.0 )
                & ( ( '2d.y-coord/1' @ V_P )
                  = ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 2.0 ) )
                & ( $lesseq @ -1.0 @ ( '2d.x-coord/1' @ V_Q ) )
                & ( $lesseq @ ( '2d.x-coord/1' @ V_Q ) @ 1.0 )
                & ( ( '2d.y-coord/1' @ V_Q )
                  = ( '^/2' @ ( '2d.x-coord/1' @ V_Q ) @ 2.0 ) )
                & ( V_R
                  = ( '2d.internally-dividing-point/3' @ V_P @ V_Q @ ( $quotient @ 1.0 @ 3.0 ) ) ) ) ) )
        & ( $lesseq @ -1.0 @ 'a/0' )
        & ( $lesseq @ 'a/0' @ 1.0 )
        & ( V_D @ ( '2d.point/2' @ 'a/0' @ V_b ) ) ) )).

thf(p2_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
      ? [V_pred: ( '2d.Point' > $o )] :
        ( ( V_pred
          = ( ^ [V_R: '2d.Point'] :
              ? [V_P: '2d.Point',V_Q: '2d.Point'] :
                ( ( $lesseq @ -1.0 @ ( '2d.x-coord/1' @ V_P ) )
                & ( $lesseq @ ( '2d.x-coord/1' @ V_P ) @ 1.0 )
                & ( ( '2d.y-coord/1' @ V_P )
                  = ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 2.0 ) )
                & ( $lesseq @ -1.0 @ ( '2d.x-coord/1' @ V_Q ) )
                & ( $lesseq @ ( '2d.x-coord/1' @ V_Q ) @ 1.0 )
                & ( ( '2d.y-coord/1' @ V_Q )
                  = ( '^/2' @ ( '2d.x-coord/1' @ V_Q ) @ 2.0 ) )
                & ( V_R
                  = ( '2d.internally-dividing-point/3' @ V_P @ V_Q @ ( $quotient @ 1.0 @ 3.0 ) ) ) ) ) )
        & ( V_D
          = ( '2d.shape-of-cpfun/1' @ V_pred ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_b_dot_0: $real] :
      ( ( ( $lesseq @ -1.0 @ 'a/0' )
        & ( $lesseq @ 'a/0' @ ( $quotient @ -1.0 @ 3.0 ) )
        & ( $lesseq @ ( '^/2' @ 'a/0' @ 2.0 ) @ V_b_dot_0 )
        & ( $lesseq @ V_b_dot_0 @ ( $sum @ ( $product @ 3.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $product @ 4.0 @ 'a/0' ) @ 2.0 ) ) ) )
      | ( ( $lesseq @ ( $quotient @ -1.0 @ 3.0 ) @ 'a/0' )
        & ( $lesseq @ 'a/0' @ 0.0 )
        & ( $lesseq @ ( '^/2' @ 'a/0' @ 2.0 ) @ V_b_dot_0 )
        & ( $lesseq @ V_b_dot_0 @ ( $sum @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $uminus @ 'a/0' ) @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) )
      | ( ( $lesseq @ 0.0 @ 'a/0' )
        & ( $lesseq @ 'a/0' @ ( $quotient @ 1.0 @ 3.0 ) )
        & ( $lesseq @ ( '^/2' @ 'a/0' @ 2.0 ) @ V_b_dot_0 )
        & ( $lesseq @ V_b_dot_0 @ ( $sum @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ 'a/0' @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) )
      | ( ( $lesseq @ ( $quotient @ 1.0 @ 3.0 ) @ 'a/0' )
        & ( $lesseq @ 'a/0' @ 1.0 )
        & ( $lesseq @ ( '^/2' @ 'a/0' @ 2.0 ) @ V_b_dot_0 )
        & ( $lesseq @ V_b_dot_0 @ ( $sum @ ( $product @ 3.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $product @ -4.0 @ 'a/0' ) @ 2.0 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_a: $real,V_b: $real] :
        ( ( ( $lesseq @ -1.0 @ V_a )
          & ( $lesseq @ V_a @ ( $quotient @ -1.0 @ 3.0 ) )
          & ( $lesseq @ ( '^/2' @ V_a @ 2.0 ) @ V_b )
          & ( $lesseq @ V_b @ ( $sum @ ( $product @ 3.0 @ ( '^/2' @ V_a @ 2.0 ) ) @ ( $sum @ ( $product @ 4.0 @ V_a ) @ 2.0 ) ) ) )
        | ( ( $lesseq @ ( $quotient @ -1.0 @ 3.0 ) @ V_a )
          & ( $lesseq @ V_a @ 0.0 )
          & ( $lesseq @ ( '^/2' @ V_a @ 2.0 ) @ V_b )
          & ( $lesseq @ V_b @ ( $sum @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ ( '^/2' @ V_a @ 2.0 ) ) @ ( $sum @ ( $uminus @ V_a ) @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) )
        | ( ( $lesseq @ 0.0 @ V_a )
          & ( $lesseq @ V_a @ ( $quotient @ 1.0 @ 3.0 ) )
          & ( $lesseq @ ( '^/2' @ V_a @ 2.0 ) @ V_b )
          & ( $lesseq @ V_b @ ( $sum @ ( $product @ ( $quotient @ 3.0 @ 2.0 ) @ ( '^/2' @ V_a @ 2.0 ) ) @ ( $sum @ V_a @ ( $quotient @ 1.0 @ 2.0 ) ) ) ) )
        | ( ( $lesseq @ ( $quotient @ 1.0 @ 3.0 ) @ V_a )
          & ( $lesseq @ V_a @ 1.0 )
          & ( $lesseq @ ( '^/2' @ V_a @ 2.0 ) @ V_b )
          & ( $lesseq @ V_b @ ( $sum @ ( $product @ 3.0 @ ( '^/2' @ V_a @ 2.0 ) ) @ ( $sum @ ( $product @ -4.0 @ V_a ) @ 2.0 ) ) ) ) ) ),
    answer_to(p2_question,[])).

