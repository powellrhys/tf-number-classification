from functions import classify_image
from PIL import Image
import tensorflow as tf
import streamlit as st
import numpy as np

model = tf.keras.models.load_model('model')

img_buffer = st.file_uploader(label='Upload image here')

if img_buffer is not None:
    image = Image.open(img_buffer).convert('L').resize((28, 28), Image.ANTIALIAS)
    img_array = np.array(image) 
    
    st.image(image, caption="Uploaded Image")

    prediction = classify_image(img_array, model)

    st.write(f'Predicted Number: {prediction}')
