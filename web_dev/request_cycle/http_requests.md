# 9.1 How the Web Works

### What are some common HTTP status codes?
* 404 - not found
    * the requested resourse is no longer available
* 403 - Forbidden
    * means access to the resource is forbidden to the users machiene
* 401 - unauthorized
    * authentication issues
* 500 - internal server error
    * a catch all for server-side error codes, when nothing else makes sense this catches it
* 503 - service unavailable
    * the web server isn't available and this is usually a temporary issue
* 200 - The request is okay

### What is the difference between a GET request and a POST request?
#### When might each be used?
A GET request requests data from a specified resourse, while a POST request submits data to be processed to a specified resource. When using a GET request the method adds the data to the URL, and the length is limited. When using a post method the length is not limited and the data is not added to the URL. GET requests are less secure compared to POST methods because any data being sent is added to the URL, and not being processed. Post requests are also never cached, and are not stored anywhere in the browswer. You would use a POST request when you are submitting any type of data like an image, or content from an HTML form.