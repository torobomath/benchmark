%% DOMAIN:    Complex Numbers and Complex Plane
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2001, Science Course, Problem 2
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-04-09
%%
%% <PROBLEM-TEXT>
%% When the equation $x^5+x^4-x^3+x^2-(a + 1)x+a=0$ in terms of the
%% unknown number $x$ has complex solutions on the imaginary axis, find
%% all the real numbers $a$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   53 (   4 equality;  13 variable)
%            Maximal formula depth :   20 (  14 average)
%            Number of connectives :   43 (   0   ~;   1   |;   2   &;  40   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :    5 (   0 sgn;   0   !;   2   ?;   3   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_f: 'complex.Complex' > 'complex.Complex',V_x0: 'complex.Complex'] :
        ( ( V_f
          = ( ^ [V_x: 'complex.Complex'] :
                ( 'complex.+/2' @ ( 'complex.^/2' @ V_x @ 5 ) @ ( 'complex.+/2' @ ( 'complex.^/2' @ V_x @ 4 ) @ ( 'complex.+/2' @ ( 'complex.-/1' @ ( 'complex.^/2' @ V_x @ 3 ) ) @ ( 'complex.+/2' @ ( 'complex.^/2' @ V_x @ 2 ) @ ( 'complex.+/2' @ ( 'complex.-/1' @ ( 'complex.*/2' @ ( 'complex.+/2' @ ( 'complex.real->complex/1' @ V_a ) @ ( 'complex.complex/2' @ 1 @ 0 ) ) @ V_x ) ) @ ( 'complex.real->complex/1' @ V_a ) ) ) ) ) ) ) )
        & ( ( 'LamApp/2' @ V_f @ V_x0 )
          = ( 'complex.complex/2' @ 0 @ 0 ) )
        & ( 'complex.is-purely-imaginary/1' @ V_x0 ) ) )).

thf(p_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( ( V_a_dot_0 = 0 )
      | ( V_a_dot_0
        = ( '//2' @ ( '+/2' @ ( '-/1' @ 1 ) @ ( 'sqrt/1' @ 2 ) ) @ 2 ) ) ) ),
    answer_to(p_question,[])).
