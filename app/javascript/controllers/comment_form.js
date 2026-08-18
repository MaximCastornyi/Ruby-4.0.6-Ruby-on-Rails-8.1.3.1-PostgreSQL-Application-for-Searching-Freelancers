document.addEventListener('turbolinks:load', () => {
  const form = document.getElementById('new_comment')
  if (!form) return

  form.addEventListener('submit', (e) => {
    e.preventDefault()
    const formData = new FormData(form)

    fetch(form.action, {
      method: 'POST',
      body: formData,
      headers: {
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
      }
    }).then(response => response.json())
      .then(data => {
        if (data.success) {
          form.querySelector('textarea').value = ''
        } else {
          alert('Ошибка при отправке комментария')
        }
      })
  })
})