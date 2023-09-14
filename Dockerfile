# Use the official CentOS Apache HTTP Server image
FROM centos/httpd

# Download and unzip the web content
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN yum install -y unzip && unzip photogenic.zip && rm photogenic.zip

# Expose port 80 for HTTP
EXPOSE 80

# Start Apache HTTP Server
CMD ["httpd", "-D", "FOREGROUND"]


