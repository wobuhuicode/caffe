SET(GEMMLOWP_INCLUDE_SEARCH_PATHS
  gemmlowp
  ..
  ../gemmlowp
  /usr/include
  /usr/local/include
  /opt/gemmlowp/include
)

FIND_PATH(GEMMLOWP_INCLUDE_DIR NAMES public/gemmlowp.h PATHS ${GEMMLOWP_INCLUDE_SEARCH_PATHS})

SET(GEMMLOWP_FOUND ON)

# Check include files
IF(NOT GEMMLOWP_INCLUDE_DIR)
    SET(GEMMLOWP_FOUND OFF)
    MESSAGE(STATUS "Could not find GEMMLOWP include. Turning GEMMLOWP_FOUND off")
ENDIF()

IF (GEMMLOWP_FOUND)
  IF (NOT GEMMLOWP_FIND_QUIETLY)
    MESSAGE(STATUS "Found GEMMLOWP include: ${GEMMLOWP_INCLUDE_DIR}")
  ENDIF (NOT GEMMLOWP_FIND_QUIETLY)
ELSE (GEMMLOWP_FOUND)
  IF (GEMMLOWP_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could not find GEMMLOWP")
  ENDIF (GEMMLOWP_FIND_REQUIRED)
ENDIF (GEMMLOWP_FOUND)


set(GEMMLOWP_INCLUDE_DIRS ${GEMMLOWP_INCLUDE_DIR})

MARK_AS_ADVANCED(
  GEMMLOWP_INCLUDE_DIR
  GEMMLOWP_INCLUDE_DIRS
)