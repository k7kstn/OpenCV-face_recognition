# face.rb  - face detection  utilizing  opencv
require 'opencv'
include OpenCV

if ARGV.length < 2
	  puts "Usage: ruby #{__FILE__} source dest"
	    exit
end

# data = './data/haarcascades/haarcascade_frontalface_alt.xml'
# data = '/usr/local/share/OpenCV/haarcascades/haarcascade_frontalface_default.xml'
# data = '/usr/local/share/OpenCV/haarcascades/haarcascade_frontalface_alt.xml'
# data = '/usr/local/share/OpenCV/haarcascades/haarcascade_frontalface_alt2.xml'
# data = '/usr/local/share/OpenCV/haarcascades/haarcascade_frontalface_alt_tree.xml'
data = '../data/face_cv2.xml'
detector = CvHaarClassifierCascade::load(data)
image = CvMat.load(ARGV[0])
# image = image.resize CvSize.new 640, 360
image = image.resize CvSize.new 800, 600
detector.detect_objects(image).each do |region|
	  puts "detect!! : #{region.top_left}, #{region.top_right}, #{region.bottom_left}, #{region.bottom_right}"
	  # color = CvColor::Blue
	  color = CvColor::Red
	    image.rectangle! region.top_left, region.bottom_right, :color => color
end

image.save_image(ARGV[1])
window = GUI::Window.new('Face detection')
window.show(image)
GUI::wait_key

