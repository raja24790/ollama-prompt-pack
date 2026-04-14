# JavaScript & TypeScript Development Prompts

## Code Generation

### 1. React Component Generator
```
Create a React component in TypeScript that {description}. Requirements:
- Functional component with proper TypeScript interfaces for props
- Use React hooks (useState, useEffect, useMemo as appropriate)
- Include error boundary handling
- Add JSDoc comments
- Mobile-responsive styling (Tailwind CSS)
- Include a Storybook story example
```

### 2. Next.js API Route
```
Create a Next.js 14+ API route handler that {description}. Include:
- Request validation with Zod
- Proper error responses with appropriate HTTP status codes
- Rate limiting consideration
- TypeScript types for request/response
- Edge runtime compatible if possible
- Example fetch call from client side
```

### 3. Express Middleware
```
Create an Express.js middleware that {description}. Include:
- TypeScript types (Request, Response, NextFunction)
- Error handling (pass errors to next())
- Configuration options via factory function
- Unit tests with supertest
- Usage example in app.use()
```

### 4. React Custom Hook
```
Create a custom React hook called use{Name} that {description}. Include:
- TypeScript generics where appropriate
- Proper cleanup in useEffect return
- Loading/error/data state management
- Memoization where beneficial
- SSR-safe (check for window/document)
- Usage example in a component
- Unit test with @testing-library/react-hooks
```

### 5. Zod Schema Builder
```
Create Zod validation schemas for {description}. Include:
- Nested object validation
- Custom error messages
- Transform/preprocess for data normalization
- Discriminated unions if needed
- TypeScript type inference (z.infer)
- Example validation with error handling
```

## TypeScript Patterns

### 6. Type-Safe Event Emitter
```
Create a type-safe event system for {description} using TypeScript.
- Strongly typed event names and payloads
- on(), off(), emit() methods
- Wildcard listeners
- Once listeners
- Memory-safe (WeakRef for listeners if appropriate)
```

### 7. Builder Pattern
```
Implement a type-safe builder pattern in TypeScript for {description}.
- Each method returns 'this' for chaining
- Compile-time validation of required fields
- .build() only available when all required fields are set
- Immutable result object
```

### 8. State Machine
```
Create a type-safe state machine in TypeScript for {description}.
- Strictly typed states and transitions
- Guard conditions on transitions
- Side effects on enter/exit
- Impossible transitions caught at compile time
- Visualization of state diagram in comments
```

## Frontend Patterns

### 9. Form Handler
```
Create a React form component for {description}. Include:
- React Hook Form + Zod validation
- TypeScript types for form data
- Field-level error display
- Submit handler with loading state
- Optimistic updates
- Accessibility (aria labels, focus management)
```

### 10. Data Table Component
```
Create a reusable data table component in React/TypeScript for {description}. Include:
- Sortable columns (click header)
- Pagination (client or server-side)
- Search/filter functionality
- Row selection with checkboxes
- Responsive (horizontal scroll on mobile)
- Loading skeleton state
- Empty state
```

### 11. Authentication Flow
```
Implement authentication in a Next.js 14 app using {provider}. Include:
- Login/signup pages
- Protected route middleware
- Session management
- Token refresh logic
- Role-based access control
- Logout with cleanup
- TypeScript types for user/session
```

### 12. Real-time Chat Component
```
Create a real-time chat component in React with {websocket/SSE}. Include:
- Message list with auto-scroll
- Typing indicators
- Connection status indicator
- Reconnection logic with backoff
- Message formatting (markdown, code blocks)
- File/image attachment support
- TypeScript interfaces for messages
```

## Node.js Backend

### 13. Database Repository Pattern
```
Create a repository pattern in TypeScript for {entity} using {Prisma/Drizzle/Knex}. Include:
- CRUD operations with proper types
- Pagination (cursor-based and offset)
- Filtering and sorting
- Transaction support
- Soft delete
- Audit logging
- Unit tests with test database
```

### 14. Queue Worker
```
Create a background job worker in Node.js for {description}. Include:
- BullMQ queue setup
- Job processing with retry logic
- Concurrency control
- Progress reporting
- Dead letter queue
- Graceful shutdown
- Health check endpoint
- TypeScript types for job data
```

### 15. Caching Layer
```
Implement a caching layer in TypeScript for {description}. Include:
- In-memory cache with TTL (LRU eviction)
- Redis adapter for distributed caching
- Cache invalidation strategies
- Stale-while-revalidate pattern
- Cache key generation from function args
- Decorator/wrapper pattern for easy use
- Metrics (hit rate, miss rate)
```

## Testing

### 16. Integration Test Suite
```
Write integration tests for {API/feature} using {Jest/Vitest}. Include:
- Test database setup/teardown
- API endpoint tests with supertest
- Authentication mocking
- File upload tests
- Error scenario coverage
- Snapshot tests for responses
- Test data factories
```

### 17. E2E Test
```
Write Playwright E2E tests for {user flow}. Include:
- Page object model
- Visual regression checks
- Network request interception
- Mobile viewport tests
- Accessibility checks (axe-core)
- Screenshot on failure
- CI-friendly configuration
```

### 18. Component Test
```
Write React Testing Library tests for this component. Include:
- Render with different props
- User interaction testing (click, type, select)
- Async behavior testing (loading states, API calls)
- Accessibility testing
- Snapshot test
- Mock child components
- Test error boundaries

Component:
{paste code}
```

## DevOps & Tooling

### 19. GitHub Actions Workflow
```
Create a GitHub Actions CI/CD workflow for a {Next.js/Node.js} project. Include:
- Lint, type-check, test stages
- Parallel jobs where possible
- Caching (node_modules, .next)
- Preview deployments for PRs
- Production deployment on main merge
- Slack notification on failure
- Environment secrets management
```

### 20. Docker Setup
```
Create a production Docker setup for a {Next.js/Node.js} application. Include:
- Multi-stage build (deps → build → production)
- Non-root user
- Health check endpoint
- Proper .dockerignore
- docker-compose.yml with database
- Environment variable handling
- Build-time vs runtime variables
- Less than 200MB final image
```
