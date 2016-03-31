# function to make a table of names, class and  description of each column of a dataframe.
# suitable for feeding to pander() to help in assembling a codebook
# Author: Stephen Johnson
# Date: 2016-03-31
#


# Take a dataframe (df)
# and assemble a dataframe of classes and an empty column called "Description"
codebook <- function(df) {
        if (!(is.data.frame(df)))
                stop("not a dataframe")
        data.frame(Class = sapply(df, class), Units = "", Description = "")
}


# Take a dataframe, df, generate a dataframe of classes using codebook() and writes to a table using pander()
codebook.table <- function(df) {
        # df.out <- codebook(df)
        require(pander)
        panderOptions("table.style", "rmarkdown")
        # panderOptions("table.alignment.default", "left")
        # panderOptions("table.alignment.rownames", "left")
        set.alignment(default = c('centre', 'left', 'left'), row.names = "left")
        pander(codebook(df))
}
