#
# [Application Name]
# 
# Author  : name <email>
# Readme  : README.md
# Website : http://website.com
# TODO    : A todo note example
# Fix     : A fix note example
#

CC := g++ # Main compiler
SRCDIR := src # Source Directory
BUILDDIR := build # Build Directory
TESTDIR := test # Tests Directory
TESTAPP := example # Test name
BINDIR := bin # App, tests, spikes executables
TARGET := bin/applicationname # Main executable of the project

SRCEXT := cpp # Extension
SOURCES := $(shell find $(SRCDIR) -type f -name *.$(SRCEXT)) # Source files (Dynamic)
OBJECTS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SOURCES:.$(SRCEXT)=.o)) # Object files (Dynamic)
CFLAGS := -g -Wall -W -Werror # Compile flags
LIB := # Libraries flags
INC := -I include # Ensures all headers in the include folder

$(TARGET): $(OBJECTS)
  @echo " Linking..."; # Description
  @echo " $(CC) $^ -o $(TARGET) $(LIB)"; # Command
  $(CC) $^ -o $(TARGET) $(LIB) # Exec command

$(BUILDDIR)/%.o: $(SRCDIR)/%.$(SRCEXT)
  @mkdir -p $(BUILDDIR)
  @echo "$(CC) $(CFLAGS) $(INC) -c -o $@ $<";
  $(CC) $(CFLAGS) $(INC) -c -o $@ $<

clean:
  @echo " Cleaning...";
  @echo " $(RM) -r $(BUILDDIR) $(TARGET)";
  $(RM) -r $(BUILDDIR) $(TARGET)

tester:
  $(CC) $(CFLAGS) $(TESTDIR)/$(TESTAPP).$(SRCEXT) $(INC) $(LIB) -o $(BINDIR)/$(TESTAPP)

ticket:
  $(CC) $(CFLAGS) $(SPIKEDIR)/example.cpp $(INC) $(LIB) -o $(BINDIR)/example

.PHONY: clean
