require 'rbconfig'
module GL
  extend FFI::Library
  case RbConfig::CONFIG['target_os']
  when /linux/
    ffi_lib 'libGL.so.1'
  when /darwin/
    ffi_lib '/System/Library/Frameworks/OpenGL.framework/Libraries/libGL.dylib'
  when /mingw32/, /cygwin/
    ffi_lib 'opengl32.dll'
  end
end
module GLU
  extend FFI::Library
  case RbConfig::CONFIG['target_os']
  when /linux/
    ffi_lib 'libGLU.so.1'
  when /darwin/
    ffi_lib '/System/Library/Frameworks/OpenGL.framework/Libraries/libGLU.dylib'
  when /mingw32/, /cgwin/
    ffi_lib 'glu32.dll'
  end
end
module GLUT
  extend FFI::Library
  case RbConfig::CONFIG['target_os']
  when /linux/
    ffi_lib 'libglut.so.3'
  when /darwin/
    ffi_lib '/System/Library/Frameworks/GLUT.framework/GLUT'
  when /mingw32/, /cygwin/
    ffi_lib 'freeglut.dll'
  end
end
