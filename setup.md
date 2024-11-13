# Step 1: Create a new Conda environment with Python 3.12 (or any version you prefer)
conda create --name myProjectEnv python=3.12 -y

# Step 2: Activate the environment
conda activate myProjectEnv

# Step 3: Install dependencies from requirements.txt
pip install -r requirements.txt

# Step 4: Confirm installation
echo "Environment setup complete and all requirements installed."
