CC = g++
CFLAGS = -O3 -g3 -fmessage-length=0 -std=c++0x -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"
LDFLAGS = -fopenmp
EXEC_NAME = LQCDUtils
INCLUDES = -I/home/thibaut/workspace/LQCDUtils/include -I/home/thibaut/workspace/LQCDAnalysis/include -I/home/thibaut/workspace/LQCDAnalysis -I/usr/include/qt4 -I/usr/include/qt4/Qt -I/usr/include/qt4/QtCore  -I/usr/include/qt4/QtGui
LIBS = -lboost_regex -lboost_filesystem -lboost_system -lboost_program_options -lgsl -lgslcblas -lmgl -lMinuit2 -lQtGui -lQtCore -lmgl-qt -L"/home/thibaut/workspace/LQCDAnalysis/Debug" -lLQCDAnalysis
SRC_DIR = ../src
OBJ_FILES = GEVP.o GEVPHeaders.o LocalLuscherFit.o mass.o model_luscher.o model_modified_luscher.o Z001.o
INSTALL_DIR = /usr/local/lib

all : $(EXEC_NAME)

clean :
	rm $(EXEC_NAME) $(OBJ_FILES) $(OBJ_FILES:%.o=%.d)

$(EXEC_NAME) : $(OBJ_FILES)
	@echo 'Building target $@'
	@echo 'Invoking GCC C++ Linker'
	$(CC) $(LDFLAGS) -o $(EXEC_NAME) $(OBJ_FILES) $(LIBS)
	@echo 'Finished building target $@'
	@echo ' '

%.o: $(SRC_DIR)/%.cpp
	@echo 'Building file $<'
	@echo 'Invoking GCC C++ Compiler'
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ -c $<
	@echo 'Finished building: $<'
	@echo ' '

%.o: $(SRC_DIR)/%.cc
	@echo 'Building file $<'
	@echo 'Invoking GCC C++ Compiler'
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ -c $<
	@echo 'Finished building: $<'
	@echo ' '

%.o: $(SRC_DIR)/%.c
	@echo 'Building file $<'
	@echo 'Invoking GCC C++ Compiler'
	gcc $(CFLAGS) $(INCLUDES) -o $@ -c $<
	@echo 'Finished building: $<'
	@echo ' '

install :
	cp $(EXEC_NAME) $(INSTALL_DIR)
