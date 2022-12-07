FROM cypress/included:12.0.1 as builder
WORKDIR /app

# Copy all files
COPY . .

# Install dependencies (npm ci verifies the versions in the lockfile get installed)
RUN npm ci 
RUN npm run build

# Bundle assets with nginx
FROM nginx:1.21.0-alpine as production
ENV NODE_ENV production

FROM production AS final 
WORKDIR /app

# Copy built assets from builder image
COPY --from=builder /app/build /usr/share/nginx/html

# Add config file
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]