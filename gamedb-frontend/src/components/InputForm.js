import React from 'react'

export default function InputForm() {
  return (
    <div>
      <div class="form__group">
      <input type="input" class="form__field" placeholder="Name" required=""/>
      <label class="form__label">UserName</label>
      </div>

      <div class="form__group">
      <input type="input" class="form__field" placeholder="Name" required=""/>
      <label class="form__label">Password</label>
      </div>
    </div>
  )
}
