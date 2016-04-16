%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3E336
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  172 (  17 equality;  42 variable)
%            Maximal formula depth :   27 (  12 average)
%            Number of connectives :  135 (   1   ~;   0   |;  16   &; 117   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   1   :;   0   =)
%            Number of variables   :   19 (   0 sgn;   4   !;   5   ?;  10   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    3 func;    6 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ '2d.Point'
    @ ^ [V_P: '2d.Point'] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_0: '2d.Point'] :
                ( ( $product @ 'a/0' @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
                = ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) ) ) )
        & ( V_C2
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '^/2' @ ( '2d.y-coord/1' @ V_p ) @ 2.0 )
                = ( $product @ 'a/0' @ ( $product @ ( $difference @ 1.0 @ 'a/0' ) @ ( '2d.x-coord/1' @ V_p ) ) ) ) ) )
        & ( $less @ 'a/0' @ 1.0 )
        & ( $less @ 0.0 @ 'a/0' )
        & ( V_P != '2d.origin/0' )
        & ( '2d.intersect/3' @ V_C1 @ V_C2 @ V_P ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_a: $real] :
        ( ( V_C1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_2: '2d.Point'] :
                ( ( $product @ V_a @ ( '2d.y-coord/1' @ V_p_dot_2 ) )
                = ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_2 ) @ 2.0 ) ) ) )
        & ( V_C2
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p_dot_1: '2d.Point'] :
                ( ( '^/2' @ ( '2d.y-coord/1' @ V_p_dot_1 ) @ 2.0 )
                = ( $product @ V_a @ ( $product @ ( $difference @ 1.0 @ V_a ) @ ( '2d.x-coord/1' @ V_p_dot_1 ) ) ) ) ) )
        & ( $less @ V_a @ 1.0 )
        & ( $less @ 0.0 @ V_a )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C1 @ ( 'cons/2' @ '2d.Shape' @ V_C2 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) )
        & ! [V_C12: '2d.Shape',V_C22: '2d.Shape',V_a2: $real,V_S2: $real] :
            ( ( ( V_C12
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_p_dot_0: '2d.Point'] :
                      ( ( $product @ V_a2 @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
                      = ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) ) ) )
              & ( V_C22
                = ( '2d.shape-of-cpfun/1'
                  @ ^ [V_p: '2d.Point'] :
                      ( ( '^/2' @ ( '2d.y-coord/1' @ V_p ) @ 2.0 )
                      = ( $product @ V_a2 @ ( $product @ ( $difference @ 1.0 @ V_a ) @ ( '2d.x-coord/1' @ V_p ) ) ) ) ) )
              & ( $less @ V_a2 @ 1.0 )
              & ( $less @ 0.0 @ V_a2 )
              & ( V_S2
                = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C12 @ ( 'cons/2' @ '2d.Shape' @ V_C22 @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )
           => ( $greatereq @ V_S @ V_S2 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_P_dot_0: '2d.Point'] :
      ( ( $less @ 0.0 @ 'a/0' )
      & ( $less @ 'a/0' @ 1.0 )
      & ( V_P_dot_0
        = ( '2d.point/2' @ ( $product @ 'a/0' @ ( '^/2' @ ( $difference @ 1.0 @ 'a/0' ) @ ( $quotient @ 1.0 @ 3.0 ) ) ) @ ( $product @ 'a/0' @ ( '^/2' @ ( $difference @ 1.0 @ 'a/0' ) @ ( $quotient @ 2.0 @ 3.0 ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $quotient @ 4.0 @ 81.0 ) ) ),
    answer_to(p2_question,[])).

