from flask import Flask,jsonify

app = Flask(__name__) # object creation

# data
books = [
    {"id":1, "title":"Book 1", "author":"Author 1"},
    {"id":2, "title":"Book 2", "author":"Author 2"},
    {"id":3, "title":"Book 3", "author":"Author 3"},
    {"id":4, "title":"Book 4", "author":"Author 4"},
    {"id":5, "title":"Book 5", "author":"Author 5"},
]

# route to home page
@app.route('/', methods=['GET'])
def home_page():
    return 'Home page'

# route to get all books
@app.route('/books', methods=['GET'])
def get_books():
    return jsonify(books)

# route to get a specific book by Id
@app.route('/books/<int:book_id>', methods=['GET'])
def get_book(book_id):
    for book in books:
        if book['id'] == book_id:
            return jsonify(book)
    return jsonify({'error':"book not found"})


if __name__ == '__main__':
    app.run(debug=True)