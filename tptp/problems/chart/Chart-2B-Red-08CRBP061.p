%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CRBP061
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  206 (  21 equality;  73 variable)
%            Maximal formula depth :   26 (  18 average)
%            Number of connectives :  164 (   0   ~;   0   |;  21   &; 143   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :;   0   =)
%            Number of variables   :   41 (   0 sgn;   0   !;  25   ?;  16   ^)
%                                         (  41   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   0 pred;    3 func;    7 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_O: '2d.Point',V_C1: '2d.Shape',V_C2: '2d.Shape',V_max: $real,V_min: $real] :
        ( ( V_O = '2d.origin/0' )
        & ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
                ( 4.0
                = ( $sum @ ( '^/2' @ ( $difference @ V_x_dot_0 @ 2.0 ) @ 2.0 ) @ ( '^/2' @ ( $difference @ V_y_dot_0 @ 2.0 ) @ 2.0 ) ) ) ) )
        & ( V_C2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: $real,V_y: $real] :
                ( 1.0
                = ( $sum @ ( '^/2' @ ( $sum @ V_x @ 1.0 ) @ 2.0 ) @ ( '^/2' @ ( $sum @ V_y @ 1.0 ) @ 2.0 ) ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v_dot_0: $real] :
              ? [V_P_dot_0: '2d.Point',V_Q_dot_0: '2d.Point'] :
                ( ( '2d.on/2' @ V_P_dot_0 @ V_C1 )
                & ( '2d.on/2' @ V_Q_dot_0 @ V_C2 )
                & ( V_v_dot_0
                  = ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_O @ V_P_dot_0 ) @ ( '2d.vec/2' @ V_O @ V_Q_dot_0 ) ) ) ) )
          @ V_min )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_P: '2d.Point',V_Q: '2d.Point'] :
                ( ( '2d.on/2' @ V_P @ V_C1 )
                & ( '2d.on/2' @ V_Q @ V_C2 )
                & ( V_v
                  = ( '2d.inner-prod/2' @ ( '2d.vec/2' @ V_O @ V_P ) @ ( '2d.vec/2' @ V_O @ V_Q ) ) ) ) )
          @ V_max )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_max @ ( 'cons/2' @ $real @ V_min @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape',V_max: $real,V_min: $real] :
        ( ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( 1.0
                = ( $sum @ ( '^/2' @ V_x_dot_1 @ 2.0 ) @ ( '^/2' @ V_y_dot_1 @ 2.0 ) ) ) ) )
        & ( V_C2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_u_dot_1: $real,V_v_dot_1: $real] :
                ( 4.0
                = ( $sum @ ( '^/2' @ V_u_dot_1 @ 2.0 ) @ ( '^/2' @ V_v_dot_1 @ 2.0 ) ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_value_dot_0: $real] :
              ? [V_x_dot_0: $real,V_y_dot_0: $real,V_u_dot_0: $real,V_v_dot_0: $real] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ V_x_dot_0 @ V_y_dot_0 ) @ V_C1 )
                & ( '2d.on/2' @ ( '2d.point/2' @ V_u_dot_0 @ V_v_dot_0 ) @ V_C2 )
                & ( V_value_dot_0
                  = ( $sum @ ( $product @ V_x_dot_0 @ V_u_dot_0 ) @ ( $product @ V_y_dot_0 @ V_v_dot_0 ) ) ) ) )
          @ V_min )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_value: $real] :
              ? [V_x: $real,V_y: $real,V_u: $real,V_v: $real] :
                ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_C1 )
                & ( '2d.on/2' @ ( '2d.point/2' @ V_u @ V_v ) @ V_C2 )
                & ( V_value
                  = ( $sum @ ( $product @ V_x @ V_u ) @ ( $product @ V_y @ V_v ) ) ) ) )
          @ V_max )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_max @ ( 'cons/2' @ $real @ V_min @ ( 'nil/0' @ $real ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_max_dot_0: $real,V_min_dot_0: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_max_dot_0 @ ( 'cons/2' @ $real @ V_min_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( V_max_dot_0 = 0.0 )
      & ( V_min_dot_0
        = ( $sum @ -6.0 @ ( $product @ -4.0 @ ( 'sqrt/1' @ 2.0 ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_max_dot_0: $real,V_min_dot_0: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_max_dot_0 @ ( 'cons/2' @ $real @ V_min_dot_0 @ ( 'nil/0' @ $real ) ) ) )
      & ( V_max_dot_0 = 2.0 )
      & ( V_min_dot_0 = -2.0 ) ) ),
    answer_to(p2_question,[])).

