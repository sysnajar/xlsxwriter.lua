----
-- Format - A class for writing the Excel XLSX Format file.
--
-- Copyright 2014, John McNamara, jmcnamara@cpan.org
--
require "xlsxwriter.strict"

local Xmlwriter = require "xlsxwriter.xmlwriter"

------------------------------------------------------------------------------
--
-- Constructor.
--
------------------------------------------------------------------------------

-- The constructor inherits from xmlwriter.lua.
local Format = {}
setmetatable(Format,{__index = Xmlwriter})

function Format:new()

  local instance = {
    xf_format_indices  = {},
    dxf_format_indices = {},
    xf_index           = nil,
    dxf_index          = nil,
    xf_format_count    = 1,
    dxf_format_count   = 0,
    num_format         = '',
    num_format_index   = 0,
    font_index         = 0,
    has_font           = false,
    has_dxf_font       = false,
    bold               = false,
    underline          = false,
    italic             = false,
    font_name          = "Calibri",
    font_size          = 11,
    font_color         = 0,
    font_strikeout     = false,
    font_outline       = false,
    font_shadow        = false,
    font_script        = false,
    font_family        = 2,
    font_charset       = false,
    font_scheme        = "minor",
    font_condense      = false,
    font_extend        = false,
    theme              = false,
    hyperlink          = false,
    hidden             = false,
    locked             = true,
    text_wrap          = false,
    text_h_align       = 0,
    text_v_align       = 0,
    text_justlast      = false,
    rotation           = 0,
    center_across      = false,
    fg_color           = 0,
    bg_color           = 0,
    pattern            = 0,
    has_fill           = false,
    has_dxf_fill       = false,
    fill_index         = 0,
    fill_count         = 0,
    border_index       = 0,
    has_border         = false,
    has_dxf_border     = 0,
    border_count       = 0,
    bottom             = 0,
    bottom_color       = 0,
    diag_border        = 0,
    diag_color         = 0,
    diag_type          = 0,
    left               = 0,
    left_color         = 0,
    right              = 0,
    right_color        = 0,
    top                = 0,
    top_color          = 0,
    indent             = 0,
    reading_order      = 0,
    shrink             = false,
    merge_range        = false,
    just_distrib       = false,
    color_indexed      = false,
    font_only          = false,
  }

  setmetatable(instance, self)
  self.__index = self
  return instance
end

------------------------------------------------------------------------------
--
-- Public methods.
--
------------------------------------------------------------------------------

----
-- Set the font_name property.
--
function Format:set_font_name(value)
  if not value then return end
  self.font_name = value
end

----
-- Set the font_size property.
--
function Format:set_font_size(value)
  if not value then return end
  self.font_size = value
end

----
-- Set the font_color property.
--
function Format:set_font_color(value)
  if not value then return end
  self.font_color = value
end

----
-- Set the bold property.
--
function Format:set_bold()
  self.bold = true
end

----
-- Set the italic property.
--
function Format:set_italic()
  self.italic = true
end

----
-- Set the underline property.
--
function Format:set_underline(value)
  if not value then return end
  self.underline = value
end

----
-- Set the font_strikeout property.
--
function Format:set_font_strikeout()
  self.font_strikeout = true
end

----
-- Set the font_script property.
--
function Format:set_font_script(value)
  if not value then return end
  self.font_script = value
end

----
-- Set the font_outline property.
--
function Format:set_font_outline()
  self.font_outline = true
end

----
-- Set the font_shadow property.
--
function Format:set_font_shadow()
  self.font_shadow = true
end

----
-- Set the num_format property.
--
function Format:set_num_format(value)
  if not value then return end
  self.num_format = value
end

----
-- Set the locked property.
--
function Format:set_locked(value)
  self.locked = value ~= nil and value or true
end

----
-- Set the hidden property.
--
function Format:set_hidden()
  self.hidden = true
end

