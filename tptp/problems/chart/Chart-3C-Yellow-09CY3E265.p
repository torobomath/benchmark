%% DOMAIN:    Integration and its Applications
%% THEORY:    PA+trans
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E265
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  119 (   9 equality;  25 variable)
%            Maximal formula depth :   20 (  10 average)
%            Number of connectives :   97 (   0   ~;   0   |;  10   &;  87   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (   2   :;   0   =)
%            Number of variables   :   13 (   0 sgn;   0   !;   4   ?;   9   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    5 func;    4 numbers)

include('axioms.ax').

thf('n/0_type',type,(
    'n/0': $int )).

thf('x/0_type',type,(
    'x/0': $real )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_lim: $real] :
      ? [V_Cn: ( $int > '2d.Shape' ),V_Sn: ( $int > $real ),V_Tn: 'seq.Seq'] :
        ( ( V_Cn
          = ( ^ [V_n_dot_1: $int] :
                ( '2d.shape-of-cpfun/1'
                @ ^ [V_P: '2d.Point'] :
                    ( ( ( '2d.y-coord/1' @ V_P )
                      = ( $product @ ( '2d.x-coord/1' @ V_P ) @ ( 'sin/1' @ ( '2d.x-coord/1' @ V_P ) ) ) )
                    & ( $lesseq @ ( $product @ ( $difference @ ( $to_real @ V_n_dot_1 ) @ 1.0 ) @ 'Pi/0' ) @ 'x/0' )
                    & ( $lesseq @ 'x/0' @ ( $product @ ( $to_real @ V_n_dot_1 ) @ 'Pi/0' ) )
                    & ( $greater @ V_n_dot_1 @ 0 ) ) ) ) )
        & ( V_Sn
          = ( ^ [V_n_dot_0: $int] :
                ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ ( V_Cn @ V_n_dot_0 ) @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )
        & ( V_Tn
          = ( 'seq.seq/1'
            @ ^ [V_n: $int] :
                ( $product @ ( V_Sn @ V_n ) @ ( V_Sn @ ( $sum @ V_n @ 1 ) ) ) ) )
        & ( 'seq.is-infinite-sum-of/2' @ V_lim @ V_Tn ) ) )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_Sn: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( $greater @ 'n/0' @ 0 )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( ( '2d.y-coord/1' @ V_P )
                  = ( $product @ ( '2d.x-coord/1' @ V_P ) @ ( 'sin/1' @ ( '2d.x-coord/1' @ V_P ) ) ) )
                & ( $lesseq @ ( $product @ ( $difference @ ( $to_real @ 'n/0' ) @ 1.0 ) @ 'Pi/0' ) @ 'x/0' )
                & ( $lesseq @ 'x/0' @ ( $product @ ( $to_real @ 'n/0' ) @ 'Pi/0' ) ) ) ) )
        & ( V_Sn
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_lim_dot_0: $real] :
      ( V_lim_dot_0
      = ( $quotient @ 1.0 @ ( $product @ 2.0 @ ( '^/2' @ 'Pi/0' @ 2.0 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p1_answer,answer,(
    ^ [V_Sn_dot_0: $real] :
      ( V_Sn_dot_0
      = ( $product @ 'Pi/0' @ ( $difference @ ( $product @ 2.0 @ ( $to_real @ 'n/0' ) ) @ 1.0 ) ) ) ),
    answer_to(p1_question,[])).

