FIND_PATH(CPPUNIT_INCLUDE_DIR cppunit/Test.h /usr/local/include /usr/include)
FIND_LIBRARY(CPPUNIT_LIBRARY NAME cppunit)

IF (CPPUNIT_INCLUDE_DIR AND CPPUNIT_LIBRARY)
  SET(CPPUNIT_FOUND TRUE)
ENDIF(CPPUNIT_INCLUDE_DIR AND CPPUNIT_LIBRARY)

IF (CPPUNIT_FOUND)
  IF (NOT CppUnit_FIND_QUIETLY)
    MESSAGE(STATUS "Found CppUnit: ${CPPUNIT_LIBRARY}")
    MESSAGE(STATUS "Found Include Dir: ${CPPUNIT_INCLUDE_DIR}")
  ENDIF(NOT CppUnit_FIND_QUIETLY)
ELSE(CPPUNIT_FOUND)
  IF(CppUnit_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could not find CppUnit")
  ENDIF(CppUnit_FIND_REQUIRED)
ENDIF(CPPUNIT_FOUND)
