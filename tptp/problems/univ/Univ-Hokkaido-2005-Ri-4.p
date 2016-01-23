%% DOMAIN:    DUP
%% THEORY:    RCF
%% SOURCE:    Hokkaido University, 2005, Science Course, Problem 4
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-10-02

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  114 (   5 equality;  38 variable)
%            Maximal formula depth :   16 (  13 average)
%            Number of connectives :  101 (   0   ~;   0   |;  15   &;  83   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :    9 (   0 sgn;   3   !;   4   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_p: 'complex.Complex'] :
      ? [V_C: '2d.Shape',V_a_: 'Z' > 'complex.Complex'] :
        ( ( ( 'LamApp/2' @ V_a_ @ 1 )
          = ( 'complex.+/2' @ 1 @ 'complex.i/0' ) )
        & ! [V_n: 'Z'] :
            ( ( ( 'int.is-integer/1' @ V_n )
              & ( 'int.>=/2' @ V_n @ 1 ) )
           => ( ( 'LamApp/2' @ V_a_ @ ( 'int.+/2' @ V_n @ 1 ) )
              = ( 'complex.//2' @ ( 'LamApp/2' @ V_a_ @ V_n ) @ ( 'complex.-/2' @ ( 'complex.*/2' @ 2 @ ( 'LamApp/2' @ V_a_ @ V_n ) ) @ 3 ) ) ) )
        & ( '2d.on/2' @ '2d.origin/0' @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( 'LamApp/2' @ V_a_ @ 1 ) ) @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( 'LamApp/2' @ V_a_ @ 2 ) ) @ V_C )
        & ( '2d.circle-type/1' @ V_C )
        & ( '2d.on/2' @ ( 'complex.complex->point/1' @ V_p ) @ V_C ) ) )).

thf(p2,conjecture,(
    ? [V_C: '2d.Shape',V_a_: 'Z' > 'complex.Complex'] :
      ( ( ( 'LamApp/2' @ V_a_ @ 1 )
        = ( 'complex.+/2' @ 1 @ 'complex.i/0' ) )
      & ! [V_n_dot_0: 'Z'] :
          ( ( ( 'int.is-integer/1' @ V_n_dot_0 )
            & ( 'int.>=/2' @ V_n_dot_0 @ 1 ) )
         => ( ( 'LamApp/2' @ V_a_ @ ( 'int.+/2' @ V_n_dot_0 @ 1 ) )
            = ( 'complex.//2' @ ( 'LamApp/2' @ V_a_ @ V_n_dot_0 ) @ ( 'complex.-/2' @ ( 'complex.*/2' @ 2 @ ( 'LamApp/2' @ V_a_ @ V_n_dot_0 ) ) @ 3 ) ) ) )
      & ( '2d.on/2' @ '2d.origin/0' @ V_C )
      & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( 'LamApp/2' @ V_a_ @ 1 ) ) @ V_C )
      & ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( 'LamApp/2' @ V_a_ @ 2 ) ) @ V_C )
      & ( '2d.circle-type/1' @ V_C )
      & ! [V_n: 'Z'] :
          ( ( ( 'int.is-integer/1' @ V_n )
            & ( 'int.>=/2' @ V_n @ 1 ) )
         => ( '2d.on/2' @ ( 'complex.complex->point/1' @ ( 'LamApp/2' @ V_a_ @ V_n ) ) @ V_C ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_p_dot_0: 'complex.Complex'] :
      ( 1
      = ( 'complex.abs/1' @ ( 'complex.-/2' @ V_p_dot_0 @ 1 ) ) ) ),
    answer_to(p1_question,[])).
