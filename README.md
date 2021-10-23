# Flutter Test Task

The task is small but it is important to treat it seriously and create production quality code. If
you’re uncertain about any details of the project, feel free to render your own decisions – make
your software opinionated.

Pay attention to your project structure and architectural solutions. Also take into account any
edge cases that you may think of. You’re allowed to pick any state management solution.

# Requirements

Create a Flutter app that will have Collection page (index) and Details page using
http://jsonapiplayground.reyesoft.com/ API. Application should match Material specification for
UI and animations (default material components can be used alongside with any third-party
libraries if needed). It also should be representative. Application should meet UX best practices
(for instance, the page shouldn’t be blank while data is loading).

## Collection page

1. Collection page should render a collection of books.
2. Clicking on the item should navigate the user to the book’s details page.
3. Collection page should have an option to filter the collection by Store.
4. User should be able to refetch books collection by swiping down (pull to refresh action)
(optional)

## Details page

1. Should render the details on a particular book like Name, Author, Store etc (it’s up to the
developer to pick what information will be shown)
2. User should be able to refetch book by swiping down (pull to refresh action) (optional)
