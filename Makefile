# Define the Python environment
PYTHON=python3
VENV=venv

# Set up the project (create virtual environment & install dependencies)
setup:
	@echo "📦 Setting up the virtual environment..."
	@$(PYTHON) -m venv $(VENV)
	@source $(VENV)/bin/activate && pip install --upgrade pip pygame
	@echo "✅ Setup complete! Run 'make run' to start the game."

# Run the game
run:
	@echo "🚀 Running the game..."
	@source $(VENV)/bin/activate && $(PYTHON) main.py

# Clean up the virtual environment (if needed)
clean:
	@echo "🗑 Removing virtual environment..."
	@rm -rf $(VENV)
	@echo "✅ Cleaned up!"
