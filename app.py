from flask import Flask, jsonify, abort, make_response, request, json
from flask.ext.sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:admin123@localhost/infoshift'
 
db = SQLAlchemy()
db.init_app(app)

class Bookmark(db.Model):
	__tablename__ = 'bookmarks'
	id = db.Column(db.Integer, primary_key = True)
	url = db.Column(db.Text)
	def __init__(self, url):
		self.url = url

@app.route('/bookmarks', methods=['GET'])
def get_bookmarks():
	bookmarksQuery = Bookmark.query.all()
	bookmarks = []
	for bm in bookmarksQuery:
		bookmarks.append({'id': bm.id, 'url': bm.url})
	return jsonify( {'result':bookmarks} )

@app.route('/bookmarks/<int:id>', methods=['GET'])
def get_bookmark(id):
	bookmarksQuery = Bookmark.query.get(id)
	bookmark = []
	bookmark.append({'id': bookmarksQuery.id, 'url': bookmarksQuery.url})
	return jsonify( {'result':bookmark} )
	#return json.dumps(bookmarks);

@app.route('/bookmarks', methods=['POST'])
def create_bookmark():
	if not request.form or not 'url' in request.form:
		abort(400)
	bookmark = Bookmark(request.form['url'])
	db.session.add(bookmark)
	db.session.commit()
	data = []
	data.append({'id': bookmark.id, 'url': bookmark.url})
	#tasks.append(task)
	return jsonify({'bookmark': data}), 201	

@app.route('/bookmarks/<int:id>', methods=['PUT'])
def update_bookmark(id):
	if not request.form or not 'url' in request.form:
		abort(400)
	bookmark = Bookmark.query.filter_by(id=id).first()
	bookmark.url = request.form['url']
	db.session.commit()
	data = []
	data.append({'id': bookmark.id, 'url': bookmark.url})
	return jsonify({'bookmark': data}), 201	

@app.route('/bookmarks/<int:id>', methods=['DELETE'])
def delete_bookmark(id):
	bookmark = Bookmark.query.filter_by(id=id).first()
	db.session.delete(bookmark)
	db.session.commit()
	return jsonify({'result': 'success'})

if __name__ == '__main__':
	app.debug = True
	app.run()
