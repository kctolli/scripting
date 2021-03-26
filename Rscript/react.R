# React R 

source("./js.R")



hello_react <- function(){
  react
  
  pander::pander('
    <div id="hello"></div>

    <script type="text/babel">
      class Hello extends React.Component {
        render() {
          return <h1>Hello React!</h1>
        }
      }

      ReactDOM.render(<Hello />, document.getElementById("hello"))
    </script>')
}

like_button_react <- function(){
  react
  
  pander::pander("<script>
'use strict';

const e = React.createElement;

class LikeButton extends React.Component {
  constructor(props) {
    super(props);
    this.state = { liked: false };
  }

  render() {
    if (this.state.liked) {
      return 'You liked this.';
    }

    return e(
      'button',
      { onClick: () => this.setState({ liked: true }) },
      'Like'
    );
  }
}

const domContainer = document.querySelector('#like_button_container');
ReactDOM.render(e(LikeButton), domContainer);
</script>

<div id='like_button_container'></div>")
}

form_name_react <- function(){
  react
  
  pander::pander("<script>
  class MyForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { username: '' };
  }
  myChangeHandler = (event) => {
    this.setState({username: event.target.value});
  }
  render() {
    return (
      <form>
      <h1>Hello {this.state.username}</h1>
      <p>Enter your name:</p>
      <input
        type='text'
        onChange={this.myChangeHandler}
      />
      </form>
    );
  }
}

ReactDOM.render(<MyForm />, document.getElementById('root'));
</script>

<div id='root'></div>")
}