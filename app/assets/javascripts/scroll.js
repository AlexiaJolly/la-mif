function scrollLastMessageIntoView() {
  const comments = document.querySelectorAll('.comment');
  const lastComment = comments[comments.length - 1];

  if (lastComment !== undefined) {
    lastComment.scrollIntoView();
  }
}
