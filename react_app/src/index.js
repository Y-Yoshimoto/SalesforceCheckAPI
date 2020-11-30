import React from 'react';
import ReactDOM from 'react-dom';
//AppBars
import AppBar from '@material-ui/core/AppBar';
import Toolbar from '@material-ui/core/Toolbar';
import IconButton from '@material-ui/core/IconButton';
import MenuIcon from '@material-ui/icons/Menu';
import Typography from '@material-ui/core/Typography';


import { MuiThemeProvider } from "@material-ui/core/styles";
import './index.css';

import { theme } from "./theme";

// グラフ描画
import { CharComponent } from './chart.js';

class APIReqsInfo extends React.Component {
    render() {
        return (
            <MuiThemeProvider theme={theme}>
                <AppBar style={{ margin: 0 }} position="static">
                    <Toolbar>
                        <IconButton edge="start" className={theme.menuButton} color="inherit" aria-label="menu">
                            <MenuIcon />
                        </IconButton>
                        <Typography variant="h6" className={theme.title}>
                            API使用率
                        </Typography>
                    </Toolbar>
                </AppBar>
                <CharComponent />
            </MuiThemeProvider>
        )
    }
}

ReactDOM.render(
    //<APIReqsInfoChart />,
    <APIReqsInfo />,
    document.getElementById('root')
);