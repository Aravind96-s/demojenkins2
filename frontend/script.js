function loadData() {
    fetch('/api')
        .then(res => res.json())
        .then(data => {
            document.getElementById('output').innerText = data.message;
        });
}