----
-- Set the align property.
--
function Format:set_align(value)
  if not value then return end
  self.align = value
end

----
-- Set the center_across property.
--
function Format:set_center_across()
  self.center_across = true
end

----
-- Set the text_wrap property.
--
function Format:set_text_wrap()
  self.text_wrap = true
end

----
-- Set the rotation property.
--
function Format:set_rotation(value)
  if not value then return end
  self.rotation = value
end

----
-- Set the indent property.
--
function Format:set_indent(value)
  if not value then return end
  self.indent = value
end

----
-- Set the shrink property.
--
function Format:set_shrink()
  self.shrink = true
end

----
-- Set the text_justlast property.
--
function Format:set_text_justlast()
  self.text_justlast = true
end

----
-- Set the pattern property.
--
function Format:set_pattern(value)
  if not value then return end
  self.pattern = value
end

----
-- Set the bg_color property.
--
function Format:set_bg_color(value)
  if not value then return end
  self.bg_color = value
end

----
-- Set the fg_color property.
--
function Format:set_fg_color(value)
  if not value then return end
  self.fg_color = value
end

----
-- Set the border property.
--
function Format:set_border(value)
  if not value then return end
  self.border = value
end

----
-- Set the border_color property.
--
function Format:set_border_color(value)
  if not value then return end
  self.border_color = value
end

----
-- Set the bottom property.
--
function Format:set_bottom(value)
  if not value then return end
  self.bottom = value
end

----
-- Set the bottom_color property.
--
function Format:set_bottom_color(value)
  if not value then return end
  self.bottom_color = value
end

----
-- Set the diag_type property.
--
function Format:set_diag_type(value)
  if not value then return end
  self.diag_type = value
end

----
-- Set the left property.
--
function Format:set_left(value)
  if not value then return end
  self.left = value
end

----
-- Set the left_color property.
--
function Format:set_left_color(value)
  if not value then return end
  self.left_color = value
end

----
-- Set the right property.
--
function Format:set_right(value)
  if not value then return end
  self.right = value
end

----
-- Set the right_color property.
--
function Format:set_right_color(value)
  if not value then return end
  self.right_color = value
end

----
-- Set the top property.
--
function Format:set_top(value)
  if not value then return end
  self.top = value
end

----
-- Set the top_color property.
--
function Format:set_top_color(value)
  if not value then return end
  self.top_color = value
end

----
-- Set the diag_color property.
--
function Format:set_diag_color(value)
  if not value then return end
  self.diag_color = value
end

----
-- Set the diag_border property.
--
function Format:set_diag_border(value)
  if not value then return end
  self.diag_border = value
end

-- Internal font properties. The following set_ methods are for internal
-- or backward  compatibility only and aren't exposed to the user in the
-- docs.

----
-- Set the has_font property.
--
function Format:set_has_font()
  self.has_font = true
end

----
-- Set the has_fill property.
--
function Format:set_has_fill()
  self.has_fill = true
end

----
-- Set the font_index property.
--
function Format:set_font_index(value)
  if not value then return end
  self.font_index = value
end

----
-- Set the xf_index property.
--
function Format:set_xf_index(value)
  if not value then return end
  self.xf_index = value
end

----
-- Set the dxf_index property.
--
function Format:set_dxf_index(value)
  if not value then return end
  self.dxf_index = value
end

----
-- Set the num_format_index property.
--
function Format:set_num_format_index(value)
  if not value then return end
  self.num_format_index = value
end

----
-- Set the text_h_align property.
--
function Format:set_text_h_align(value)
  if not value then return end
  self.text_h_align = value
end

----
-- Set the text_v_align property.
--
function Format:set_text_v_align(value)
  if not value then return end
  self.text_v_align = value
end

----
-- Set the reading_order property.
--
function Format:set_reading_order(value)
  if not value then return end
  self.reading_order = value
end

----
-- Set the valign property.
--
function Format:set_valign()
  self.valign = true
end

