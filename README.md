# 🪜🐍 Snakes and Ladders

A simple Snakes and Ladders simulator in Ruby. Intended as an exercise in refactoring.

## Example Output

    🎲 Player 1 rolled 4! Moves from 1 to 5.
    🎲 Player 2 rolled 3! Moves from 1 to 4.
    🎲 Player 3 rolled 8! Moves from 1 to 9.
    🎲 Player 4 rolled 6! Moves from 1 to 7.
    🎲 Player 1 rolled 1! Moves from 5 to 6.
    🎲 Player 2 rolled 8! Moves from 4 to 12.
    🎲 Player 3 rolled 6! Moves from 9 to 15.
    🎲 Player 4 rolled 6! Moves from 7 to 13.
    🎲 Player 1 rolled 6! Moves from 6 to 12.
    🎲 Player 2 rolled 3! Moves from 12 to 15.
    🎲 Player 3 rolled 5! Moves from 15 to 20.
    🎲 Player 4 rolled 8! Moves from 13 to 21.
    🪜 Player 4 hit a ladder! Moves from 21 to 42.
    🎲 Player 1 rolled 7! Moves from 12 to 19.
    🎲 Player 2 rolled 7! Moves from 15 to 22.
    🎲 Player 3 rolled 9! Moves from 20 to 29.
    🎲 Player 4 rolled 3! Moves from 42 to 45.
    🎲 Player 1 rolled 4! Moves from 19 to 23.
    🎲 Player 2 rolled 1! Moves from 22 to 23.
    🎲 Player 3 rolled 11! Moves from 29 to 40.
    🎲 Player 4 rolled 4! Moves from 45 to 49.
    🎲 Player 1 rolled 3! Moves from 23 to 26.
    🎲 Player 2 rolled 11! Moves from 23 to 34.
    🎲 Player 3 rolled 4! Moves from 40 to 44.
    🎲 Player 4 rolled 7! Moves from 49 to 56.
    🎲 Player 1 rolled 8! Moves from 26 to 34.
    🎲 Player 2 rolled 7! Moves from 34 to 41.
    🎲 Player 3 rolled 5! Moves from 44 to 49.
    🎲 Player 4 rolled 10! Moves from 56 to 66.
    🎲 Player 1 rolled 6! Moves from 34 to 40.
    🎲 Player 2 rolled 10! Moves from 41 to 51.
    🎲 Player 3 rolled 5! Moves from 49 to 54.
    🎲 Player 4 rolled 4! Moves from 66 to 70.
    🎲 Player 1 rolled 7! Moves from 40 to 47.
    🎲 Player 2 rolled 3! Moves from 51 to 54.
    🎲 Player 3 rolled 2! Moves from 54 to 56.
    🎲 Player 4 rolled 2! Moves from 70 to 72.
    🎲 Player 1 rolled 2! Moves from 47 to 49.
    🎲 Player 2 rolled 4! Moves from 54 to 58.
    🎲 Player 3 rolled 9! Moves from 56 to 65.
    🎲 Player 4 rolled 8! Moves from 72 to 80.
    🎲 Player 1 rolled 7! Moves from 49 to 56.
    🎲 Player 2 rolled 6! Moves from 58 to 64.
    🎲 Player 3 rolled 9! Moves from 65 to 74.
    🎲 Player 4 rolled 11! Moves from 80 to 91.
    🎲 Player 1 rolled 7! Moves from 56 to 63.
    🐍 Player 1 hit a snake! Moves from 63 to 18.
    🎲 Player 2 rolled 3! Moves from 64 to 67.
    🎲 Player 3 rolled 10! Moves from 74 to 84.
    🎲 Player 4 rolled 5! Moves from 91 to 96.
    🎲 Player 1 rolled 11! Moves from 18 to 29.
    🎲 Player 2 rolled 8! Moves from 67 to 75.
    🎲 Player 3 rolled 7! Moves from 84 to 91.
    🎲 Player 4 rolled 4! Moves from 96 to 100.
    🏆 Player 4 wins after 52 rounds!


## Running

    $ ruby snakes_and_ladders.rb
    OK

