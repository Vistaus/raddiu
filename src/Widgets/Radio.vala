public class raddiu.Widgets.Radio : Gtk.Box {
  public RadioData metadata;
  public Radio (RadioData data) {
    orientation = Gtk.Orientation.HORIZONTAL;
    spacing = 5;
    metadata = data;

    get_style_context().add_class("raddiu-card");


    var icon = new Widgets.WebImage.from_url (metadata.favicon, "playlist-symbolic");
    icon.margin = 10;
    icon.pixel_width = 48;
    icon.pixel_height = 48;
    icon.pixel_size = 48;
    add(icon);

    var text = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);
    text.margin = 10;
    add(text);

    var label = new Granite.HeaderLabel(data.name);
    label.max_width_chars = 25;
    label.wrap = true;
    label.wrap_mode = Pango.WrapMode.WORD_CHAR;
    text.add(label);

    var votes = new Gtk.Label("Votes: " + data.votes);
    votes.halign = Gtk.Align.START;
    text.add(votes);
  }    
}
