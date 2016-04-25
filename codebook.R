#    R function to assist in writing a data codebook
#    Copyright (C) 2016 Stephen J. Johnson
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>. 

# Contains an R function to make a table of names, class and description of each column of a dataframe.
# suitable for feeding to pander() to help in assembling a codebook


# Take a dataframe (df)
# and return a dataframe of classes and empty columns called "Units" and Description"
codebook <- function(df) {
        if (!(is.data.frame(df)))
                stop("not a dataframe")
        data.frame(Class = sapply(df, FUN = class), Units = "", Description = "")
}


# Take a dataframe, df, generate a dataframe of classes using codebook() and writes to a table using pander()
codebook.table <- function(df) {
        # df.out <- codebook(df)
        require(pander)
        panderOptions("table.style", "rmarkdown")
        # panderOptions("table.alignment.default", "left")
        # panderOptions("table.alignment.rownames", "left")
        set.alignment(default = c('centre', 'centre', 'left'), row.names = "left")
        pander(codebook(df))
}
