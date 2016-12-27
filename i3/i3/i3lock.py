from random import randint
from PIL import Image, ImageDraw, ImageFont, ImageFilter
from subprocess import call

PHRASES = {
    "heading": [
      "I'm fucking compiling a ",
      "Check this shit out, a ",
      "I'm building a "
    ],

    "response": [
      "Already fucking seen one",
      "Give me a-fucking-nother one",
      "Don't really give a fuck",
      "This is too fucking obvious",
      "What the fuck are you saying"
    ],

    "template": [
      "{gerund} {verb}",
      "algorithm for a {gerund} {verb}",
      "{gerund}, {gerund2} {verb}",
      "{gerund} {verb} for a {verb2}"
    ],

    "gerund": [
      "self-propogating",
      "backpropogating",
      "deep learning",
      "dynamic programming",
      "fucking",
      "neato",
      "outdated",
      "startup's",
      "badly-written",
      "just-refactored",
      "nodeJS",
      "virus-infected",
      "overrated"
    ],

    "verb": [
      "program",
      "algorithm",
      "neural net",
      "virtual machine",
      "power supply unit",
      "quibit",
      "quibit mile",
      "blue screen of death",
      "kernel panic",
      "maze solver",
      "markov chain",
      "web app",
      "server",
      "software",
      "Linux",
      "tiling window manager",
      "content management system",
      "trojan horse"
    ]
}


def generate_text():
    template = PHRASES['template'][randint(0, len(PHRASES['template'])-1)]
    g1 = PHRASES['gerund'].pop(randint(0, len(PHRASES['gerund'])-1))
    g2 = PHRASES['gerund'].pop(randint(0, len(PHRASES['gerund'])-1))
    v1 = PHRASES['verb'].pop(randint(0, len(PHRASES['verb'])-1))
    v2 = PHRASES['verb'].pop(randint(0, len(PHRASES['verb'])-1))
    return PHRASES['heading'][randint(0, len(PHRASES['heading'])-1)] + template.format(gerund=g1, gerund2=g2, verb=v1, verb2=v2)


filter_dict = {
    'BLUR' : ImageFilter.BLUR,
    'CONTOUR' : ImageFilter.CONTOUR,
    'DETAIL' : ImageFilter.DETAIL,
    'EDGE_ENHANCE' : ImageFilter.EDGE_ENHANCE,
    'EDGE_ENHANCE_MORE' : ImageFilter.EDGE_ENHANCE_MORE,
    'EMBOSS' : ImageFilter.EMBOSS,
    'FIND_EDGES' : ImageFilter.FIND_EDGES,
    'SMOOTH' : ImageFilter.SMOOTH,
    'SMOOTH_MORE' : ImageFilter.SMOOTH_MORE,
    'SHARPEN' : ImageFilter.SHARPEN
}

def get_font_full_path(font_path,font_name):
    ext = '.TTF' if font_name.upper() == font_name else ".ttf"
    return font_path + font_name + ext

def create_image(width, height, back_ground_color, text, img_type="PNG", image_filter=None):
    font = ImageFont.truetype('/usr/share/fonts/Lato2OFL/Lato-Medium.ttf', 40)

    im  =  Image.new( "RGB", (width,height), back_ground_color )
    draw  =  ImageDraw.Draw( im )
    text_x, text_y = font.getsize(text)
    x = (width - text_x)/2
    y = (height - text_y)/2
    draw.text( (x,y), text, font=font, fill="#f8f8f2")

    if image_filter:
        real_filter = filter_dict[image_filter]
        im = im.filter(real_filter)
    im.save("/tmp/lock_screen.png", format=img_type )

create_image(1920, 1080, "#282828", generate_text(), image_filter="DETAIL")

call(["i3lock", "-i", "/tmp/lock_screen.png"])
