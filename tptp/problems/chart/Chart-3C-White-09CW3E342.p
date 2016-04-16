%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3E342
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   56 (   6 equality;  10 variable)
%            Maximal formula depth :   17 (  13 average)
%            Number of connectives :   42 (   0   ~;   0   |;   2   &;  40   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   0 pred;    3 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P_dot_0: '2d.Point'] :
                ( ( $sum @ ( $quotient @ ( '^/2' @ ( '2d.x-coord/1' @ V_P_dot_0 ) @ 2.0 ) @ 3.0 ) @ ( '^/2' @ ( '2d.y-coord/1' @ V_P_dot_0 ) @ 2.0 ) )
                = 1.0 ) ) )
        & ( V_C2
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( $sum @ ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 2.0 ) @ ( $quotient @ ( '^/2' @ ( '2d.y-coord/1' @ V_P ) @ 2.0 ) @ 3.0 ) )
                = 1.0 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C1 @ ( 'cons/2' @ '2d.Shape' @ V_C2 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ ( $product @ 2.0 @ ( $product @ ( 'sqrt/1' @ 3.0 ) @ 'Pi/0' ) ) @ 3.0 ) ) ),
    answer_to(p_question,[])).

