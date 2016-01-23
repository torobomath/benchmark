%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P242
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   83 (  10 equality;  20 variable)
%            Maximal formula depth :   19 (  12 average)
%            Number of connectives :   59 (   0   ~;   0   |;   6   &;  53   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :   12 (   0 sgn;   0   !;   4   ?;   8   ^)
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
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
              ? [V_t: 'R'] :
                ( ( V_x
                  = ( '*/2' @ 3 @ ( '^/2' @ V_t @ 2 ) ) )
                & ( V_y
                  = ( '+/2' @ ( '*/2' @ 3 @ V_t ) @ ( '-/1' @ ( '^/2' @ V_t @ 3 ) ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ 'nil/0' ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
              ? [V_theta: 'R'] :
                ( ( '<=/2' @ ( '//2' @ 'Pi/0' @ 2 ) @ V_theta )
                & ( '<=/2' @ V_theta @ 'Pi/0' )
                & ( V_x
                  = ( '+/2' @ ( '*/2' @ ( 'sqrt/1' @ 3 ) @ ( 'cos/1' @ V_theta ) ) @ ( 'sin/1' @ V_theta ) ) )
                & ( V_y
                  = ( 'sin/1' @ ( '*/2' @ 2 @ V_theta ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ ( '*/2' @ 72 @ ( 'sqrt/1' @ 3 ) ) @ 5 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ ( '*/2' @ 2 @ ( '+/2' @ 1 @ ( 'sqrt/1' @ 3 ) ) ) @ 3 ) ) ),
    answer_to(p2_question,[])).
