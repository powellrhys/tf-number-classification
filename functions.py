from PIL import Image
import tensorflow as tf
import numpy as np

def classify_image(img, model):

    probability = np.argmax(model.predict(img[None,:,:]))

    return probability
