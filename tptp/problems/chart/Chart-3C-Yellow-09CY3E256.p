%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E256
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  116 (  12 equality;  23 variable)
%            Maximal formula depth :   17 (  11 average)
%            Number of connectives :   86 (   0   ~;   0   |;   5   &;  81   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   34 (   0   :)
%            Number of variables   :   13 (   0 sgn;   0   !;   3   ?;   9   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P )
                = ( '+/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 4 ) @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 2 ) ) ) @ 2 ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( ( '2d.y-coord/1' @ V_P )
                  = ( '-/2' @ ( '*/2' @ 2 @ ( 'sin/1' @ ( '2d.x-coord/1' @ V_P ) ) ) @ ( 'sin/1' @ ( '*/2' @ 2 @ ( '2d.x-coord/1' @ V_P ) ) ) ) )
                & ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ ( '*/2' @ 2 @ 'Pi/0' ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( '2d.y-coord/1' @ V_P )
                = ( '+/2' @ 10 @ ( '+/2' @ ( '-/1' @ ( '*/2' @ 9 @ ( 'exp/1' @ ( '-/1' @ ( '2d.x-coord/1' @ V_P ) ) ) ) ) @ ( '-/1' @ ( 'exp/1' @ ( '2d.x-coord/1' @ V_P ) ) ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ ( '*/2' @ 8 @ ( '-/2' @ 3 @ ( 'sqrt/1' @ 2 ) ) ) @ 5 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] : ( V_S_dot_0 = 8 ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '-/2' @ ( '*/2' @ 20 @ ( 'ln/1' @ 3 ) ) @ 16 ) ) ),
    answer_to(p3_question,[])).
