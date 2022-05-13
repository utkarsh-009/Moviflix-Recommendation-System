#Importing Dependencies

from flask import Flask, jsonify, request
import numpy as np
import pandas as pd
import difflib
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity

# Data Collection and Pre-Processing
url = "https://drive.google.com/file/d/1wmHJ4aRSddl6uUl95a5T1JibDNjaL0Kn/view?usp=sharing"
path = 'https://drive.google.com/uc?export=download&id='+url.split('/')[-2]
movies_data = pd.read_csv(path)


# selecting the relevant features for recommendation
selected_features = ['genres','keywords','tagline','cast','director']

# replacing the null valuess with null string
for feature in selected_features:
  movies_data[feature] = movies_data[feature].fillna('')

# combining all the 5 selected features
combined_features = movies_data['genres']+' '+movies_data['keywords']+' '+movies_data['tagline']+' '+movies_data['cast']+' '+movies_data['director']

# converting the text data to feature vectors
vectorizer = TfidfVectorizer()

# converting combined_features into feature vectors and returning it into matrix form
feature_vectors = vectorizer.fit_transform(combined_features)

# getting the similarity scores using cosine similarity
similarity = cosine_similarity(feature_vectors)

app = Flask(__name__)

@app.route("/api/<string:movie_name>")
def movieRs(movie_name):
    # movie_name = str(request.args(['query']))
    list_of_all_titles = movies_data['title'].tolist()

    find_close_match = difflib.get_close_matches(movie_name, list_of_all_titles)
    
    close_match = find_close_match[0]
    
    index_of_the_movie = movies_data[movies_data.title == close_match]['index'].values[0]
    
    similarity_score = list(enumerate(similarity[index_of_the_movie]))
    
    sorted_similar_movies = sorted(similarity_score, key = lambda x:x[1], reverse = True) 

    mlist = []

    i = 0

    for movie in sorted_similar_movies:
        index = movie[0]
        title_from_index =  movies_data[movies_data.index == index]['title'].values[0]
        homepage_from_index = movies_data[movies_data.index == index]['homepage'].values[0]
        if (i <= 10):
            mlist.append({'id': i, 'movie_name': title_from_index, 'homepage': homepage_from_index})
            i += 1
    
    return jsonify(mlist)

if __name__ == "__main__":
    app.run(debug=True)