If you break the game during refactor, you will see a diff:

    $ ruby snakes_and_ladders.rb
    You broke the game
     🎲 Player 1 rolled 4! Moves from 1 to 5.
     🎲 Player 2 rolled 4! Moves from 1 to 5.
     🎲 Player 3 rolled 4! Moves from 1 to 5.
     🎲 Player 4 rolled 4! Moves from 1 to 5.
     🎲 Player 1 rolled 4! Moves from 5 to 9.
     🎲 Player 2 rolled 4! Moves from 5 to 9.
     🎲 Player 3 rolled 4! Moves from 5 to 9.
     🎲 Player 4 rolled 4! Moves from 5 to 9.
     🎲 Player 1 rolled 4! Moves from 9 to 13.
     🎲 Player 2 rolled 4! Moves from 9 to 13.
     🎲 Player 3 rolled 4! Moves from 9 to 13.
     🎲 Player 4 rolled 4! Moves from 9 to 13.
     🎲 Player 1 rolled 4! Moves from 13 to 17.
     🎲 Player 2 rolled 4! Moves from 13 to 17.
     🎲 Player 3 rolled 4! Moves from 13 to 17.
     🎲 Player 4 rolled 4! Moves from 13 to 17.
     🎲 Player 1 rolled 4! Moves from 17 to 21.
    -🪜 Player 1 hit a ladder! Moves from 21 to 42.
    +🪜 Yay! Player 1 hit a ladder! Moves from 21 to 42.
     🎲 Player 2 rolled 4! Moves from 17 to 21.
    -🪜 Player 2 hit a ladder! Moves from 21 to 42.
    +🪜 Yay! Player 2 hit a ladder! Moves from 21 to 42.
     🎲 Player 3 rolled 4! Moves from 17 to 21.
    -🪜 Player 3 hit a ladder! Moves from 21 to 42.
    +🪜 Yay! Player 3 hit a ladder! Moves from 21 to 42.
     🎲 Player 4 rolled 4! Moves from 17 to 21.
    -🪜 Player 4 hit a ladder! Moves from 21 to 42.
    +🪜 Yay! Player 4 hit a ladder! Moves from 21 to 42.
     🎲 Player 1 rolled 4! Moves from 42 to 46.
     🎲 Player 2 rolled 4! Moves from 42 to 46.
     🎲 Player 3 rolled 4! Moves from 42 to 46.
     🎲 Player 4 rolled 4! Moves from 42 to 46.
     🎲 Player 1 rolled 4! Moves from 46 to 50.
    -🪜 Player 1 hit a ladder! Moves from 50 to 67.
    +🪜 Yay! Player 1 hit a ladder! Moves from 50 to 67.
     🎲 Player 2 rolled 4! Moves from 46 to 50.
    -🪜 Player 2 hit a ladder! Moves from 50 to 67.
    +🪜 Yay! Player 2 hit a ladder! Moves from 50 to 67.
     🎲 Player 3 rolled 4! Moves from 46 to 50.
    -🪜 Player 3 hit a ladder! Moves from 50 to 67.
    +🪜 Yay! Player 3 hit a ladder! Moves from 50 to 67.
     🎲 Player 4 rolled 4! Moves from 46 to 50.
    -🪜 Player 4 hit a ladder! Moves from 50 to 67.
    +🪜 Yay! Player 4 hit a ladder! Moves from 50 to 67.
     🎲 Player 1 rolled 4! Moves from 67 to 71.
    -🪜 Player 1 hit a ladder! Moves from 71 to 92.
    +🪜 Yay! Player 1 hit a ladder! Moves from 71 to 92.
     🎲 Player 2 rolled 4! Moves from 67 to 71.
    -🪜 Player 2 hit a ladder! Moves from 71 to 92.
    +🪜 Yay! Player 2 hit a ladder! Moves from 71 to 92.
     🎲 Player 3 rolled 4! Moves from 67 to 71.
    -🪜 Player 3 hit a ladder! Moves from 71 to 92.
    +🪜 Yay! Player 3 hit a ladder! Moves from 71 to 92.
     🎲 Player 4 rolled 4! Moves from 67 to 71.
    -🪜 Player 4 hit a ladder! Moves from 71 to 92.
    +🪜 Yay! Player 4 hit a ladder! Moves from 71 to 92.
     🎲 Player 1 rolled 4! Moves from 92 to 96.
     🎲 Player 2 rolled 4! Moves from 92 to 96.
     🎲 Player 3 rolled 4! Moves from 92 to 96.
     🎲 Player 4 rolled 4! Moves from 92 to 96.
     🎲 Player 1 rolled 4! Moves from 96 to 100.
     🏆 Player 1 wins after 37 rounds!
    \ No newline at end of file