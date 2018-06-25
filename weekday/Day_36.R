library(keras)
model <- application_vgg16(include_top = TRUE, weights = 'imagenet')
#save_model_hdf5(model, filepath = '~/imagenet.h5')
#save_model_weights_hdf5(model, filepath = '~/imagenet_weights.h5')
#model <- load_model_hdf5('~/imagenet.h5')

pre_img <- function(path){
  x <- image_load(path, target_size = c(224, 224))
  x <- image_to_array(x)
  x <- array_reshape(x, c(1, dim(x))) 
  imagenet_preprocess_input(x)
}

penguins <- pre_img(path = '~/penguins.jpg')

pred <- model %>% predict(penguins)
imagenet_decode_predictions(pred)