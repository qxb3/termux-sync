import logo from './logo.svg';
import './App.css';

function App(props) {
  console.log(props.name)

  return (
    <div class="App">
      <h1>{props.name}</h1>
    </div>
  )
}

export default App;
