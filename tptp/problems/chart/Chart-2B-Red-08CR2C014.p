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
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   29 (   0 sgn;   8   !;   9   ?;  12   ^)
%                                         (  29   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ? [V_C: '2d.Shape',V_C1: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
      ( ( V_C
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
              ( ( '^/2' @ 2 @ 2 )
              = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ 1 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y_dot_0 @ 2 ) @ 2 ) ) ) ) )
      & ( V_C1
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: 'R',V_y: 'R'] :
              ( ( '^/2' @ ( 'sqrt/1' @ 2 ) @ 2 )
              = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ 2 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y @ 3 ) @ 2 ) ) ) ) )
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
          @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
              ( ( '^/2' @ 2 @ 2 )
              = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ 1 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y_dot_0 @ 2 ) @ 2 ) ) ) ) )
      & ( V_C2
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: 'R',V_y: 'R'] :
              ( ( '^/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) @ 2 )
              = ( '+/2' @ ( '^/2' @ ( '+/2' @ V_x @ 2 ) @ 2 ) @ ( '^/2' @ ( '+/2' @ V_y @ 2 ) @ 2 ) ) ) ) )
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
          @ ^ [V_x_dot_2: 'R',V_y_dot_2: 'R'] :
              ( ( '^/2' @ 2 @ 2 )
              = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_2 @ 1 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y_dot_2 @ 2 ) @ 2 ) ) ) ) )
      & ( V_C3
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
              ( ( '^/2' @ ( '-/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 5 ) ) @ 2 ) @ 2 )
              = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_1 @ 3 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y_dot_1 @ 6 ) @ 2 ) ) ) ) )
      & ( '2d.intersect/3' @ V_C @ V_C3 @ V_P )
      & ! [V_Q: '2d.Point'] :
          ( ( '2d.intersect/3' @ V_C @ V_C3 @ V_Q )
         => ( V_P = V_Q ) )
      & ! [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
          ( ( '2d.on/2' @ ( '2d.point/2' @ V_x_dot_0 @ V_y_dot_0 ) @ V_C )
         => ( '<=/2' @ ( '^/2' @ ( '-/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 5 ) ) @ 2 ) @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ 3 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y_dot_0 @ 6 ) @ 2 ) ) ) )
      & ! [V_x: 'R',V_y: 'R'] :
          ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_C3 )
         => ( '<=/2' @ ( '^/2' @ 2 @ 2 ) @ ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ 1 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y @ 2 ) @ 2 ) ) ) ) ) )).
