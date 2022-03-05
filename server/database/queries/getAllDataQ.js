const connection = require('../config/connection');

const getAllDataQ = () => {
  const sql = {
    text: 'SELECT users.name, notes.note FROM users JOIN notes ON(users.id = notes.user_id);',
  };
  return connection.query(sql);
};

module.exports = getAllDataQ;
