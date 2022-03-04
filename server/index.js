require('env2')('.env');
const app = require('./app');

app.set('port', process.env.PORT || 5050);

// eslint-disable-next-line no-console
app.listen(app.get('port'), () => { console.log(`App is running on server http://localhost:${app.get('port')}`); });
