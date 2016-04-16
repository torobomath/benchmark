%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P165
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  117 (   3 equality;  30 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :  109 (   0   ~;   4   |;  12   &;  93   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   2   ?;   5   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   2 pred;    5 func;    4 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'draw/1' @ '2d.Point'
    @ ^ [V_D: '2d.Point'] :
      ? [V_Ca: '2d.Shape',V_a: $real] :
        ( ( V_Ca
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( ( $sum @ ( '^/2' @ V_a @ 2.0 ) @ 1.0 )
                = ( $sum @ ( '^/2' @ ( $difference @ V_x @ V_a ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y @ V_a ) @ 2.0 ) ) ) ) )
        & ( $lesseq @ 0.0 @ V_a )
        & ( '2d.on/2' @ V_D @ V_Ca ) ) )).

thf(p_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( ( $lesseq @ -1.0 @ V_x_dot_0 )
          & ( $lesseq @ V_x_dot_0 @ ( $quotient @ -1.0 @ ( 'sqrt/1' @ 2.0 ) ) )
          & ( $lesseq @ ( $uminus @ ( 'sqrt/1' @ ( $difference @ 1.0 @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) ) @ V_y_dot_0 )
          & ( $lesseq @ V_y_dot_0 @ ( 'sqrt/1' @ ( $difference @ 1.0 @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) ) )
        | ( ( $less @ ( $quotient @ -1.0 @ ( 'sqrt/1' @ 2.0 ) ) @ V_x_dot_0 )
          & ( $less @ V_x_dot_0 @ 0.0 )
          & ( $lesseq @ ( $uminus @ ( 'sqrt/1' @ ( $difference @ 1.0 @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) ) @ V_y_dot_0 )
          & ( $lesseq @ V_y_dot_0 @ ( $quotient @ -1.0 @ ( $product @ 2.0 @ V_x_dot_0 ) ) ) )
        | ( ( V_x_dot_0 = 0.0 )
          & ( $lesseq @ -1.0 @ V_y_dot_0 ) )
        | ( ( $less @ 0.0 @ V_x_dot_0 )
          & ( $lesseq @ V_x_dot_0 @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) )
          & ( $lesseq @ ( $uminus @ ( 'sqrt/1' @ ( $difference @ 1.0 @ ( '^/2' @ V_x_dot_0 @ 2.0 ) ) ) ) @ V_y_dot_0 ) )
        | ( ( $lesseq @ ( $quotient @ 1.0 @ ( 'sqrt/1' @ 2.0 ) ) @ V_x_dot_0 )
          & ( $lesseq @ ( $quotient @ -1.0 @ ( $product @ 2.0 @ V_x_dot_0 ) ) @ V_y_dot_0 ) ) ) ),
    answer_to(p_question,[])).

