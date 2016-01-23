%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBE002
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  157 (  15 equality;  61 variable)
%            Maximal formula depth :   27 (  18 average)
%            Number of connectives :  127 (   0   ~;   0   |;  15   &; 112   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   31 (   0   :)
%            Number of variables   :   25 (   0 sgn;   0   !;  19   ?;   6   ^)
%                                         (  25   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_b: '2d.Vector',V_c: '2d.Vector',V_p: '2d.Vector',V_K: '2d.Shape',V_P: '2d.Point',V_x: 'R',V_y: 'R'] :
        ( ( V_b
          = ( '2d.vec/2' @ V_A @ V_B ) )
        & ( V_c
          = ( '2d.vec/2' @ V_A @ V_C ) )
        & ( V_p
          = ( '2d.vec/2' @ V_A @ V_P ) )
        & ( 1
          = ( '2d.distance/2' @ V_A @ V_B ) )
        & ( '2d.is-equilateral-triangle/3' @ V_A @ V_B @ V_C )
        & ( '2d.circle-type/1' @ V_K )
        & ( '2d.is-inscribed-in/2' @ ( '2d.triangle/3' @ V_A @ V_B @ V_C ) @ V_K )
        & ( '2d.on/2' @ V_P @ V_K )
        & ( V_p
          = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_x @ V_b ) @ ( '2d.sv*/2' @ V_y @ V_c ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_E: '2d.Shape',V_x: 'R',V_y: 'R',V_u: 'R',V_v: 'R'] :
        ( ( V_E
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( 0
                = ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '+/2' @ ( '^/2' @ V_y_dot_0 @ 2 ) @ ( '+/2' @ ( '*/2' @ V_x_dot_0 @ V_y_dot_0 ) @ ( '+/2' @ ( '-/1' @ V_x_dot_0 ) @ ( '-/1' @ V_y_dot_0 ) ) ) ) ) ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_E )
        & ( V_u
          = ( '+/2' @ V_x @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ V_y ) ) )
        & ( V_v
          = ( '*/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 2 ) @ V_y ) )
        & ( V_answer
          = ( 'cons/2' @ V_u @ ( 'cons/2' @ V_v @ 'nil/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
    ? [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x_dot_0 @ ( 'cons/2' @ V_y_dot_0 @ 'nil/0' ) ) )
      & ( 0
        = ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '+/2' @ ( '^/2' @ V_y_dot_0 @ 2 ) @ ( '+/2' @ ( '*/2' @ V_x_dot_0 @ V_y_dot_0 ) @ ( '+/2' @ ( '-/1' @ V_x_dot_0 ) @ ( '-/1' @ V_y_dot_0 ) ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
    ? [V_u_dot_0: 'R',V_v_dot_0: 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_u_dot_0 @ ( 'cons/2' @ V_v_dot_0 @ 'nil/0' ) ) )
      & ( ( '//2' @ 1 @ 3 )
        = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_u_dot_0 @ ( '//2' @ 1 @ 2 ) ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_v_dot_0 @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 6 ) ) @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).
