## Introduction

Reproduction for https://github.com/prisma/prisma/issues/8050


### Version Information

```
Environment variables loaded from prisma\.env
prisma               : 2.29.0-dev.38
@prisma/client       : 2.29.0-dev.38
Current platform     : windows
Query Engine         : query-engine f1238e20399c9d3dc91301ebca69230503301f6e (at node_modules\@prisma\engines\query-engine-windows.exe)
Migration Engine     : migration-engine-cli f1238e20399c9d3dc91301ebca69230503301f6e (at node_modules\@prisma\engines\migration-engine-windows.exe)
Introspection Engine : introspection-core f1238e20399c9d3dc91301ebca69230503301f6e (at node_modules\@prisma\engines\introspection-engine-windows.exe)
Format Binary        : prisma-fmt f1238e20399c9d3dc91301ebca69230503301f6e (at node_modules\@prisma\engines\prisma-fmt-windows.exe)
Default Engines Hash : f1238e20399c9d3dc91301ebca69230503301f6e
Studio               : 0.418.0
Preview Features     : selectRelationCount
```

### Steps

1. Change credentials in `prisma/.env` and run `prisma db push` to initialize
2. Import `issue_8050.sql` file. 

This has the following data:
post title one has 2 comments
post title two has 4 comments
post title three has 0 comment
post title four has 0 comment

3. Install deps and run `yarn start` to reproduce. It returns the following data which is wrong:
```
[
  {
    id: 'cks4aa7k70000kcfj50bm387k',
    title: 'three',
    _count: { comments: 0 }
  },
  {
    id: 'cks4a9z3m0000agfjhp0agigt',
    title: 'two',
    _count: { comments: 0 }
  },
  {
    id: 'cks4a9qin0000ncfj8jjdj2h4',
    title: 'one',
    _count: { comments: 4 }
  }
]
```
