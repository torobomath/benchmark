%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P341
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   64 (   8 equality;  21 variable)
%            Maximal formula depth :   14 (  11 average)
%            Number of connectives :   44 (   0   ~;   0   |;   6   &;  38   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :;   0   =)
%            Number of variables   :   11 (   0 sgn;   0   !;   3   ?;   8   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    7 (   1 pred;    2 func;    4 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_f: '2d.Shape'] :
        ( V_f
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: $real,V_y: $real] :
              ( ( V_y
                = ( $product @ ( 'abs/1' @ ( $difference @ V_x @ 3.0 ) ) @ ( 'sqrt/1' @ V_x ) ) )
              & ( $lesseq @ 0.0 @ V_x ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_alpha: $real] :
      ? [V_f: ( $real > $real ),V_S1: $real,V_S2: $real] :
        ( ( V_f
          = ( ^ [V_x: $real] :
                ( $product @ ( 'abs/1' @ ( $difference @ V_x @ 3.0 ) ) @ ( 'sqrt/1' @ V_x ) ) ) )
        & ( V_S1
          = ( 'integral/3' @ V_f @ 0.0 @ 3.0 ) )
        & ( V_S2
          = ( 'integral/3' @ V_f @ 3.0 @ V_alpha ) )
        & ( V_S1 = V_S2 ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: $real,V_y_dot_0: $real] :
        ( ( ( '^/2' @ V_y_dot_0 @ 2.0 )
          = ( $product @ ( '^/2' @ ( $difference @ V_x_dot_0 @ 3.0 ) @ 2.0 ) @ V_x_dot_0 ) )
        & ( $lesseq @ 0.0 @ V_y_dot_0 )
        & ( $lesseq @ 0.0 @ V_x_dot_0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_alpha_dot_0: $real] : ( V_alpha_dot_0 = 5.0 ) ),
    answer_to(p2_question,[])).

