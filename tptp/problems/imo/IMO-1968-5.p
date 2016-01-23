%% DOMAIN:    Algebra, functions
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 1968, Problem 5
%% SCORE:     7
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2015-01-24
%%
%% <PROBLEM-TEXT>
%% Let $f$ be a real-valued function defined for all real numbers $x$ such that, for
%% some positive constant $a$, the equation\[
%% f(x + a) = \frac{1}{2} + \sqrt{f(x) - [f(x)]^2}
%% \]holds for all $x$.
%% (a) Prove that the function $f$ is periodic (i.e., there exists a
%% positive number $b$ such that $f(x + b) = f(x)$ for all $x$).
%% (b) For $a = 1$, give an example of a non-constant function with the required
%% properties.
%% </PROBLEM-TEXT>
%%@ the directive is 'give an example', not 'find all', in the original problem

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   69 (   5 equality;  23 variable)
%            Maximal formula depth :   14 (  13 average)
%            Number of connectives :   57 (   1   ~;   0   |;   1   &;  54   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :   11 (   0 sgn;   5   !;   3   ?;   3   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_f: 'R2R'] :
      ( ? [V_a: 'R'] :
        ! [V_x: 'R'] :
          ( ( 'funapp/2' @ V_f @ ( '+/2' @ V_x @ V_a ) )
          = ( '+/2' @ ( '//2' @ 1 @ 2 ) @ ( 'sqrt/1' @ ( '-/2' @ ( 'funapp/2' @ V_f @ V_x ) @ ( '^/2' @ ( 'funapp/2' @ V_f @ V_x ) @ 2 ) ) ) ) )
     => ? [V_b: 'R'] :
        ! [V_x_dot_0: 'R'] :
          ( ( 'funapp/2' @ V_f @ ( '+/2' @ V_x_dot_0 @ V_b ) )
          = ( 'funapp/2' @ V_f @ V_x_dot_0 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_f: 'R2R'] :
        ( ! [V_x_dot_0: 'R'] :
            ( ( 'funapp/2' @ V_f @ ( '+/2' @ V_x_dot_0 @ 1 ) )
            = ( '+/2' @ ( '//2' @ 1 @ 2 ) @ ( 'sqrt/1' @ ( '-/2' @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) @ ( '^/2' @ ( 'funapp/2' @ V_f @ V_x_dot_0 ) @ 2 ) ) ) ) )
        & ~ ( ? [V_y: 'R'] :
              ! [V_x: 'R'] :
                ( ( 'funapp/2' @ V_f @ V_x )
                = V_y ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_f_dot_0: 'R2R'] :
      ( V_f_dot_0
      = ( 'fun/1'
        @ ^ [V_x_dot_1: 'R'] :
            ( '//2' @ ( '+/2' @ 1 @ ( 'abs/1' @ ( 'cos/1' @ ( '//2' @ ( '*/2' @ 'Pi/0' @ V_x_dot_1 ) @ 2 ) ) ) ) @ 2 ) ) ) ),
    answer_to(p2_question,[])).
