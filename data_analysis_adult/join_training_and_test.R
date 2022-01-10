headers <- c("age","workclass","fnlwgt","education","education_num","marital_status","occupation","relationship","race","sex","capital_gain","capital_loss","hours_per_week","native_country", "target")

# Read the traininig set:
train <- read.table("dataset/adult.data", sep=",", row.names=NULL)
names(train) <- headers

# Read the test set:
test <- read.table("dataset/adult.test", sep=",", row.names=NULL)
names(test) <- headers

# Combine both
train_and_test <- rbind(train, test)

# Export to file
write.csv(train_and_test, "dataset/train_and_test.data", row.names=FALSE)