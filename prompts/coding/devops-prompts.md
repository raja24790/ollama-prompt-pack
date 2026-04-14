# DevOps, SQL & Infrastructure Prompts

## SQL & Database

### 1. Schema Designer
```
Design a database schema for {application description}. Include:
- Tables with columns, types, and constraints
- Primary keys (UUID vs auto-increment — justify choice)
- Foreign keys with ON DELETE behavior
- Indexes for common query patterns
- Enum types where appropriate
- Created_at/updated_at timestamps
- Provide as CREATE TABLE statements
- Include sample INSERT statements
```

### 2. Complex Query Builder
```
Write a SQL query to {description}. The database has these tables:
{describe tables and relationships}

Requirements:
- Must be performant on {row count} rows
- Explain the query plan
- Include CTEs for readability
- Handle NULL values correctly
- Add comments explaining complex joins
```

### 3. Migration Planner
```
Plan a zero-downtime database migration to {describe changes}. Current state: {describe}.

Provide:
1. Step-by-step migration plan
2. Rollback strategy for each step
3. Data migration scripts
4. How to handle the transition period (old + new schema)
5. Verification queries to confirm success
6. Estimated time for {row count} rows
```

### 4. Query Performance Tuner
```
This query takes {time} on {row count} rows. Target: under {target time}.

Query: {paste}
Current indexes: {list}
EXPLAIN output: {paste if available}

Optimize by:
1. Rewriting the query
2. Adding/modifying indexes
3. Denormalization if justified
4. Partitioning if applicable
```

## Docker & Containers

### 5. Dockerfile Optimizer
```
Optimize this Dockerfile for production. Current image size: {size}.

{paste Dockerfile}

Goals:
- Minimize image size (target: under 200MB)
- Reduce build time (layer caching)
- Security hardening (non-root user, no secrets in image)
- Multi-stage build
- Proper health checks
```

### 6. Docker Compose Architecture
```
Create a docker-compose.yml for {application stack}. Services needed:
{list services}

Include:
- Proper networking (internal vs external)
- Volume mounts for persistence
- Health checks for all services
- Resource limits
- Environment variable management (.env file)
- Restart policies
- Development vs production profiles
```

## CI/CD

### 7. CI Pipeline Designer
```
Design a CI/CD pipeline for {project type} deployed to {platform}. Include:
- Lint → Type-check → Test → Build → Deploy stages
- Parallel execution where possible
- Caching strategy
- Environment-specific deployments (staging/production)
- Manual approval for production
- Rollback procedure
- Notification on failure
Platform: {GitHub Actions/GitLab CI/Jenkins}
```

### 8. Deployment Strategy
```
Plan a deployment strategy for {application}. Current setup: {describe}.

Compare and recommend:
1. Blue-green deployment
2. Canary release
3. Rolling update
4. Feature flags

Consider: downtime tolerance, rollback speed, testing requirements, infrastructure cost.
```

## Linux & System Administration

### 9. Bash Script Generator
```
Write a bash script that {description}. Requirements:
- Set -euo pipefail for safety
- Proper argument parsing (getopts or manual)
- Colored output for status messages
- Error handling with cleanup (trap)
- Logging to file
- Idempotent (safe to run multiple times)
- Works on Ubuntu 22.04+ and macOS
```

### 10. System Monitoring Setup
```
Set up monitoring for {service/application}. Include:
- Health check endpoint
- Key metrics to track (CPU, memory, disk, custom)
- Alert thresholds and escalation
- Log aggregation setup
- Dashboard layout (what to display)
- On-call runbook for common alerts
Tool: {Prometheus+Grafana / Datadog / CloudWatch}
```

### 11. Nginx Configuration
```
Create an Nginx configuration for {describe setup}. Include:
- HTTPS with Let's Encrypt
- HTTP/2 enabled
- Gzip compression
- Security headers (HSTS, CSP, X-Frame-Options)
- Rate limiting
- Reverse proxy to {backend}
- Static file serving with caching
- WebSocket support if needed
```

### 12. Server Hardening Checklist
```
Provide a security hardening script for {Ubuntu/Debian/CentOS}. Include:
- SSH key-only auth (disable password)
- Firewall setup (ufw/iptables)
- Fail2ban configuration
- Automatic security updates
- Log rotation
- User management (sudo, no root login)
- File permissions audit
- Network security (disable unused ports)
```

## Cloud & Infrastructure

### 13. Terraform Module
```
Write a Terraform module for {resource} on {AWS/GCP/Azure}. Include:
- Variables with descriptions and defaults
- Resource definitions with proper tagging
- Outputs for dependent resources
- Security groups / IAM roles (least privilege)
- Example usage in main.tf
- State management recommendations
```

### 14. Kubernetes Deployment
```
Create Kubernetes manifests for deploying {application}. Include:
- Deployment with resource limits
- Service (ClusterIP/LoadBalancer)
- ConfigMap and Secret
- Horizontal Pod Autoscaler
- PersistentVolumeClaim if needed
- Ingress with TLS
- Health/readiness probes
- NetworkPolicy
```

### 15. Cost Optimization Review
```
Review this cloud infrastructure for cost optimization:
{describe current setup — instances, services, usage patterns}

Analyze:
1. Right-sizing (over-provisioned resources)
2. Reserved vs on-demand vs spot opportunities
3. Storage tier optimization
4. Unused resources to terminate
5. Architecture changes for cost reduction
6. Estimated monthly savings for each recommendation
```
