%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3R139
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   54 (   6 equality;  11 variable)
%            Maximal formula depth :   17 (  13 average)
%            Number of connectives :   40 (   0   ~;   0   |;   3   &;  37   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_f: '2d.Shape',V_l1: '2d.Shape',V_l2: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '//2' @ ( '-/2' @ 1 @ V_x ) @ ( '+/2' @ 2 @ V_x ) ) ) ) )
        & ( V_l1
          = ( '2d.line/2' @ ( '2d.point/2' @ -1 @ 0 ) @ ( '2d.point/2' @ -1 @ 1 ) ) )
        & ( V_l2
          = ( '2d.line/2' @ ( '2d.point/2' @ 2 @ 0 ) @ ( '2d.point/2' @ 2 @ 1 ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_f @ ( 'cons/2' @ V_l1 @ ( 'cons/2' @ V_l2 @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '+/2' @ ( '*/2' @ 6 @ ( 'ln/1' @ ( '//2' @ 3 @ 2 ) ) ) @ -1 ) ) ),
    answer_to(p_question,[])).
