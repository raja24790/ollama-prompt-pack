# Debugging & Troubleshooting Prompts

## Error Analysis

### 1. Stack Trace Analyzer
```
Analyze this error stack trace and help me fix it:

Error: {paste error}
Stack trace: {paste trace}

Context: This code is {describe what it does}
Language: {Python/JavaScript/etc.}

Provide:
1. Root cause in plain English
2. Which line is the actual problem
3. The fix (with code)
4. How to prevent this type of error
```

### 2. Silent Bug Finder
```
This code runs without errors but produces wrong results.

Expected output: {describe}
Actual output: {describe}
Input data: {describe or paste}

Walk through the code step by step, tracking variable values at each line. Identify where the logic diverges from the expected behavior.

Code:
{paste code}
```

### 3. Memory Leak Detective
```
This application's memory usage grows over time. Help me find the leak.

Symptoms: {describe — e.g., "RAM goes from 200MB to 2GB over 1 hour"}
Technology: {e.g., "Node.js Express server"}
Suspected area: {if any}

Analyze this code for memory leaks. Check for:
- Event listeners not being removed
- Growing arrays/maps that are never cleaned
- Closures holding references
- Circular references preventing GC
- Unclosed streams/connections

Code:
{paste code}
```

### 4. Race Condition Finder
```
This code works sometimes but fails intermittently. I suspect a race condition.

Symptoms: {describe — e.g., "duplicate records appear randomly"}
Frequency: {how often does it fail}

Analyze for race conditions:
- Shared state accessed without locks
- Non-atomic read-modify-write sequences
- Missing await on async operations
- Event ordering assumptions
- TOCTOU (time-of-check-time-of-use) bugs

Code:
{paste code}
```

### 5. Performance Bottleneck Finder
```
This code is too slow. Current: {current performance}. Target: {target}.

Profile the code mentally and identify bottlenecks:
1. Algorithmic complexity (O(n²) operations, nested loops)
2. I/O bottlenecks (synchronous reads, N+1 queries)
3. Memory allocation patterns
4. Unnecessary computation (recalculating constants, redundant operations)
5. Missing caching opportunities

Rank issues by impact and provide fixes for each.

Code:
{paste code}
```

## Infrastructure Debugging

### 6. Docker Troubleshooter
```
My Docker container {describe the problem}. Help me debug.

Dockerfile: {paste}
docker-compose.yml: {paste if relevant}
Error output: {paste}

Check for:
- Port conflicts
- Volume mount permissions
- Network connectivity between containers
- Environment variable issues
- Build stage failures
- Image size problems
```

### 7. Database Query Optimizer
```
This SQL query is slow ({current time}). The table has {row count} rows.

Query: {paste SQL}
Table schema: {paste or describe}
Indexes: {list existing indexes}

Analyze:
1. Explain the execution plan
2. Identify missing indexes
3. Rewrite the query for better performance
4. Suggest schema changes if needed
5. Estimate improvement
```

### 8. API Error Debugger
```
My API call returns {status code} with this response: {paste response}

Request:
- Method: {GET/POST/etc.}
- URL: {url}
- Headers: {relevant headers}
- Body: {if POST/PUT}

Help me understand:
1. What does this error mean
2. Common causes for this specific error
3. How to fix it
4. How to add better error handling
```

### 9. CORS Issue Resolver
```
I'm getting a CORS error in the browser.

Error message: {paste exact error}
Frontend URL: {e.g., localhost:3000}
Backend URL: {e.g., localhost:8000}
Backend framework: {Express/FastAPI/etc.}

Provide:
1. Why this specific CORS error is happening
2. The exact backend configuration to fix it
3. Common pitfalls (preflight requests, credentials, etc.)
4. Security considerations (don't just use *)
```

### 10. SSL/TLS Troubleshooter
```
I'm getting SSL/certificate errors when {describe situation}.

Error: {paste error}
Setup: {nginx/Apache/Node.js/etc.}

Diagnose the issue and provide:
1. What's wrong with the certificate chain
2. Step-by-step fix
3. How to verify it's working (openssl commands)
4. How to set up auto-renewal
```

## Log Analysis

### 11. Log Pattern Analyzer
```
Analyze these application logs and identify issues:

{paste 50-100 lines of logs}

Look for:
1. Error patterns (recurring errors, error spikes)
2. Performance degradation signals
3. Security concerns (failed logins, unusual access)
4. Resource exhaustion warnings
5. Correlation between events
Provide a summary with severity ranking.
```

### 12. Crash Report Analyzer
```
My application crashed. Here's what I have:

Crash log: {paste}
System info: {OS, runtime version, memory at time of crash}
What was happening: {describe user action or background process}
Frequency: {first time, intermittent, always at this point}

Determine:
1. Most likely cause
2. Steps to reproduce
3. Fix or workaround
4. Monitoring to add to prevent recurrence
```

## Security Debugging

### 13. Vulnerability Scanner
```
Review this code for security vulnerabilities. Check for:
1. SQL injection
2. XSS (cross-site scripting)
3. CSRF
4. Path traversal
5. Command injection
6. Insecure deserialization
7. Sensitive data exposure
8. Authentication/authorization flaws
9. SSRF (server-side request forgery)
10. Insecure dependencies

For each finding: severity, exploit scenario, and fix.

Code:
{paste code}
```

### 14. Auth Flow Debugger
```
Users are getting logged out unexpectedly / can't log in / getting 401 errors.

Auth system: {JWT/session/OAuth}
Framework: {describe}
Symptoms: {describe exactly what happens}

Analyze for:
1. Token expiration issues
2. Cookie configuration problems (SameSite, Secure, domain)
3. Race conditions in token refresh
4. Session storage issues
5. Clock skew between services
```

### 15. Dependency Audit
```
Review this package.json / requirements.txt for security and maintenance issues:

{paste file}

Check for:
1. Known vulnerabilities (CVEs)
2. Outdated packages with available patches
3. Packages with no maintenance (archived, no recent commits)
4. Unnecessary dependencies that increase attack surface
5. Version pinning issues (too loose or too strict)
Provide a prioritized update plan.
```
