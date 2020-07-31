import UIKit

struct Review {
    var reviewerName: String
    var rating: Double
}

struct Reviews {
    var reviewArray: [Review] = []
}

// populate the reviews
var reviews = Reviews()
reviews.reviewArray.append(Review(reviewerName: "Ada", rating: 2.0))
reviews.reviewArray.append(Review(reviewerName: "Grace", rating: 3.0))
reviews.reviewArray.append(Review(reviewerName: "Limor", rating: 4.0))
reviews.reviewArray.append(Review(reviewerName: "Joy", rating: 5.0))

// average the for loop way
var sum = 0.0
for review in reviews.reviewArray {
    sum = sum + review.rating
}
print(sum, sum/Double(reviews.reviewArray.count))

// average using reduce
let newSum = reviews.reviewArray.reduce(0.0) {$0 + $1.rating}
print(newSum, newSum/Double(reviews.reviewArray.count))
