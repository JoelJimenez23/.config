from libqtile import widget,bar





def get_text_box(text,fontsize=None,padding=None,foreground=None,background=None,font=None):
    text_box = widget.TextBox(text=text)
    if fontsize:
        text_box.fontsize = fontsize
    if padding:
        text_box.padding = padding
    if foreground:
        text_box.foreground = foreground
    if background:
        text_box.background = background
    if font:
        text_box.font = font
    return text_box



def get_spacer(length,background=None):
    spacer = widget.Spacer(length=length)
    if(background):
        spacer.background = background
    return spacer


GroupBoxMain = widget.GroupBox(
    padding=10,
    visible_groups=["1","2","3","4","5","6","7","8","9","0"],
    highlight_method="text",
    block_highlight_text_color="#d28f7f",
    urgent_alert_method='text',
    urgent_text="#ffffff",
    active="#f9c3c2",
    inactive="#000000",
    #this_current_screen_border="#965FD4",
    this_current_screen_border="#9dced3",
    disable_drag=True,
)


def get_groupbox(padding=None,
                 visible_groups=None,
                 highlight_method=None,
                 block_highlight_text_color=None,
                 urgent_alert_method=None,
                 urgent_text=None,
                 active=None,
                 inactive=None,
                 this_current_screen_border=None,
                 disable_drag=None):

    groupbox = widget.GroupBox()
    if(padding):
        groupbox.padding = padding
    if(visible_groups):
        groupbox.visible_groups = visible_groups
    if(highlight_method):
        groupbox.highlight_method = highlight_method
    if(block_highlight_text_color):
        groupbox.highlight_method = highlight_method
    if(urgent_alert_method):
        groupbox.urgent_alert_method = urgent_alert_method
    if(urgent_text):
        groupbox.urgent_text = urgent_text
    if(active):
        groupbox.active = active
    if(inactive):
        groupbox.inactive = inactive
    if(this_current_screen_border):
        groupbox.this_current_screen_border = this_current_screen_border
    if(disable_drag):
        groupbox.disable_drag = disable_drag
    return groupbox

def get_volume(foreground=None,background=None,font=None,mute_format=None,unmute_format=None):
    volume = widget.Volume()
    if foreground:
        volume.foreground = foreground
    if background:
        volume.background = background
    if font:
        volume.font = font 
    if mute_format:
        volume.mute_format = mute_format
    if unmute_format:
        volume.unmute_format = unmute_format
    return volume


def get_battery(fontsize=None,format=None,low_foreground=None,foreground=None,font=None,background=None,padding=None):
    battery = widget.Battery()
    if fontsize:
        battery.fontsize = fontsize
    if format:
        battery.format = format
    if low_foreground:
        battery.low_foreground = low_foreground
    if foreground:
        battery.foreground = foreground
    if font:
        battery.font = font
    if background:
        battery.background = background
    if padding:
        battery.padding = padding
    return battery 



def get_image(filename,background=None):
    image = widget.Image(filename=filename)
    if background:
        image.background = background
    return image


def get_clock(format=None,foreground=None,background=None,font=None):
    clock = widget.Clock()
    if format:
        clock.format = format
    if foreground:
        clock.foreground = foreground
    if background:
        clock.background = background
    if font:
        clock.font = font
    return clock


def get_window_name(transparent):
    if(transparent == True):
        return widget.WindowName(
            width=350,
            fmt=" <i><b>{}</b></i>",
            scroll=True,
            scroll_interval=0.02,
            scroll_delay=1,
            background="#00000000"
        ) 
    else:
        return widget.WindowName(
            width=350,
            fmt=" <i><b>{}</b></i>",
            scroll=True,
            scroll_interval=0.02,
            scroll_delay=1,
        ) 


