## codebook

`codebook.R` defines two R functions that were used to help write the `*_codebook.md` files.

`codebook()` takes a data frame and return a dataframe with one row for each column in the original dataframe, a column called "Type" containing `class()` and empty columns called "Units" and Description" that can be populated manually.

`codebook.table()` takes a data frame, calls `codebook()` on it, and returns a pander table for ease of inclusion in a markdown file.