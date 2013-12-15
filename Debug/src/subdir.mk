################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/mass.cpp 

OBJS += \
./src/mass.o 

CPP_DEPS += \
./src/mass.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/include/qt4 -I"/home/thibaut/workspace/LQCDUtils" -I/usr/include/qt4/Qt -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtCore -I"/home/thibaut/workspace/LQCDAnalysis/include" -include"/home/thibaut/workspace/LQCDAnalysis/include/LQCDA.hpp" -O0 -g3 -Wall -c -fmessage-length=0 -std=c++0x -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


