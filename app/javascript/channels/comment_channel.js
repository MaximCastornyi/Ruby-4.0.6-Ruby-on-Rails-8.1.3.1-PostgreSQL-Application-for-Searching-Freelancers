import consumer from "./consumer"

document.addEventListener('turbolinks:load', () => {
  const commentsContainer = document.querySelector('[data-channel-subscribe="order"]')
  if (!commentsContainer) return

  const orderId = commentsContainer.dataset.orderId
  const currentUserId = document.body.dataset.currentUserId // Добавьте id текущего пользователя в body

  consumer.subscriptions.create({ channel: "CommentChannel", order: orderId }, {
    received(data) {
      const template = document.createElement('template')
      template.innerHTML = data.message.trim()
      const newComment = template.content.firstChild

      // Подмена имени на "Me", если автор — текущий пользователь
      const authorId = newComment.dataset.authorId
      if (authorId === currentUserId) {
        const nameElement = newComment.querySelector('.comment-author-name')
        if (nameElement) nameElement.textContent = 'Me'
      }

      // Вставка комментария в контейнер
      commentsContainer.appendChild(newComment)
    }
  })
})