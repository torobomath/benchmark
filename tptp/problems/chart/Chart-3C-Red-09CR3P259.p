%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P259
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   50 (   6 equality;  14 variable)
%            Maximal formula depth :   22 (  14 average)
%            Number of connectives :   36 (   0   ~;   0   |;   5   &;  31   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   3   ?;   4   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_D2: '2d.Shape',V_D3: '3d.Shape'] :
        ( ( V_D2
          = ( '2d.shape-enclosed-by/1'
            @ ( 'cons/2'
              @ ( '2d.set-of-cfun/1'
                @ ^ [V_x: 'R',V_y: 'R'] :
                  ? [V_theta: 'R'] :
                    ( ( '<=/2' @ 0 @ V_theta )
                    & ( '</2' @ V_theta @ ( '*/2' @ 2 @ 'Pi/0' ) )
                    & ( V_x
                      = ( '*/2' @ ( '+/2' @ 1 @ ( 'cos/1' @ V_theta ) ) @ ( 'cos/1' @ V_theta ) ) )
                    & ( V_y
                      = ( '*/2' @ ( '+/2' @ 1 @ ( 'cos/1' @ V_theta ) ) @ ( 'sin/1' @ V_theta ) ) ) ) )
              @ 'nil/0' ) ) )
        & ( V_D3
          = ( '3d.import-2d-shape/1' @ V_D2 ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ V_D3 @ '3d.x-axis/0' ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '*/2' @ ( '//2' @ 8 @ 3 ) @ 'Pi/0' ) ) ),
    answer_to(p_question,[])).
