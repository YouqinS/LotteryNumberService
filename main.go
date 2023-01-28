package main

import (
	lnsapi "lns_golang/src/api"
	"net/http"
)

func main() {
	http.HandleFunc("/hello", lnsapi.Hello)
	http.HandleFunc("/result", lnsapi.GetPastWinningNumber)
	http.HandleFunc("/lng", lnsapi.GetLotteryNumbers)
	http.ListenAndServe(":8080", nil)
}
