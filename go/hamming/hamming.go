package hamming

import "errors"

// Distance calculates the Hamming Distance between two strings.
func Distance(a, b string) (int, error) {
	
	if len(a) != len(b) {
		return -1, errors.New("Sequences have different lengths")
	}

	hammingDistance := 0
	
	for i := range a {
		if(a[i] != b[i]) {
			hammingDistance++
		}
	}
	return hammingDistance, nil
}