# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robotics_report2/Blobs.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import robotics_report2.msg

class Blobs(genpy.Message):
  _md5sum = "e2836b3623ac455b4a432ee2fdf4d41d"
  _type = "robotics_report2/Blobs"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """robotics_report2/Blob_Params[] blob_list

================================================================================
MSG: robotics_report2/Blob_Params
int8 x_coord
int8 y_coord
int8 radius
"""
  __slots__ = ['blob_list']
  _slot_types = ['robotics_report2/Blob_Params[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       blob_list

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Blobs, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.blob_list is None:
        self.blob_list = []
    else:
      self.blob_list = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.blob_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.blob_list:
        _x = val1
        buff.write(_get_struct_3b().pack(_x.x_coord, _x.y_coord, _x.radius))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.blob_list is None:
        self.blob_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.blob_list = []
      for i in range(0, length):
        val1 = robotics_report2.msg.Blob_Params()
        _x = val1
        start = end
        end += 3
        (_x.x_coord, _x.y_coord, _x.radius,) = _get_struct_3b().unpack(str[start:end])
        self.blob_list.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.blob_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.blob_list:
        _x = val1
        buff.write(_get_struct_3b().pack(_x.x_coord, _x.y_coord, _x.radius))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.blob_list is None:
        self.blob_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.blob_list = []
      for i in range(0, length):
        val1 = robotics_report2.msg.Blob_Params()
        _x = val1
        start = end
        end += 3
        (_x.x_coord, _x.y_coord, _x.radius,) = _get_struct_3b().unpack(str[start:end])
        self.blob_list.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3b = None
def _get_struct_3b():
    global _struct_3b
    if _struct_3b is None:
        _struct_3b = struct.Struct("<3b")
    return _struct_3b
