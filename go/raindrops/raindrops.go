package raindrops

import "strconv"

// Convert takes a number of drops and formats a string according to the factor of drops
func Convert(drops int) string {
	var response = ""
	if drops%3 == 0 {
		response += "Pling"
	}
	if drops%5 == 0 {
		response += "Plang"
	}
	if drops%7 == 0 {
		response += "Plong"
	}
	if len(response) == 0 {
		response = strconv.Itoa(drops)
	}
	return response
}
