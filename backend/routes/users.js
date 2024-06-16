// routes/users.js

const express = require('express');
const router = express.Router();
const User = require('../models/user');

// GET all users
router.get('/', async (req, res) => {
  try {
    const users = await User.findAll();
    res.json(users);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error1 '+ err.message);
  }
});

// POST a new user
router.post('/', async (req, res) => {
  const { username, password } = req.body;
  try {
    let user = await User.create({
      username,
      password
    });
    res.json(user);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

// PUT update user password
router.put('/:id', async (req, res) => {
  const { id } = req.params;
  const { password } = req.body;
  try {
    let user = await User.findByPk(id);
    if (!user) return res.status(404).json({ msg: 'User not found' });
    
    user.password = password;
    await user.save();

    res.json(user);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

// DELETE a user
router.delete('/:id', async (req, res) => {
  const { id } = req.params;
  try {
    let user = await User.findByPk(id);
    if (!user) return res.status(404).json({ msg: 'User not found' });

    await user.destroy();

    res.json({ msg: 'User deleted' });
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

module.exports = router;
