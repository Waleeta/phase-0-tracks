###**Common HTTP Status Codes**

1. 200 - HTTPOK, meaning the page loaded (ok).
2. 404 - HTTPNotFound - page not found.
3. 400 - HTTPBadRequest - ...bad request.
4. 204 - HTTPNoContent - no content found.
5. 403 - HTTPForbidden - forbidden from viewing
6. 500 - HTTPInternalServerError
7. 503 - HTTPServiceUnavailable 
8. 502 - HTTPBadGateway
9. 507 - HTTPInsufficientStorage
10. 511 - HTTPNetworkAuthenticationRequired

###**GET REQUEST vs POST REQUEST**

* HTTP (Hypertext Transfer Protocol) is a protocal designed to send/receive messages between servers and clients. The two most common HTTP "requests" on the server are GET and POST.

* GET requests, basically, *request* data. 
* POST requests, basically, *submits* data.

###**Differences between GET and POST** 

*GET requests can be bookmarked, have restrictions on length, has visible URL data, and remains in browsr history. Data types are restricted to ASCII characters.

*POST requests *cannot* be bookmarked, have no restrictions on length, data is *not* visible in the URL, and is *not* stored in browser history. There are also no restrictions on data types.

###**Cookies**
> Cookies are pieces of data stored in the user's browser history in order to log data about the user (like browser history, things in your shopping cart, location, whether a user is logged in, and so on). There are different types:

1. *Session Cookie* - only exists while you are on the web page, and is deleted when you close the browser. 

2. *Persistent Cookie* - the cookie's creator define it's "dead" date - lasts for a specified amount of time. These are also known as "tracking cookies", because they can track your activity online. 

3. *Secure cookie* - can only be sent over an encrypted (HTTPS) connection. 

4. *HTTPOnly cookie* - Cannot be access by the client-side Application Programming Interface. This apparently eliminates "cookie theft". 

5. *SameSite cookie* - can be sent only in requests which originate from the same origin as the target domain (so, a SameSite cookie on cnn.com can only originate from cnn.com)

6. *Third-party cookie* - a cookie that orignates NOT from the page you are on, but from a third-party (like an advertiser).

7. *Supercookie* - A cookie with a cape and superpowers. Or, a cookie that has a top-level domain and apparently can pose a security threat. It's often blocked by browsers. 

8. *Zombie Cookie* - a cookie that never dies. You delete it, it recreates itself. WTF. 