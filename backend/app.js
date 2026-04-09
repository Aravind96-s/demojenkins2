const express = require('express');
const path = require('path');

const app = express();

// Serve frontend correctly
app.use(express.static(path.join(__dirname, '../frontend')));

// API
app.get('/api', (req, res) => {
    res.json({ message: "Hello from Backend 🚀" });
});

// Home route fallback
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, '../frontend/index.html'));
});

app.listen(3000, '0.0.0.0', () => {
    console.log("Server running on port 3000");
});