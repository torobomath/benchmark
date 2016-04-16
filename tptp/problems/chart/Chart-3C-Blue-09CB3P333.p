%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P333
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    6 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  156 (  18 equality;  20 variable)
%            Maximal formula depth :   19 (  10 average)
%            Number of connectives :  118 (   0   ~;   3   |;  10   &; 105   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   2   :;   0   =)
%            Number of variables   :   16 (   0 sgn;   0   !;   4   ?;  12   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    4 func;    3 numbers)

include('axioms.ax').

thf('x/0_type',type,(
    'x/0': $real )).

thf('y/0_type',type,(
    'y/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_E1: '2d.Shape',V_E2: '2d.Shape'] :
        ( ( V_answer
          = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ 'x/0' @ 'y/0' ) @ ( '2d.intersection/2' @ V_E1 @ V_E2 ) )
        & ( V_E1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( 1.0
                = ( $sum @ ( '^/2' @ V_x_dot_1 @ 2.0 ) @ ( $quotient @ ( '^/2' @ V_y_dot_1 @ 2.0 ) @ 3.0 ) ) ) ) )
        & ( V_E2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( 1.0
                = ( $sum @ ( $quotient @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ 3.0 ) @ ( '^/2' @ V_y_dot_0 @ 2.0 ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_E1: '2d.Shape',V_E2: '2d.Shape'] :
        ( ( V_E1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( $lesseq @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ ( $quotient @ ( '^/2' @ V_y_dot_0 @ 2.0 ) @ 3.0 ) ) @ 1.0 ) ) )
        & ( V_E2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( $lesseq @ ( $sum @ ( $quotient @ ( '^/2' @ V_x @ 2.0 ) @ 3.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) @ 1.0 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.intersection/2' @ V_E1 @ V_E2 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ 'x/0' @ ( 'cons/2' @ $real @ 'y/0' @ ( 'nil/0' @ $real ) ) ) )
      & ( ( ( 'x/0'
            = ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) )
          & ( 'y/0'
            = ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) )
        | ( ( 'x/0'
            = ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) )
          & ( 'y/0'
            = ( $uminus @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) ) )
        | ( ( 'x/0'
            = ( $uminus @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) )
          & ( 'y/0'
            = ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) )
        | ( ( 'x/0'
            = ( $uminus @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) )
          & ( 'y/0'
            = ( $uminus @ ( $quotient @ ( 'sqrt/1' @ 3.0 ) @ 2.0 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ ( $product @ ( $product @ 2.0 @ ( 'sqrt/1' @ 3.0 ) ) @ 'Pi/0' ) @ 3.0 ) ) ),
    answer_to(p2_question,[])).

