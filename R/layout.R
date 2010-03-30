# This file provides some standard formatters
# This prints out a string in the following format:
#   LEVEL [timestamp] message
simpleLayout <- function(level, msg, ...)
{
  the.time <- format(Sys.time(), "%Y-%m-%d %H:%M:%S")
  if (! is.null(substitute(...))) msg <- sprintf(msg, ...)
  sprintf("%s [%s] %s\n", .LOG_LEVEL[level],the.time, msg)
}

# This parses and prints a user-defined format string. Available tokens are
# %l - Log level
# %t - Timestamp
# %m - Message
# %f - Calling function
# TODO: INCOMPLETE
formatLayout <- function(level, msg, format, ...)
{
  if (! is.null(substitute(...))) msg <- sprintf(msg, ...)
}
