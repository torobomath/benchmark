%% DOMAIN:    Algebraic Curves
%% THEORY:    RCF+PA
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CBCE011
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  213 (  12 equality;  70 variable)
%            Maximal formula depth :   22 (  18 average)
%            Number of connectives :  188 (   2   ~;   1   |;  24   &; 159   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   0   :)
%            Number of variables   :   23 (   0 sgn;   6   !;   6   ?;  10   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_a: 'R',V_P: '2d.Point',V_x0: 'R',V_y0: 'R',V_L: '2d.Shape'] :
      ( ( ( V_L
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '*/2' @ V_a @ V_x ) ) ) )
        & ( V_P
          = ( '2d.point/2' @ V_x0 @ V_y0 ) )
        & ( '2d.line-type/1' @ V_L ) )
     => ( ( '//2' @ ( 'abs/1' @ ( '+/2' @ ( '*/2' @ V_a @ V_x0 ) @ ( '-/1' @ V_y0 ) ) ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '^/2' @ V_a @ 2 ) ) ) )
        = ( '2d.point-shape-distance/2' @ V_P @ V_L ) ) ) )).

thf(p21_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Shape'] :
      ? [V_a: 'R',V_P: 'R' > 'R' > $o] :
        ( ( V_a = 1 )
        & ( V_P
          = ( ^ [V_x: 'R',V_y: 'R'] :
                ( ( '</2' @ 0 @ V_x )
                & ( '</2' @ 0 @ V_y )
                & ( '</2' @ 0 @ ( '//2' @ ( 'abs/1' @ ( '+/2' @ ( '*/2' @ V_a @ V_x ) @ ( '-/1' @ V_y ) ) ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '^/2' @ V_a @ 2 ) ) ) ) )
                & ( '</2' @ ( '//2' @ ( 'abs/1' @ ( '+/2' @ ( '*/2' @ V_a @ V_x ) @ ( '-/1' @ V_y ) ) ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '^/2' @ V_a @ 2 ) ) ) ) @ ( '//2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) @ ( '+/2' @ V_x @ V_y ) ) ) ) ) )
        & ( V_D
          = ( '2d.set-of-cfun/1' @ V_P ) ) ) )).

thf(p22,conjecture,(
    ? [V_P: 'Z' > 'Z' > $o] :
      ( ( V_P
        = ( ^ [V_x0: 'Z',V_y0: 'Z'] :
              ( ( '</2' @ 0 @ ( 'int->real/1' @ V_x0 ) )
              & ( '</2' @ 0 @ ( 'int->real/1' @ V_y0 ) )
              & ( '</2' @ 0 @ ( '//2' @ ( 'abs/1' @ ( '+/2' @ ( '*/2' @ V_a @ ( 'int->real/1' @ V_x0 ) ) @ ( '-/1' @ ( 'int->real/1' @ V_y0 ) ) ) ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '^/2' @ V_a @ 2 ) ) ) ) )
              & ( '</2' @ ( '//2' @ ( 'abs/1' @ ( '+/2' @ ( '*/2' @ V_a @ ( 'int->real/1' @ V_x0 ) ) @ ( '-/1' @ ( 'int->real/1' @ V_y0 ) ) ) ) @ ( 'sqrt/1' @ ( '+/2' @ 1 @ ( '^/2' @ V_a @ 2 ) ) ) ) @ ( '//2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) @ ( '+/2' @ ( 'int->real/1' @ V_x0 ) @ ( 'int->real/1' @ V_y0 ) ) ) ) ) ) )
      & ! [V_a_dot_0: 'R'] :
          ( ( 'is-rational/1' @ V_a_dot_0 )
         => ? [V_n: 'Z'] :
              ( ( 'int.is-integer/1' @ V_n )
              & ( 'int.<=/2' @ 0 @ V_n )
              & ( 'is-cardinality-of/2' @ V_n
                @ ( 'set-by-def/1'
                  @ ^ [V_p: 'ListOf' @ 'Z'] :
                    ? [V_x: 'Z',V_y: 'Z'] :
                      ( ( V_x
                        = ( 'car/1' @ V_p ) )
                      & ( V_y
                        = ( 'cadr/1' @ V_p ) )
                      & ( 'int.is-integer/1' @ V_x )
                      & ( 'int.is-integer/1' @ V_y )
                      & ( 'PLamApp/2' @ ( 'LamApp/2' @ V_P @ V_x ) @ V_y ) ) ) ) ) ) ) )).

thf(p21_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( ( ( '</2' @ 0 @ V_x_dot_0 )
          & ( '</2' @ V_x_dot_0 @ 2 )
          & ( '</2' @ 0 @ V_y_dot_0 )
          & ( '</2' @ V_y_dot_0 @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ 4 ) ) )
          & ( V_x_dot_0 != V_y_dot_0 ) )
        | ( ( '<=/2' @ 2 @ V_x_dot_0 )
          & ( '</2' @ ( 'sqrt/1' @ ( '-/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ 4 ) ) @ V_y_dot_0 )
          & ( '</2' @ V_y_dot_0 @ ( 'sqrt/1' @ ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ 4 ) ) )
          & ( V_x_dot_0 != V_y_dot_0 ) ) ) ),
    answer_to(p21_question,[])).
