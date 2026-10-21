# Personal Expense Manager - static web app served by nginx
FROM nginx:1.27-alpine

# Remove the default nginx welcome page content
RUN rm -rf /usr/share/nginx/html/*

# Copy the static application files
COPY index.html about.html add-expense.html contact.html features.html \
     help.html login.html privacy.html signup.html stories.html terms.html \
     /usr/share/nginx/html/
COPY main.css script.js expense.js /usr/share/nginx/html/
COPY images/ /usr/share/nginx/html/images/

# nginx configuration for the app
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -q -O /dev/null http://127.0.0.1:80/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
