#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/AlprService.o \
	${OBJECTDIR}/AlprService_server.o \
	${OBJECTDIR}/thriftalpr_constants.o \
	${OBJECTDIR}/thriftalpr_types.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=`pkg-config --libs openalpr` `pkg-config --libs thrift`  

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/thriftalpr

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/thriftalpr: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/thriftalpr ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/AlprService.o: AlprService.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags openalpr` `pkg-config --cflags thrift`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/AlprService.o AlprService.cpp

${OBJECTDIR}/AlprService_server.o: AlprService_server.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags openalpr` `pkg-config --cflags thrift`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/AlprService_server.o AlprService_server.cpp

${OBJECTDIR}/thriftalpr_constants.o: thriftalpr_constants.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags openalpr` `pkg-config --cflags thrift`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/thriftalpr_constants.o thriftalpr_constants.cpp

${OBJECTDIR}/thriftalpr_types.o: thriftalpr_types.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g `pkg-config --cflags openalpr` `pkg-config --cflags thrift`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/thriftalpr_types.o thriftalpr_types.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/thriftalpr

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
