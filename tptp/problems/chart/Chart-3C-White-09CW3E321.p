%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3E321
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   86 (   6 equality;  17 variable)
%            Maximal formula depth :   14 (   9 average)
%            Number of connectives :   68 (   0   ~;   0   |;   3   &;  65   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :;   0   =)
%            Number of variables   :   10 (   0 sgn;   0   !;   3   ?;   7   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    8 (   1 pred;    4 func;    3 numbers)

include('axioms.ax').

thf(p1_1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
      ? [V_y: $real] :
        ( ( '^/2' @ V_y @ 2.0 )
        = ( $product @ ( '^/2' @ V_x @ 2.0 ) @ ( $difference @ 3.0 @ ( '^/2' @ V_x @ 2.0 ) ) ) ) )).

thf(p1_2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_y: $real] :
      ? [V_x: $real] :
        ( ( '^/2' @ V_y @ 2.0 )
        = ( $product @ ( '^/2' @ V_x @ 2.0 ) @ ( $difference @ 3.0 @ ( '^/2' @ V_x @ 2.0 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '^/2' @ ( '2d.y-coord/1' @ V_p ) @ 2.0 )
                = ( $product @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) @ ( $difference @ 3.0 @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ '2d.Shape' @ V_C @ ( 'nil/0' @ '2d.Shape' ) ) ) ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( ( $lesseq @ ( $uminus @ ( 'sqrt/1' @ 3.0 ) ) @ V_x_dot_0 )
      & ( $lesseq @ V_x_dot_0 @ ( 'sqrt/1' @ 3.0 ) ) ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_y_dot_0: $real] :
      ( ( $lesseq @ ( $uminus @ ( $quotient @ 3.0 @ 2.0 ) ) @ V_y_dot_0 )
      & ( $lesseq @ V_y_dot_0 @ ( $quotient @ 3.0 @ 2.0 ) ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( V_S_dot_0
      = ( $product @ 4.0 @ ( 'sqrt/1' @ 3.0 ) ) ) ),
    answer_to(p2_question,[])).

