# LotteryNumberService

This a simple service to generate lottery numbers for EUROJACKPOT, FINNISHLOTTO, VIKINGLOTTO if a lottery type is specified (by default one set of numbers is generated, but a user can also specify how many sets to be generated), and retrieve past winning numbers if the year, week and lottery type is specified.

example usage:

`req: https://lns.fly.dev/lng?lottoType=VIKINGLOTTO`

`res: LotteryNumbers: [[7 28 24 26 22 44 6]]`

`req: https://lns.fly.dev/lng?lottoType=EUROJACKPOT&howMany=2`

`res: LotteryNumbers: [[38 22 41 36 46 1 8] [14 20 31 8 3 7 8]]`

`req: https://lns.fly.dev/lng?lottoType=FINNISHLOTTO&howMany=10`

`res: LotteryNumbers: [[36 33 20 12 2 15 37] [15 34 6 9 18 4 36] [31 28 14 5 33 4 15] [31 23 38 35 29 14 25] [12 31 9 1 11 20 28] [25 34 23 29 26 22 14] [15 4 12 9 16 5 18] [28 27 33 2 1 32 24] [17 37 12 15 30 2 29] [35 6 1 4 22 10 38]]`

`req: https://lns.fly.dev/result?year=2022&week=10&lottoType=EUROJACKPOT`

`res: LotteryNumbers: { [5 31 39 46 49] [8 9]}`

`req:https://lns.fly.dev/result?year=2022&week=50&lottoType=FINNISHLOTTO`

`res: LotteryNumbers: { [2 3 7 13 14 22 27] [32]}`

`req:https://lns.fly.dev/result?year=2022&week=55&lottoType=EUROJACKPOT`

`res: Bad value for parameter week. Accepted value: 1 - 52`