%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2C014
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  206 (  16 equality;  59 variable)
%            Maximal formula depth :   20 (  18 average)
%            Number of connectives :  172 (   1   ~;   1   |;  13   &; 151   @)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :;   0   =)
%            Number of variables   :   29 (   0 sgn;   8   !;   9   ?;  12   ^)
%                                         (  29   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   1 pred;    3 func;    5 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ? [V_C: '2d.Shape',V_C1: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
      ( ( V_C
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
              ( ( '^/2' @ 2.0 @ 2.0 )
              = ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_0 @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y_dot_0 @ 2.0 ) @ 2.0 ) ) ) ) )
      & ( V_C1
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( ( '^/2' @ ( 'sqrt/1' @ 2.0 ) @ 2.0 )
              = ( $sum @ ( '^/2' @ ( $difference @ V_x @ 2.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y @ 3.0 ) @ 2.0 ) ) ) ) )
      & ( V_P != V_Q )
      & ( '2d.intersect/3' @ V_C @ V_C1 @ V_P )
      & ( '2d.intersect/3' @ V_C @ V_C1 @ V_Q )
      & ! [V_R: '2d.Point'] :
          ( ( '2d.intersect/3' @ V_C @ V_C1 @ V_R )
         => ( ( V_P = V_R )
            | ( V_Q = V_R ) ) ) ) )).

thf(p2,conjecture,(
    ? [V_C: '2d.Shape',V_C2: '2d.Shape'] :
      ( ( V_C
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
              ( ( '^/2' @ 2.0 @ 2.0 )
              = ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_0 @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y_dot_0 @ 2.0 ) @ 2.0 ) ) ) ) )
      & ( V_C2
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( ( '^/2' @ ( $product @ 2.0 @ ( 'sqrt/1' @ 2.0 ) ) @ 2.0 )
              = ( $sum @ ( '^/2' @ ( $sum @ V_x @ 2.0 ) @ 2.0 ) @ ( '^/2' @ ( $sum @ V_y @ 2.0 ) @ 2.0 ) ) ) ) )
      & ! [V_P: '2d.Point'] :
          ( ( '2d.on/2' @ V_P @ V_C )
         => ( '2d.point-outside-of/2' @ V_P @ V_C2 ) )
      & ! [V_Q: '2d.Point'] :
          ( ( '2d.on/2' @ V_Q @ V_C2 )
         => ( '2d.point-outside-of/2' @ V_Q @ V_C ) ) ) )).

thf(p3,conjecture,(
    ? [V_C: '2d.Shape',V_C3: '2d.Shape',V_P: '2d.Point'] :
      ( ( V_C
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x_dot_2: $real,V_y_dot_2: $real] :
              ( ( '^/2' @ 2.0 @ 2.0 )
              = ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_2 @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y_dot_2 @ 2.0 ) @ 2.0 ) ) ) ) )
      & ( V_C3
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
              ( ( '^/2' @ ( $difference @ ( $product @ 2.0 @ ( 'sqrt/1' @ 5.0 ) ) @ 2.0 ) @ 2.0 )
              = ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_1 @ 3.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y_dot_1 @ 6.0 ) @ 2.0 ) ) ) ) )
      & ( '2d.intersect/3' @ V_C @ V_C3 @ V_P )
      & ! [V_Q: '2d.Point'] :
          ( ( '2d.intersect/3' @ V_C @ V_C3 @ V_Q )
         => ( V_P = V_Q ) )
      & ! [V_x_dot_0: $real,V_y_dot_0: $real] :
          ( ( '2d.on/2' @ ( '2d.point/2' @ V_x_dot_0 @ V_y_dot_0 ) @ V_C )
         => ( $lesseq @ ( '^/2' @ ( $difference @ ( $product @ 2.0 @ ( 'sqrt/1' @ 5.0 ) ) @ 2.0 ) @ 2.0 ) @ ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_0 @ 3.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y_dot_0 @ 6.0 ) @ 2.0 ) ) ) )
      & ! [V_x: $real,V_y: $real] :
          ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_C3 )
         => ( $lesseq @ ( '^/2' @ 2.0 @ 2.0 ) @ ( $sum @ ( '^/2' @ ( $difference @ V_x @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y @ 2.0 ) @ 2.0 ) ) ) ) ) )).

