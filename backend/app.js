const express = require('express');
const app = express();

app.use(express.static('../frontend'));

app.get('/api', (req, res) => {
    res.json({ message: "Hello from Backend 🚀" });
});

app.listen(3000, '0.0.0.0', () => {
    console.log("Server running on port 3000");
});