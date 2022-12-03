## ---------------------------------------------------------------------
##
## Copyright (C) 2013 - 2014 by the deal.II authors
##
## This file is part of the deal.II library.
##
## The deal.II library is free software; you can use it, redistribute
## it, and/or modify it under the terms of the GNU Lesser General
## Public License as published by the Free Software Foundation; either
## version 2.1 of the License, or (at your option) any later version.
## The full text of the license can be found in the file LICENSE.md at
## the top level directory of deal.II.
##
## ---------------------------------------------------------------------

#
# This macro toggles the preference for static/shared libraries if
# DEAL_II_PREFER_STATIC_LIBS=TRUE.
#
# Usage:
#     switch_library_preference()
#

macro(switch_library_preference)
  if(DEAL_II_PREFER_STATIC_LIBS)
    #
    # Invert the search order for libraries when DEAL_II_PREFER_STATIC_LIBS
    # is set. This will prefer static archives instead of shared libraries:
    list(REVERSE CMAKE_FIND_LIBRARY_SUFFIXES)
  endif()
endmacro()
