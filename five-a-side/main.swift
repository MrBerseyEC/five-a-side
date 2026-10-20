// Task 1 - printWelcome()
// A procedure: prints the banner === Five-a-Side League Manager === and a blank line. No parameters, no return value.


// Task 2 — readTeamName(prompt: String) -> String
//   - Print the prompt with no new line, then read a line. readLine() returns String?, unwrap it safely.
//   - If the input is nil or empty, print Please enter a name. and ask again.
//   - Keep asking (while loop) until you get a valid name, then return it.


// Task 3 — readNumber(prompt: String) -> Int
//   - Print the prompt and read a line.
//   - Int(text) is also an optional, it is nil if the text is not a whole number. You need two unwraps.
//   - Reject anything that is not a whole number of 0 or more with Please enter a whole number (0 or more).
//   - Loop until valid, then return the number.


// Task 4 - matchPoints(homeGoals: Int, awayGoals: Int) -> (home: Int, away: Int)
// Return a tuple of home and away points based on the homeGoals and awayGoals
// win = 3, draw = 1, loss = 0. Use if / else if / else.


// Task 5 - resultSummary(home: String, away: String, homeGoals: Int, awayGoals: Int) -> String
// Work out the goal difference, then use a switch with ranges to pick the message:
//
// | Goal difference | Message              |
// |-----------------|----------------------|
// | 4 or more       | Lions thrash Tigers! |
// | 1 to 3          | Lions win.           |
// | 0               | It's a draw.         |
// | −3 to −1        | Tigers win.          |
// | −4 or less      | Tigers thrash Lions! |


// Task 6 - setupLeague() -> [String: Int]
//  - Use readNumber to ask how many teams (must be at least 2, keep asking if not).
//  - Use a for loop and readTeamName to get each name. The prompt should be Team 1 name:, Team 2 name: and so on.
//  - Reject duplicates: if the name is already a key, print That team already exists. and ask again.
//  - Add each team with 0 points. Return the dictionary.


// Task 7 - recordMatch(league: [String: Int]) -> [String: Int]
// 1. Make a var copy of league — parameters are constants, so you can't change league itself.
// 2. Read the home and away team names. Looking a key up in a dictionary gives an optional: if either team is not in the league, print Unknown team. and return the league unchanged.
// 3. If home and away are the same team, print A team can't play itself. and return unchanged.
// 4. Read both scores with readNumber. Prompts use the team name: Lions goals:.
// 5. Call matchPoints, add the points to both teams, and print resultSummary.
// 6. Return the updated copy.


// Task 8 - printTable(league: [String: Int])
// A procedure. Loop over the dictionary and print one line per team, e.g. Lions: 6 pts
// Print No teams yet. if the dictionary is empty.


// Task 9 - findLeader(league: [String: Int]) -> (name: String, points: Int)?
// Return an optional tuple: nil if the league is empty, otherwise the team with the most points.
// Do not the use built-in max function


// Task 10 — Put it together!
// 1. Call printWelcome(), then store the result of setupLeague() in a var called league.
// 2. Make a var running = true and a while loop that runs until running is false.
// 3. Inside the loop, print the menu (1–4) and read a choice with readNumber.
// 4. Use a switch on the choice:
//   - 1 → league = recordMatch(league: league)
//   - 2 → printTable(league: league)
//   - 3 → findLeader, unwrap with if let, print Leader: Lions on 6 pts otherwise print The league is empty.
//   - 4 → print Final table:, call printTable, set running = false
//   - anything else → Invalid choice.

