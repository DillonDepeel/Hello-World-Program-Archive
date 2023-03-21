var state = {
  name: 'World'
}

tag App
  def render
    <self> 
      <p> "Hello, {data:name}"
      <p>
        <input[data:name]>


Imba.mount <App[state]>
