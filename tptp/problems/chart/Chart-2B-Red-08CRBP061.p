%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CRBP061
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  186 (  21 equality;  73 variable)
%            Maximal formula depth :   26 (  18 average)
%            Number of connectives :  144 (   0   ~;   0   |;  21   &; 123   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :   41 (   0 sgn;   0   !;  25   ?;  16   ^)
%                                         (  41   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_O: '2d.Point',V_C1: '2d.Shape',V_C2: '2d.Shape',V_max: 'R',V_min: 'R'] :
        ( ( V_O = '2d.origin/0' )
        & ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( 4
                = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ 2 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y_dot_0 @ 2 ) @ 2 ) ) ) ) )
        & ( V_C2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 1
                = ( '+/2' @ ( '^/2' @ ( '+/2' @ V_x @ 1 ) @ 2 ) @ ( '^/2' @ ( '+/2' @ V_y @ 1 ) @ 2 ) ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v_dot_0: 'R'] :
              ? [V_P_dot_0: '2d.Point',V_Q_dot_0: '2d.Point'] :
                ( ( '2d.on/2' @ V_P_dot_0 @ V_C1 )
                & ( '2d.on/2' @ V_Q_dot_0 @ V_C2 )
                & ( V_v_dot_0
                  = ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_O @ V_P_dot_0 ) @ ( '2d.vec/2' @ V_O @ V_Q_dot_0 ) ) ) ) )
          @ V_min )
        & ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_P: '2d.Point',V_Q: '2d.Point'] :
                ( ( '2d.on/2' @ V_P @ V_C1 )
                & ( '2d.on/2' @ V_Q @ V_C2 )
                & ( V_v
                  = ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_O @ V_P ) @ ( '2d.vec/2' @ V_O @ V_Q ) ) ) ) )
          @ V_max )
        & ( V_answer
          = ( 'cons/2' @ V_max @ ( 'cons/2' @ V_min @ 'nil/0' ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_max: 'R',V_min: 'R'] :
        ( ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( 1
                = ( '+/2' @ ( '^/2' @ V_x_dot_1 @ 2 ) @ ( '^/2' @ V_y_dot_1 @ 2 ) ) ) ) )
        & ( V_C2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_u_dot_1: 'R',V_v_dot_1: 'R'] :
                ( 4
                = ( '+/2' @ ( '^/2' @ V_u_dot_1 @ 2 ) @ ( '^/2' @ V_v_dot_1 @ 2 ) ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_value_dot_0: 'R'] :
              ? [V_x_dot_0: 'R',V_y_dot_0: 'R',V_u_dot_0: 'R',V_v_dot_0: 'R'] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ V_x_dot_0 @ V_y_dot_0 ) @ V_C1 )
                & ( '2d.on/2' @ ( '2d.point/2' @ V_u_dot_0 @ V_v_dot_0 ) @ V_C2 )
                & ( V_value_dot_0
                  = ( '+/2' @ ( '*/2' @ V_x_dot_0 @ V_u_dot_0 ) @ ( '*/2' @ V_y_dot_0 @ V_v_dot_0 ) ) ) ) )
          @ V_min )
        & ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_value: 'R'] :
              ? [V_x: 'R',V_y: 'R',V_u: 'R',V_v: 'R'] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_C1 )
                & ( '2d.on/2' @ ( '2d.point/2' @ V_u @ V_v ) @ V_C2 )
                & ( V_value
                  = ( '+/2' @ ( '*/2' @ V_x @ V_u ) @ ( '*/2' @ V_y @ V_v ) ) ) ) )
          @ V_max )
        & ( V_answer
          = ( 'cons/2' @ V_max @ ( 'cons/2' @ V_min @ 'nil/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
    ? [V_max_dot_0: 'R',V_min_dot_0: 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_max_dot_0 @ ( 'cons/2' @ V_min_dot_0 @ 'nil/0' ) ) )
      & ( V_max_dot_0 = 0 )
      & ( V_min_dot_0
        = ( '+/2' @ -6 @ ( '*/2' @ -4 @ ( 'sqrt/1' @ 2 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
    ? [V_max_dot_0: 'R',V_min_dot_0: 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_max_dot_0 @ ( 'cons/2' @ V_min_dot_0 @ 'nil/0' ) ) )
      & ( V_max_dot_0 = 2 )
      & ( V_min_dot_0 = -2 ) ) ),
    answer_to(p2_question,[])).
