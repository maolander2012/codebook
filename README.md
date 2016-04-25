## codebook

`codebook.R` defines two R functions that help when writing dataset codebooks as markdown files .

`codebook()` takes a data frame and returns a dataframe with one row for each column in the original dataframe, a column called "Type" containing the result of `class()` and empty columns called "Units" and Description" that can be populated manually.

`codebook.table()` takes a data frame, calls `codebook()` on it, and returns a pander table for ease of inclusion in a markdown file.
