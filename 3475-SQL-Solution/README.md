# LeetCode 3475 - DNA Pattern Recognition

## Problem
Analyze each DNA sequence and determine whether it contains specific genetic patterns.

For each sample, identify:
- Whether the DNA sequence starts with the start codon (`ATG`).
- Whether the DNA sequence ends with one of the stop codons (`TAA`, `TAG`, or `TGA`).
- Whether the DNA sequence contains the pattern `ATAT`.
- Whether the DNA sequence contains the pattern `GGG`.

Return the sample ID, DNA sequence, species, and the corresponding flags.

## Approach
1. Check whether the DNA sequence starts with the start codon (`ATG`).
2. Check whether the DNA sequence ends with any valid stop codon (`TAA`, `TAG`, or `TGA`).
3. Detect the presence of the `ATAT` pattern anywhere in the sequence.
4. Detect the presence of the `GGG` pattern anywhere in the sequence.
5. Return the required details along with the generated flags, ordered by `sample_id`.

## SQL Concepts Used
- IF()
- CASE Expression
- Pattern Matching (`LIKE`)
- Wildcards (`%`)
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(1)
