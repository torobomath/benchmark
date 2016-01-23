%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3R152
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  155 (  10 equality;  52 variable)
%            Maximal formula depth :   36 (  24 average)
%            Number of connectives :  135 (   0   ~;   0   |;  13   &; 122   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    8 (   8   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (   0   :)
%            Number of variables   :   27 (   0 sgn;   0   !;  12   ?;  15   ^)
%                                         (  27   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_E: 'R' > '2d.Shape',V_Eab: 'R' > 'R' > '2d.Shape',V_l1: 'R' > '2d.Shape',V_D2: 'R' > 'R' > '2d.Shape',V_D3: 'R' > 'R' > '3d.Shape'] :
        ( ( V_E
          = ( ^ [V_a_dot_3: 'R'] :
                ( '2d.graph-of-implicit-function/1'
                @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                    ( '+/2' @ ( '+/2' @ ( '//2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ ( '^/2' @ V_a_dot_3 @ 2 ) ) @ ( '^/2' @ V_y_dot_0 @ 2 ) ) @ -1 ) ) ) )
        & ( V_Eab
          = ( ^ [V_a_dot_2: 'R',V_b_dot_3: 'R'] :
                ( '2d.set-of-cfun/1'
                @ ^ [V_x: 'R',V_y: 'R'] :
                    ( ( '<=/2' @ V_b_dot_3 @ V_x )
                    & ( '<=/2' @ V_x @ V_a_dot_2 )
                    & ( 1
                      = ( '+/2' @ ( '//2' @ ( '^/2' @ V_x @ 2 ) @ ( '^/2' @ V_a_dot_2 @ 2 ) ) @ ( '^/2' @ V_y @ 2 ) ) ) ) ) ) )
        & ( V_l1
          = ( ^ [V_b_dot_2: 'R'] :
                ( '2d.line/2' @ ( '2d.point/2' @ V_b_dot_2 @ 0 ) @ ( '2d.point/2' @ V_b_dot_2 @ 1 ) ) ) )
        & ( V_D2
          = ( ^ [V_a_dot_1: 'R',V_b_dot_1: 'R'] :
                ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( 'LamApp/2' @ ( 'LamApp/2' @ V_Eab @ V_a_dot_1 ) @ V_b_dot_1 ) @ ( 'cons/2' @ ( 'LamApp/2' @ V_l1 @ V_b_dot_1 ) @ 'nil/0' ) ) ) ) )
        & ( V_D3
          = ( ^ [V_a_dot_0: 'R',V_b_dot_0: 'R'] :
                ( '3d.import-2d-shape/1' @ ( 'LamApp/2' @ ( 'LamApp/2' @ V_D2 @ V_a_dot_0 ) @ V_b_dot_0 ) ) ) )
        & ? [V_a: 'R',V_b: 'R',V_max: 'R'] :
            ( ( '</2' @ 0 @ V_a )
            & ( '</2' @ V_a @ 1 )
            & ? [V_by: 'R'] :
                ( '2d.tangent/3' @ ( '2d.line/2' @ ( '2d.point/2' @ 1 @ 0 ) @ ( '2d.point/2' @ V_b @ V_by ) ) @ ( 'LamApp/2' @ V_E @ V_a ) @ ( '2d.point/2' @ V_b @ V_by ) )
            & ( V_max
              = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( 'LamApp/2' @ ( 'LamApp/2' @ V_D3 @ V_a ) @ V_b ) @ '3d.x-axis/0' ) ) )
            & ( 'maximum/2'
              @ ( 'set-by-def/1'
                @ ^ [V_v: 'R'] :
                  ? [V_a0: 'R',V_b0: 'R'] :
                    ( ? [V_by0: 'R'] :
                        ( '2d.tangent/3' @ ( '2d.line/2' @ ( '2d.point/2' @ 1 @ 0 ) @ ( '2d.point/2' @ V_b0 @ V_by0 ) ) @ ( 'LamApp/2' @ V_E @ V_a0 ) @ ( '2d.point/2' @ V_b0 @ V_by0 ) )
                    & ( V_v
                      = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( 'LamApp/2' @ ( 'LamApp/2' @ V_D3 @ V_a0 ) @ V_b0 ) @ '3d.x-axis/0' ) ) ) ) )
              @ V_max )
            & ( V_answer
              = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_max @ 'nil/0' ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ ( '//2' @ ( '+/2' @ -1 @ ( 'sqrt/1' @ 3 ) ) @ 2 ) @ ( 'cons/2' @ ( '*/2' @ ( '//2' @ ( '+/2' @ -3 @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) ) @ 4 ) @ 'Pi/0' ) @ 'nil/0' ) ) ) ),
    answer_to(p_question,[])).
