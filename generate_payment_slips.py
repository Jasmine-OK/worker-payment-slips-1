import random

# List to store worker details
workers = []
num_workers = 400  # Number of workers

# Generate worker details dynamically
for i in range(num_workers):
    worker = {
        "id": i + 1,  # Assign a unique ID to each worker
        "name": f"Worker_{i + 1}",  # Generate a name for each worker
        "salary": random.randint(5000, 35000),  # Generate a random salary between $5000 and $35000
        "gender": random.choice(["male", "female"])  # Randomly assign gender as male or female
    }
    workers.append(worker)

# Loop through each worker to generate a payment slip
for worker in workers:
    # Assign employee level based on conditions
    if 10000 < worker["salary"] < 20000:
        worker["level"] = "A1"
    elif 7500 < worker["salary"] < 30000 and worker["gender"] == "female":
        worker["level"] = "A5-F"
    else:
        worker["level"] = "Other"

    # Print the payment slip for the worker
    print(f"Payment Slip: Name: {worker['name']}, Salary: {worker['salary']}, Level: {worker['level']}")
