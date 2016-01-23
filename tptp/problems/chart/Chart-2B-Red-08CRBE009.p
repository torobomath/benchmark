%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CRBE009
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   54 (   3 equality;  25 variable)
%            Maximal formula depth :   21 (  13 average)
%            Number of connectives :   46 (   0   ~;   0   |;   6   &;  39   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :    9 (   0 sgn;   7   !;   0   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_r: 'R'] :
        ( ( '</2' @ 0 @ V_r )
        & ( '</2' @ V_r @ 1 )
        & ! [V_P: '2d.Point',V_Q: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_R: '2d.Point',V_M: '2d.Point'] :
            ( ( ( '2d.is-triangle/3' @ V_A @ V_B @ V_C )
              & ( '2d.intersect/3' @ ( '2d.line/2' @ V_B @ V_Q ) @ ( '2d.line/2' @ V_C @ V_P ) @ V_R )
              & ( '2d.divide-externally/4' @ V_M @ ( '2d.seg/2' @ V_R @ V_P ) @ 1 @ V_r )
              & ( V_P
                = ( '2d.internally-dividing-point/3' @ V_A @ V_B @ ( '//2' @ 1 @ 3 ) ) )
              & ( V_Q
                = ( '2d.internally-dividing-point/3' @ V_A @ V_C @ ( '//2' @ 2 @ 3 ) ) ) )
           => ( '2d.vec-parallel/2' @ ( '2d.vec/2' @ V_A @ V_M ) @ ( '2d.vec/2' @ V_B @ V_C ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_r_dot_0: 'R'] :
      ( V_r_dot_0
      = ( '//2' @ 7 @ 15 ) ) ),
    answer_to(p_question,[])).
