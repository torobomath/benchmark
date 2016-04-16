%% DOMAIN:    Integration and its Applications
%% THEORY:    PA+trans
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P340
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  158 (   9 equality;  31 variable)
%            Maximal formula depth :   18 (  13 average)
%            Number of connectives :  138 (   0   ~;   0   |;   6   &; 132   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    6 (   6   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   1   :;   0   =)
%            Number of variables   :   18 (   0 sgn;   0   !;   6   ?;  12   ^)
%                                         (  18   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   0 pred;    6 func;    5 numbers)

include('axioms.ax').

thf('n/0_type',type,(
    'n/0': $int )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_f1: ( $real > $real ),V_f2: ( $real > $real ),V_S: ( $int > $real )] :
        ( ( V_f1
          = ( ^ [V_x_dot_1: $real] :
                ( 'exp/1' @ ( $uminus @ V_x_dot_1 ) ) ) )
        & ( V_f2
          = ( ^ [V_x_dot_0: $real] :
                ( $product @ ( 'exp/1' @ ( $uminus @ V_x_dot_0 ) ) @ ( 'abs/1' @ ( 'cos/1' @ V_x_dot_0 ) ) ) ) )
        & ( V_S
          = ( ^ [V_n_dot_0: $int] :
                ( 'integral/3'
                @ ^ [V_x: $real] :
                    ( $difference @ ( V_f1 @ V_x ) @ ( V_f2 @ V_x ) )
                @ ( $product @ ( $difference @ ( $to_real @ V_n_dot_0 ) @ 1.0 ) @ 'Pi/0' )
                @ ( $product @ ( $to_real @ V_n_dot_0 ) @ 'Pi/0' ) ) ) )
        & ( V_answer
          = ( 'cons/2' @ $real @ ( V_S @ 1 ) @ ( 'cons/2' @ $real @ ( V_S @ 'n/0' ) @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_lim: $real] :
      ? [V_f1: ( $real > $real ),V_f2: ( $real > $real ),V_S: ( $int > $real )] :
        ( ( V_f1
          = ( ^ [V_x_dot_1: $real] :
                ( 'exp/1' @ ( $uminus @ V_x_dot_1 ) ) ) )
        & ( V_f2
          = ( ^ [V_x_dot_0: $real] :
                ( $product @ ( 'exp/1' @ ( $uminus @ V_x_dot_0 ) ) @ ( 'abs/1' @ ( 'cos/1' @ V_x_dot_0 ) ) ) ) )
        & ( V_S
          = ( ^ [V_n: $int] :
                ( 'integral/3'
                @ ^ [V_x: $real] :
                    ( $difference @ ( V_f1 @ V_x ) @ ( V_f2 @ V_x ) )
                @ ( $product @ ( $difference @ ( $to_real @ V_n ) @ 1.0 ) @ 'Pi/0' )
                @ ( $product @ ( $to_real @ V_n ) @ 'Pi/0' ) ) ) )
        & ( 'seq.is-infinite-sum-of/2' @ V_lim @ ( 'seq.seq/1' @ V_S ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( V_answer_dot_0
      = ( 'cons/2' @ $real @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( $sum @ ( $sum @ 1.0 @ ( $product @ -2.0 @ ( 'exp/1' @ ( $quotient @ ( $uminus @ 'Pi/0' ) @ 2.0 ) ) ) ) @ ( $uminus @ ( 'exp/1' @ ( $uminus @ 'Pi/0' ) ) ) ) ) @ ( 'cons/2' @ $real @ ( $product @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'exp/1' @ ( $product @ ( $uminus @ ( $difference @ ( $to_real @ 'n/0' ) @ 1.0 ) ) @ 'Pi/0' ) ) ) @ ( $sum @ ( $sum @ 1.0 @ ( $product @ -2.0 @ ( 'exp/1' @ ( $uminus @ ( $quotient @ 'Pi/0' @ 2.0 ) ) ) ) ) @ ( $uminus @ ( 'exp/1' @ ( $uminus @ 'Pi/0' ) ) ) ) ) @ ( 'nil/0' @ $real ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_lim_dot_0: $real] :
      ( V_lim_dot_0
      = ( $quotient @ ( $sum @ ( $sum @ ( 'exp/1' @ 'Pi/0' ) @ ( $product @ -2.0 @ ( 'exp/1' @ ( $quotient @ 'Pi/0' @ 2.0 ) ) ) ) @ -1.0 ) @ ( $sum @ ( $product @ 2.0 @ ( 'exp/1' @ 'Pi/0' ) ) @ -1.0 ) ) ) ),
    answer_to(p2_question,[])).

