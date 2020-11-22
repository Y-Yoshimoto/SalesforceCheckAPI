import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import Button from '@material-ui/core/Button';

class Board extends React.Component {
    render() {
        return (
            <div>
                <Button variant="contained" color="primary">
                    Hello World
                </Button>
            </div>
        );
    }
}


ReactDOM.render(
    <Board />,
    document.getElementById('root')
);
