const { DataTypes } = require('sequelize');
const db = require('../db/db');

const User = db.define('user', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  username: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false
  }
}, {
  timestamps: false, // Disable timestamps (createdAt and updatedAt)
  tableName: 'users' // Ensure Sequelize uses 'users' as the table name
});

module.exports = User;
