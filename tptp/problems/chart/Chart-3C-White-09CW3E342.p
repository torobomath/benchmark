%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3E342
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   52 (   6 equality;  10 variable)
%            Maximal formula depth :   17 (  13 average)
%            Number of connectives :   38 (   0   ~;   0   |;   2   &;  36   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P_dot_0: '2d.Point'] :
                ( ( '+/2' @ ( '//2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_P_dot_0 ) @ 2 ) @ 3 ) @ ( '^/2' @ ( '2d.y-coord/1' @ V_P_dot_0 ) @ 2 ) )
                = 1 ) ) )
        & ( V_C2
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( '+/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_P ) @ 2 ) @ ( '//2' @ ( '^/2' @ ( '2d.y-coord/1' @ V_P ) @ 2 ) @ 3 ) )
                = 1 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C1 @ ( 'cons/2' @ V_C2 @ 'nil/0' ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ ( '*/2' @ 2 @ ( '*/2' @ ( 'sqrt/1' @ 3 ) @ 'Pi/0' ) ) @ 3 ) ) ),
    answer_to(p_question,[])).
