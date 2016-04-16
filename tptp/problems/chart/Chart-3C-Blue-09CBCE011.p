%% DOMAIN:    Algebraic Curves
%% THEORY:    RCF+PA
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CBCE011
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    5 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :  220 (  12 equality;  66 variable)
%            Maximal formula depth :   22 (  15 average)
%            Number of connectives :  195 (   2   ~;   1   |;  24   &; 166   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   1   :;   0   =)
%            Number of variables   :   22 (   0 sgn;   6   !;   6   ?;  10   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   15 (   4 pred;    6 func;    5 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf(p1,conjecture,(
    ! [V_a: $real,V_P: '2d.Point',V_x0: $real,V_y0: $real,V_L: '2d.Shape'] :
      ( ( ( V_L
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( V_y
                = ( $product @ V_a @ V_x ) ) ) )
        & ( V_P
          = ( '2d.point/2' @ V_x0 @ V_y0 ) )
        & ( '2d.line-type/1' @ V_L ) )
     => ( ( $quotient @ ( 'abs/1' @ ( $sum @ ( $product @ V_a @ V_x0 ) @ ( $uminus @ V_y0 ) ) ) @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( '^/2' @ V_a @ 2.0 ) ) ) )
        = ( '2d.point-shape-distance/2' @ V_P @ V_L ) ) ) )).

thf(p21_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_D: '2d.Shape'] :
      ? [V_a: $real,V_P: ( $real > $real > $o )] :
        ( ( V_a = 1.0 )
        & ( V_P
          = ( ^ [V_x: $real,V_y: $real] :
                ( ( $less @ 0.0 @ V_x )
                & ( $less @ 0.0 @ V_y )
                & ( $less @ 0.0 @ ( $quotient @ ( 'abs/1' @ ( $sum @ ( $product @ V_a @ V_x ) @ ( $uminus @ V_y ) ) ) @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( '^/2' @ V_a @ 2.0 ) ) ) ) )
                & ( $less @ ( $quotient @ ( 'abs/1' @ ( $sum @ ( $product @ V_a @ V_x ) @ ( $uminus @ V_y ) ) ) @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( '^/2' @ V_a @ 2.0 ) ) ) ) @ ( $quotient @ ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) @ ( $sum @ V_x @ V_y ) ) ) ) ) )
        & ( V_D
          = ( '2d.set-of-cfun/1' @ V_P ) ) ) )).

thf(p22,conjecture,(
    ? [V_P: ( $int > $int > $o )] :
      ( ( V_P
        = ( ^ [V_x0: $int,V_y0: $int] :
              ( ( $less @ 0.0 @ ( $to_real @ V_x0 ) )
              & ( $less @ 0.0 @ ( $to_real @ V_y0 ) )
              & ( $less @ 0.0 @ ( $quotient @ ( 'abs/1' @ ( $sum @ ( $product @ 'a/0' @ ( $to_real @ V_x0 ) ) @ ( $uminus @ ( $to_real @ V_y0 ) ) ) ) @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) ) )
              & ( $less @ ( $quotient @ ( 'abs/1' @ ( $sum @ ( $product @ 'a/0' @ ( $to_real @ V_x0 ) ) @ ( $uminus @ ( $to_real @ V_y0 ) ) ) ) @ ( 'sqrt/1' @ ( $sum @ 1.0 @ ( '^/2' @ 'a/0' @ 2.0 ) ) ) ) @ ( $quotient @ ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) @ ( $sum @ ( $to_real @ V_x0 ) @ ( $to_real @ V_y0 ) ) ) ) ) ) )
      & ! [V_a_dot_0: $real] :
          ( ( $is_rat @ V_a_dot_0 )
         => ? [V_n: $int] :
              ( ( $is_int @ V_n )
              & ( $lesseq @ 0 @ V_n )
              & ( 'is-cardinality-of/2' @ ( 'ListOf' @ $int ) @ V_n
                @ ( 'set-by-def/1' @ ( 'ListOf' @ $int )
                  @ ^ [V_p: ( 'ListOf' @ $int )] :
                    ? [V_x: $int,V_y: $int] :
                      ( ( V_x
                        = ( 'car/1' @ $int @ V_p ) )
                      & ( V_y
                        = ( 'cadr/1' @ $int @ V_p ) )
                      & ( $is_int @ V_x )
                      & ( $is_int @ V_y )
                      & ( 'PLamApp/2' @ $int @ ( V_P @ V_x ) @ V_y ) ) ) ) ) ) ) )).

thf(p21_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( ( $less @ 0.0 @ V_x_dot_0 )
          & ( $less @ V_x_dot_0 @ 2.0 )
          & ( $less @ 0.0 @ V_y_dot_0 )
          & ( $less @ V_y_dot_0 @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ 4.0 ) ) )
          & ( V_x_dot_0 != V_y_dot_0 ) )
        | ( ( $lesseq @ 2.0 @ V_x_dot_0 )
          & ( $less @ ( 'sqrt/1' @ ( $difference @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ 4.0 ) ) @ V_y_dot_0 )
          & ( $less @ V_y_dot_0 @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ V_x_dot_0 @ 2.0 ) @ 4.0 ) ) )
          & ( V_x_dot_0 != V_y_dot_0 ) ) ) ),
    answer_to(p21_question,[])).

