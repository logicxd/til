# API Design

## Filtering and Pagination
* Use `limit` and `offset` for pagination. Set an upper bound for the limit to prevent DDOS attacks. Example: `/orders?limit=25&offset=50`.
* Use `sort` to sort by the specified field.  Example: `/orders?sort=ProductID`.
* Use `fields` to filter specific queries that you want Example: `/orders?fields=ProductID,Quantity`.

## Handling large binary resources
A single resource (like a video) could be very large that it could have transmission problems caused by unreliable and intermittent connections. To improve response times, break it into chunks.
* Support `Accept-Ranges` for large GET requests and ideally support HEAD requests for these as well.
* HEAD request returns a header that describes the resource and an empty body.
* The client application can use the HEAD request to determine if the
___

## References
* [Microsoft's API Design Guidelines](https://docs.microsoft.com/en-us/azure/architecture/best-practices/api-design)
