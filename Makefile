# ===========================================================
#            MAKEFILE FOR ATLAS TYPST TEMPLATE 
# ===========================================================

.DEFAULT_GOAL := help

.PHONY: help
help:
	@echo "==============================================="
	@echo "    Makefile for Typst Template Project"
	@echo "==============================================="
	@echo ""
	@echo "Build targets:"
	@echo "  make light         - Compile in light mode"
	@echo "  make dark          - Compile in dark mode"
	@echo "  make all           - Compile both light and dark modes"
	@echo ""
	@echo "Clean targets:"
	@echo "  make clean         - Remove all generated PDFs"
	@echo ""
	@echo "Utility targets:"
	@echo "  make help          - Show this help menu"
	@echo ""

# ===========================================================
#                     CONFIGURATION
# ===========================================================

# Typst file and output
TYPST_FILE := main.typ
LIGHT_PDF := main-light.pdf
DARK_PDF := main-dark.pdf
BUILD_DIR := examples

# ===========================================================
#                     BUILD TARGETS
# ===========================================================

.PHONY: light
light:
	@echo "Setting light mode..."
	sed -i 's/#let dark-george = .*/#let dark-george = false/' $(TYPST_FILE)
	@echo "Compiling in light mode..."
	@mkdir -p $(BUILD_DIR)
	typst compile --font-path ./ $(TYPST_FILE) $(BUILD_DIR)/$(LIGHT_PDF)

.PHONY: dark
dark:
	@echo "Setting dark mode..."
	sed -i 's/#let dark-george = .*/#let dark-george = true/' $(TYPST_FILE)
	@echo "Compiling in dark mode..."
	@mkdir -p $(BUILD_DIR)
	typst compile --font-path ./ $(TYPST_FILE) $(BUILD_DIR)/$(DARK_PDF)

.PHONY: all
all: light dark
	@echo ""
	@echo "=========================================="
	@echo "Both light and dark modes compiled!"
	@echo "=========================================="

# ===========================================================
#                     CLEAN TARGETS
# ===========================================================

.PHONY: clean
clean:
	@echo "Cleaning build directory..."
	@rm -rf $(BUILD_DIR)
