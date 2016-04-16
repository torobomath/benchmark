%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P242
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   90 (  10 equality;  20 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   66 (   0   ~;   0   |;   6   &;  60   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :;   0   =)
%            Number of variables   :   12 (   0 sgn;   0   !;   4   ?;   8   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   1 pred;    4 func;    5 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
              ? [V_t: $real] :
                ( ( V_x
                  = ( $product @ 3.0 @ ( '^/2' @ V_t @ 2.0 ) ) )
                & ( V_y
                  = ( $sum @ ( $product @ 3.0 @ V_t ) @ ( $uminus @ ( '^/2' @ V_t @ 3.0 ) ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
              ? [V_theta: $real] :
                ( ( $lesseq @ ( $quotient @ 'Pi/0' @ 2.0 ) @ V_theta )
                & ( $lesseq @ V_theta @ 'Pi/0' )
                & ( V_x
                  = ( $sum @ ( $product @ ( 'sqrt/1' @ 3.0 ) @ ( 'cos/1' @ V_theta ) ) @ ( 'sin/1' @ V_theta ) ) )
                & ( V_y
                  = ( 'sin/1' @ ( $product @ 2.0 @ V_theta ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'cons/2' @ '2d.Shape' @ '2d.x-axis/0' @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ ( $product @ 72.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 5.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ ( $product @ 2.0 @ ( $sum @ 1.0 @ ( 'sqrt/1' @ 3.0 ) ) ) @ 3.0 ) ) ),
    answer_to(p2_question,[])).

