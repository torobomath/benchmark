%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P266
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :   13 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  233 (  26 equality;  57 variable)
%            Maximal formula depth :   18 (  11 average)
%            Number of connectives :  169 (   0   ~;   0   |;  21   &; 148   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   1   :;   0   =)
%            Number of variables   :   32 (   0 sgn;   0   !;   8   ?;  24   ^)
%                                         (  32   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   17 (   2 pred;    5 func;   10 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_l: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
              ? [V_t: $real] :
                ( ( $lesseq @ 0.0 @ V_t )
                & ( $lesseq @ V_t @ ( $quotient @ 'Pi/0' @ 4.0 ) )
                & ( V_x
                  = ( 'cos/1' @ ( $product @ 2.0 @ V_t ) ) )
                & ( V_y
                  = ( $sum @ ( $product @ 2.0 @ V_t ) @ ( 'sin/1' @ ( $product @ 2.0 @ V_t ) ) ) ) ) ) )
        & ( V_l
          = ( '2d.length-of/1' @ V_C ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_l: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
              ? [V_theta: $real] :
                ( ( $lesseq @ ( $quotient @ 'Pi/0' @ 3.0 ) @ V_theta )
                & ( $lesseq @ V_theta @ ( $quotient @ 'Pi/0' @ 2.0 ) )
                & ( V_x
                  = ( $product @ ( $sum @ 1.0 @ ( 'cos/1' @ V_theta ) ) @ ( 'cos/1' @ V_theta ) ) )
                & ( V_y
                  = ( $product @ ( $sum @ 1.0 @ ( 'cos/1' @ V_theta ) ) @ ( 'sin/1' @ V_theta ) ) ) ) ) )
        & ( V_l
          = ( '2d.length-of/1' @ V_C ) ) ) )).

thf(p3_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_l: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ ( $quotient @ 5.0 @ 3.0 ) @ V_x )
                & ( $lesseq @ V_x @ ( $quotient @ 8.0 @ 3.0 ) )
                & ( V_y
                  = ( $product @ 2.0 @ ( 'sqrt/1' @ ( '^/2' @ V_x @ 3.0 ) ) ) ) ) ) )
        & ( V_l
          = ( '2d.length-of/1' @ V_C ) ) ) )).

thf(p4_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_l: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ ( $uminus @ 'a/0' ) @ V_x )
                & ( $lesseq @ V_x @ 'a/0' )
                & ( V_y
                  = ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( $sum @ ( 'exp/1' @ V_x ) @ ( 'exp/1' @ ( $uminus @ V_x ) ) ) ) ) ) ) )
        & ( $less @ 0.0 @ 'a/0' )
        & ( V_l
          = ( '2d.length-of/1' @ V_C ) ) ) )).

thf(p5_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_l: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ 1.0 @ V_x )
                & ( $lesseq @ V_x @ ( 'sqrt/1' @ 3.0 ) )
                & ( V_y
                  = ( 'ln/1' @ V_x ) ) ) ) )
        & ( V_l
          = ( '2d.length-of/1' @ V_C ) ) ) )).

thf(p6_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_l: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $lesseq @ 0.0 @ V_x )
                & ( $lesseq @ V_x @ 1.0 )
                & ( ( $product @ 3.0 @ ( '^/2' @ V_y @ 2.0 ) )
                  = ( $product @ V_x @ ( '^/2' @ ( $difference @ V_x @ 1.0 ) @ 2.0 ) ) ) ) ) )
        & ( V_l
          = ( '2d.length-of/1' @ V_C ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_l_dot_0: $real] :
      ( V_l_dot_0
      = ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_l_dot_0: $real] :
      ( V_l_dot_0
      = ( $sum @ ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) @ -2.0 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_l_dot_0: $real] :
      ( V_l_dot_0
      = ( $quotient @ 122.0 @ 27.0 ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_l_dot_0: $real] :
      ( V_l_dot_0
      = ( $sum @ ( 'exp/1' @ 'a/0' ) @ ( $uminus @ ( 'exp/1' @ ( $uminus @ 'a/0' ) ) ) ) ) ),
    answer_to(p4_question,[])).

thf(p5_answer,answer,(
    ^ [V_l_dot_0: $real] :
      ( V_l_dot_0
      = ( $sum @ ( $sum @ 2.0 @ ( $uminus @ ( 'sqrt/1' @ 2.0 ) ) ) @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ ( 'ln/1' @ ( $quotient @ ( '^/2' @ ( $sum @ ( 'sqrt/1' @ 2.0 ) @ 1.0 ) @ 2.0 ) @ 3.0 ) ) ) ) ) ),
    answer_to(p5_question,[])).

thf(p6_answer,answer,(
    ^ [V_l_dot_0: $real] :
      ( V_l_dot_0
      = ( $quotient @ ( $product @ 4.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 3.0 ) ) ),
    answer_to(p6_question,[])).

