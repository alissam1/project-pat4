
DROP TABLE if exists `cars`;

CREATE TABLE `reviews` (
  `reviewer_name` var(11) NOT NULL,
  `reviewer_email` var(11) NOT NULL,
  `review_phone` var(11) NOT NULL,
  `review_address` var(11) NOT NULL,
  `review_message` var(11) NOT NULL,


  PRIMARY KEY (`review_id`),