----
-- Set the font_family property.
--
function Format:set_font_family(value)
  if not value then return end
  self.font_family = value
end

----
-- Set the font_charset property.
--
function Format:set_font_charset(value)
  if not value then return end
  self.font_charset = value
end

----
-- Set the font_scheme property.
--
function Format:set_font_scheme(value)
  if not value then return end
  self.font_scheme = value
end

----
-- Set the font_condense property.
--
function Format:set_font_condense()
  self.font_condense = true
end

----
-- Set the font_extend property.
--
function Format:set_font_extend()
  self.font_extend = true
end

----
-- Set the theme property.
--
function Format:set_theme(value)
  if not value then return end
  self.theme = value
end

----
-- Set the hyperlink property.
--
function Format:set_hyperlink()
  self.hyperlink = true
end

----
-- Set the color_indexed property.
--
function Format:set_color_indexed(value)
  if not value then return end
  self.color_indexed = value
end

----
-- Set the font_only property.
--
function Format:set_font_only()
  self.font_only = true
end

------------------------------------------------------------------------------
--
-- Internal methods.
--
------------------------------------------------------------------------------

----
-- Funtion to call the appropriate method for a constructor format parameter.
--
function Format:_set_property(property)

  local setter = self["set_" .. property]

  if setter and type(setter) == "function" then
    setter(self)
  else
    Utility.warn("Unknown property: %s\n", property)
  end
end

----
-- Return properties for an Style xf <alignment> sub-element.
--
function Format:_get_align_properties()
  local align   = {}
  local changed = false

  -- Check if any alignment options in the format have been changed.
  if self.text_h_align or self.text_v_align or self.indent or self.rotation
  or self.text_wrap or self.shrink or self.reading_order then
    change = true
  else
    return changed, align
  end

  -- Indent is only allowed for horizontal left, right and distributed.
  -- If it is defined for any other alignment or no alignment has been
  -- set, then default to left alignment.
  if self.indent and self.text_h_align ~= 1 and self.text_h_align ~= 3
  and self.text_h_align ~= 7 then
    self.text_h_align = 1
  end

  -- Check for properties that are mutually exclusive.
  if self.text_wrap         then self.shrink       = false end
  if self.text_h_align == 4 then self.shrink       = false end
  if self.text_h_align == 5 then self.shrink       = false end
  if self.text_h_align == 7 then self.shrink       = false end
  if self.text_h_align ~= 7 then self.just_distrib = false end
  if self.indent            then self.just_distrib = false end

  local continuous = "centerContinuous"

  if self.text_h_align == 1 then
    table.insert(align, {["horizontal"] = "left"})
  end

  if self.text_h_align == 2 then
    table.insert(align, {["horizontal"] = "center"})
  end

  if self.text_h_align == 3 then
    table.insert(align, {["horizontal"] = "right"})
  end

  if self.text_h_align == 4 then
    table.insert(align, {["horizontal"] = "fill"})
  end

  if self.text_h_align == 5 then
    table.insert(align, {["horizontal"] = "justify"})
  end

  if self.text_h_align == 6 then
    table.insert(align, {["horizontal"] = "continuous"})
  end

  if self.text_h_align == 7 then
    table.insert(align, {["horizontal"] = "distributed"})
  end

  if self.just_distrib then
    table.insert(align, {["justifyLastLine"] = "1"})
  end

  -- Property ["vertical"] = "bottom" is a default. It sets applyAlignment
  -- without an alignment sub-element.
  if self.text_v_align == 1 then
    table.insert(align, {["vertical"] = "top"})
  end

  if self.text_v_align == 2 then
    table.insert(align, {["vertical"] = "center"})
  end

  if self.text_v_align == 4 then
    table.insert(align, {["vertical"] = "justify"})
  end

  if self.text_v_align == 5 then
    table.insert(align, {["vertical"] = "distributed"})
  end

  if self.indent then
    table.insert(align, {["indent"] = self.indent})
  end

  if self.rotation then
    table.insert(align, {["textRotation"] = self.rotation})
  end

  if self.text_wrap then
    table.insert(align, {["wrapText"] = "1"})
  end

  if self.shrink then
    table.insert(align, {["shrinkToFit"] = "1"})
  end

  if self.reading_order == 1 then
    table.insert(align, {["readingOrder"] = "1"})
  end

  if self.reading_order == 2 then
    table.insert(align, {["readingOrder"] = "2"})
  end

  return changed, align
