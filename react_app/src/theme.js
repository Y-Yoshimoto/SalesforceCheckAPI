import { createMuiTheme } from '@material-ui/core/styles';
import blue from '@material-ui/core/colors/blue';
import red from '@material-ui/core/colors/red';

export const theme = createMuiTheme({
    appBar: {
        margin: 10,
    },
    palette: {
        type: 'light',
        primary: blue,
        secondary: red
    },
    root: {
        flexGrow: 1,
    },
});