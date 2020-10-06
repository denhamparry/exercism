package hamming

import "errors"

// Distance calculates the Hamming Distance between two strings.
func Distance(a, b string) (int, error) {
	aa := []rune(a)
	bb := []rune(b)

	if len(aa) != len(bb) {
		return 0, errors.New("sequences have different lengths")
	}

	hammingDistance := 0

	for i := 0; i < len(aa); i++ {
		if aa[i] != bb[i] {
			hammingDistance++
		}
	}

	return hammingDistance, nil
}