end

----
-- Return properties for an Excel XML <Protection> element.
--
function Format:_get_protection_properties()
  local attribs = {}

  if not self.locked then
    table.insert(attribs, {["locked"] = "0"})
  end

  if self.hidden then
    table.insert(attribs, {["hidden"] = "1"})
  end

  return attribs
end

----
-- Returns a unique hash key for the parts of the Format object.
--
function Format._get_key(memebers)
  local str = ""

  for k, v in ipairs(members) do
    str = str .. tostring(v) .. ":"
  end

  return str
end

----
-- Returns a unique hash key for the Format object.
--
function Format:_get_format_key()

  return Format._get_key(
    self:_get_font_key(),
    self:_get_border_key(),
    self:_get_fill_key(),
    self:_get_alignment_key(),
    self.num_format,
    self.locked,
    self.hidden)
end

----
-- Returns a unique hash key for a font. Used by Workbook.
--
function Format:_get_font_key()

  return Format._get_key(
    self.bold,
    self.color,
    self.font_charset,
    self.font_family,
    self.font_outline,
    self.font_script,
    self.font_shadow,
    self.font_strikeout,
    self.font,
    self.italic,
    self.size,
    self.underline)
end

----
-- Returns a unique hash key for a border style. Used by Workbook.
--
function Format:_get_border_key()

  return Format._get_key(
    self.bottom,
    self.bottom_color,
    self.diag_border,
    self.diag_color,
    self.diag_type,
    self.left,
    self.left_color,
    self.right,
    self.right_color,
    self.top,
    self.top_color)
end

----
-- Returns a unique hash key for a fill style. Used by Workbook.
--
function Format:_get_fill_key()

  return Format._get_key(
    self.pattern,
    self.bg_color,
    self.fg_color)
end

----
-- Returns a unique hash key for alignment formats.
--
function Format:_get_alignment_key()

  return Format._get_key(
    self.text_h_align,
    self.text_v_align,
    self.indent,
    self.rotation,
    self.text_wrap,
    self.shrink,
    self.reading_order)
end

----
-- Returns the XF index number used by Excel to identify a format.
--
function Format:_get_xf_index()

  if self.xf_index then
    -- Format already has an index number so return it.
    return self.xf_index
  else
    -- Format doesn't have an index number so assign one.
    local key = self._get_format_key()

    if self.xf_format_indices[key] then
      -- Format matches existing format with an index.
      return self.xf_format_indices[key]
    else
      -- New format requiring an index.
      local index = self.xf_format_count
      self.xf_format_indices[key] = index
      self.xf_index               = index
      self.xf_formats_count       = index + 1
      return index
    end
  end
end

----
-- Returns the DXF index number used by Excel to identify a format.
--
function Format:_get_dxf_index()

  if self.dxf_index then
    -- Format already has an index number so return it.
    return self.dxf_index
  else
    -- Format doesn't have an index number so assign one.
    local key = self._get_format_key()

    if self.dxf_format_indices[key] then
      -- Format matches existing format with an index.
      return self.dxf_format_indices[key]
    else
      -- New format requiring an index.
      local index = self.dxf_format_count
      self.dxf_format_indices[key] = index
      self.dxf_index               = index
      self.dxf_formats_count       = index + 1
      return index
    end
  end
end

------------------------------------------------------------------------------
--
-- XML writing methods.
--
------------------------------------------------------------------------------

return Format
