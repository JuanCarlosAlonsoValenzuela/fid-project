headers <- c("age","workclass","fnlwgt","education","education-num","marital-status","occupation","relationship","race","sex","capital-gain","capital-loss","hours-per-week","native-country", "target")

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