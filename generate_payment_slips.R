# Number of workers
num_workers <- 400

# Create a data frame to store worker details
workers <- data.frame(
  id = 1:num_workers,  # Assign IDs from 1 to 400
  name = paste("Worker", 1:num_workers, sep = "_"),  # Generate names like "Worker_1", "Worker_2", etc.
  salary = sample(5000:35000, num_workers, replace = TRUE),  # Generate random salaries between $5000 and $35000
  gender = sample(c("male", "female"), num_workers, replace = TRUE)  # Randomly assign gender as "male" or "female"
)

# Loop through each worker to assign levels and generate payment slips
for (i in 1:nrow(workers)) {
  if (workers$salary[i] > 10000 & workers$salary[i] < 20000) {
    workers$level[i] <- "A1"
  } else if (workers$salary[i] > 7500 & workers$salary[i] < 30000 & workers$gender[i] == "female") {
    workers$level[i] <- "A5-F"
  } else {
    workers$level[i] <- "Other"
  }

  # Print the payment slip for the worker
  cat("Payment Slip: Name:", workers$name[i], "| Salary:", workers$salary[i], "| Level:", workers$level[i], "\n")
}
