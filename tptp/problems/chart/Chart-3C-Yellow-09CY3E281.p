%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E281
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   47 (   4 equality;  12 variable)
%            Maximal formula depth :   17 (  14 average)
%            Number of connectives :   37 (   0   ~;   0   |;   5   &;  32   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :    6 (   0 sgn;   0   !;   2   ?;   4   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_D2: '2d.Shape',V_D3: '3d.Shape'] :
        ( ( V_D2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ ( '//2' @ 'Pi/0' @ 2 ) )
                & ( '<=/2' @ ( '-/1' @ ( 'sin/1' @ V_x ) ) @ V_y )
                & ( '<=/2' @ V_y @ ( 'cos/1' @ ( '*/2' @ 2 @ V_x ) ) ) ) ) )
        & ( V_D3
          = ( '3d.import-2d-shape/1' @ V_D2 ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_D3 @ '3d.x-axis/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '//2' @ ( '*/2' @ 'Pi/0' @ ( '+/2' @ ( '*/2' @ 2 @ 'Pi/0' ) @ ( '*/2' @ 3 @ ( 'sqrt/1' @ 3 ) ) ) ) @ 16 ) ) ),
    answer_to(p_question,[])).
