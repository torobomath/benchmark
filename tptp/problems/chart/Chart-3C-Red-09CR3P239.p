%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P239
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   77 (  11 equality;  24 variable)
%            Maximal formula depth :   17 (  12 average)
%            Number of connectives :   52 (   0   ~;   0   |;   5   &;  46   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   14 (   0 sgn;   1   !;   5   ?;   8   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ? [V_C1: 'R' > 'R',V_C2: 'R' > 'R',V_x: 'R'] :
      ( ( V_C1
        = ( ^ [V_x_dot_1: 'R'] :
              ( '*/2' @ 2 @ ( 'sqrt/1' @ ( '-/2' @ V_x_dot_1 @ 1 ) ) ) ) )
      & ( V_C2
        = ( ^ [V_x_dot_0: 'R'] :
              ( '+/2' @ ( 'ln/1' @ ( '-/2' @ V_x_dot_0 @ 1 ) ) @ 2 ) ) )
      & ( ( 'LamApp/2' @ V_C1 @ V_x )
        = ( 'LamApp/2' @ V_C2 @ V_x ) )
      & ! [V_x0: 'R'] :
          ( ( ( 'LamApp/2' @ V_C1 @ V_x0 )
            = ( 'LamApp/2' @ V_C2 @ V_x0 ) )
         => ( V_x = V_x0 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C1: '2d.Shape',V_C2: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( V_y_dot_0
                = ( '*/2' @ 2 @ ( 'sqrt/1' @ ( '-/2' @ V_x_dot_0 @ 1 ) ) ) ) ) )
        & ( V_C2
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( V_y
                = ( '+/2' @ ( 'ln/1' @ ( '-/2' @ V_x @ 1 ) ) @ 2 ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C1 @ ( 'cons/2' @ V_C2 @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '+/2' @ ( '//2' @ 1 @ 3 ) @ ( '//2' @ -1 @ ( 'exp/1' @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).
