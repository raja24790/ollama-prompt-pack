# Python Development Prompts

## Code Generation

### 1. Python Function Generator
```
Write a Python function that {description}. Requirements:
- Include type hints for all parameters and return value
- Add a docstring with Args, Returns, and Raises sections
- Include input validation with appropriate exceptions
- Follow PEP 8 naming conventions
- Add 3 unit test examples at the bottom
```

### 2. FastAPI Endpoint Creator
```
Create a FastAPI endpoint that {description}. Include:
- Pydantic model for request/response validation
- Proper HTTP status codes and error handling
- Async/await where appropriate
- OpenAPI documentation strings
- Example curl command to test it
```

### 3. Data Pipeline Builder
```
Build a Python data pipeline that {description}. Use:
- Pandas for data transformation
- Proper error handling with logging
- Memory-efficient processing (chunked reading for large files)
- Type hints and dataclass for configuration
- Progress bar using tqdm
```

### 4. CLI Tool Generator
```
Create a Python CLI tool using argparse that {description}. Include:
- Descriptive help text for all arguments
- Default values where sensible
- Input validation
- Colored output using colorama or rich
- A --verbose flag for debug output
- Example usage in the docstring
```

### 5. SQLAlchemy Model Generator
```
Create SQLAlchemy 2.0 models for {description}. Include:
- Proper relationships (one-to-many, many-to-many as needed)
- Column constraints (unique, nullable, default values)
- Indexes on commonly queried columns
- A __repr__ method
- An Alembic migration script
```

## Code Review & Debugging

### 6. Code Reviewer
```
Review this Python code for:
1. Bugs and logic errors
2. Security vulnerabilities (SQL injection, path traversal, etc.)
3. Performance issues (N+1 queries, unnecessary loops, memory leaks)
4. PEP 8 violations
5. Missing error handling

For each issue found, provide:
- Line number
- Severity (critical/warning/info)
- What's wrong
- How to fix it (with code)

Code to review:
{paste code}
```

### 7. Bug Hunter
```
This Python code produces {describe the bug/error}.

Expected behavior: {what should happen}
Actual behavior: {what actually happens}
Error message (if any): {paste error}

Analyze the code, identify the root cause, and provide:
1. What's causing the bug
2. Why it happens
3. The minimal fix
4. How to prevent similar bugs

Code:
{paste code}
```

### 8. Performance Optimizer
```
Optimize this Python code for speed and memory usage. Current performance: {describe}.

For each optimization:
1. Explain what's slow and why
2. Show the optimized version
3. Estimate the speedup (e.g., "~3x faster")
4. Note any tradeoffs

Consider: list comprehensions, generator expressions, numpy vectorization, caching, algorithmic improvements.

Code:
{paste code}
```

### 9. Test Writer
```
Write comprehensive pytest tests for this Python code. Include:
- Happy path tests
- Edge cases (empty input, None, large values, negative numbers)
- Error cases (invalid input types, boundary conditions)
- Use parametrize for multiple test cases
- Mock external dependencies
- Aim for >90% code coverage

Code to test:
{paste code}
```

### 10. Refactoring Assistant
```
Refactor this Python code following SOLID principles and clean code practices.

Goals:
- Reduce complexity (functions under 20 lines)
- Extract common patterns into reusable functions
- Add type hints throughout
- Improve naming (variables, functions, classes)
- Remove code duplication
- Add appropriate design patterns if beneficial

Show the refactored version with comments explaining each change.

Code:
{paste code}
```

## Python Specific

### 11. Async Converter
```
Convert this synchronous Python code to async/await using asyncio.
- Replace blocking I/O with async equivalents (aiohttp, aiofiles, asyncpg)
- Use asyncio.gather() for concurrent operations
- Handle exceptions properly in async context
- Add proper cleanup with async context managers
- Show before/after performance comparison

Code:
{paste code}
```

### 12. Decorator Factory
```
Create a Python decorator that {description}. Requirements:
- Preserve the original function's signature (use functools.wraps)
- Support both @decorator and @decorator(args) syntax
- Handle both sync and async functions
- Include type hints using ParamSpec and TypeVar
- Add 3 usage examples
```

### 13. Context Manager Builder
```
Create a Python context manager (using both class-based and @contextmanager approaches) for {description}. Include:
- Proper resource acquisition and cleanup
- Exception handling within __exit__
- Async version using @asynccontextmanager
- Usage examples with 'with' and 'async with'
```

### 14. Pydantic Model Designer
```
Design Pydantic v2 models for {description}. Include:
- Field validators (before/after)
- Custom serialization
- Nested models with proper typing
- Model configuration (json_schema_extra, frozen, etc.)
- Example JSON input/output
- Migration notes from v1 if applicable
```

### 15. Python Package Scaffolder
```
Create the project structure for a Python package called {name} that {description}. Include:
- pyproject.toml with all metadata
- src layout (src/{package}/__init__.py, etc.)
- Tests directory with conftest.py
- GitHub Actions CI workflow
- Pre-commit config (.pre-commit-config.yaml)
- Makefile with common commands
- README.md template
- Type stub files
```

### 16. Exception Hierarchy Designer
```
Design a custom exception hierarchy for {application/domain}. Include:
- Base exception class with error codes
- Specific exceptions for each error category
- Exception context (original exception chaining)
- User-friendly error messages
- Logging integration
- Example usage in try/except blocks
```

### 17. Database Migration Script
```
Write an Alembic migration script that {description}. Include:
- upgrade() and downgrade() functions
- Data migration (not just schema changes)
- Proper handling of nullable columns with existing data
- Index creation/removal
- Comments explaining each step
```

### 18. Logging Configuration
```
Set up production-ready Python logging for {application type}. Include:
- Structured JSON logging (for log aggregation)
- File rotation (TimedRotatingFileHandler)
- Different log levels for console vs file
- Request ID tracking (for web apps)
- Performance logging decorator
- Sensitive data redaction
```

### 19. API Client Builder
```
Build a Python API client for {API/service}. Include:
- Retry logic with exponential backoff (tenacity)
- Rate limiting
- Request/response logging
- Proper error handling with custom exceptions
- Connection pooling (httpx)
- Async support
- Type-safe response models (Pydantic)
```

### 20. Data Class Designer
```
Design Python dataclasses for {domain model}. Include:
- @dataclass with appropriate options (frozen, slots, kw_only)
- __post_init__ validation
- Factory methods (from_dict, from_json, from_csv_row)
- Comparison and ordering (__eq__, __lt__)
- Serialization methods (to_dict, to_json)
- Type aliases for complex types
```
