;;;;;;;;;;;;;;;;;;;;;;
;;IWICImagingFactory;;
;;;;;;;;;;;;;;;;;;;;;;
class IWICImagingFactory
{
  __new(){
		this._p:=ComObjCreate("{cacaf262-9370-4615-a13b-9f5539da4c0a}","{ec5ec8a9-c395-4314-9c77-54d7a935ff70}")
		this._i:={3:"CreateDecoderFromFilename",4:"CreateDecoderFromStream",5:"CreateDecoderFromFileHandle",6:"CreateComponentInfo",7:"CreateDecoder",8:"CreateEncoder",9:"CreatePalette",10:"CreateFormatConverter",11:"CreateBitmapScaler",12:"CreateBitmapClipper",13:"CreateBitmapFlipRotator",14:"CreateStream",15:"CreateColorContext",16:"CreateColorTransformer",17:"CreateBitmap",18:"CreateBitmapFromSource",19:"CreateBitmapFromSourceRect",20:"CreateBitmapFromMemory",21:"CreateBitmapFromHBITMAP",22:"CreateBitmapFromHICON",23:"CreateComponentEnumerator",24:"CreateFastMetadataEncoderFromDecoder",25:"CreateFastMetadataEncoderFromFrameDecode",26:"CreateQueryWriter",27:"CreateQueryWriterFromReader"}
	}
	__call(aName,aParam*){
		if aName is Integer
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
	}
	__delete(){
		ObjRelease(this._p)
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
	CreateDecoderFromFilename(wzFilename,pguidVendor,dwDesiredAccess,metadataOptions){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"str",wzFilename,"ptr",pguidVendor,"uint",dwDesiredAccess,"uint",metadataOptions,"ptr*",ppIDecoder),"CreateDecoderFromFilename")
	return ppIDecoder
	}

	CreateDecoderFromStream(pIStream,pguidVendor,metadataOptions){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr",pIStream,"ptr",pguidVendor,"uint",metadataOptions,"ptr*",ppIDecoder),"CreateDecoderFromStream")
	return ppIDecoder
	}

	CreateDecoderFromFileHandle(hFile,pguidVendor,metadataOptions){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"handle",hFile,"ptr",pguidVendor,"uint",metadataOptions,"ptr*",ppIDecoder),"CreateDecoderFromFileHandle")
	return ppIDecoder
	}

	CreateComponentInfo(clsidComponent){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr",clsidComponent,"ptr*",ppIInfo),"CreateComponentInfo")
	return ppIInfo
	}

	CreateDecoder(guidContainerFormat,pguidVendor){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr",guidContainerFormat,"ptr",pguidVendor,"ptr*",ppIDecoder),"CreateDecoder")
	return ppIDecoder
	}

	CreateEncoder(guidContainerFormat,pguidVendor){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",guidContainerFormat,"ptr",pguidVendor,"ptr*",ppIEncoder),"CreateEncoder")
	return ppIEncoder
	}

	CreatePalette(){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr*",ppIPalette),"CreatePalette")
	return ppIPalette
	}

	CreateFormatConverter(){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"ptr*",ppIFormatConverter),"CreateFormatConverter")
	return ppIFormatConverter
	}

	CreateBitmapScaler(){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"ptr*",ppIBitmapScaler),"CreateBitmapScaler")
	return ppIBitmapScaler
	}

	CreateBitmapClipper(){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"ptr*",ppIBitmapClipper),"CreateBitmapClipper")
	return ppIBitmapClipper
	}

	CreateBitmapFlipRotator(){
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"ptr*",ppIBitmapFlipRotator),"CreateBitmapFlipRotator")
	return ppIBitmapFlipRotator
	}

	CreateStream(){
	_Error(DllCall(vt(this._p,14),"ptr",this._p,"ptr*",ppIWICStream),"CreateStream")
	return ppIWICStream
	}

	CreateColorContext(){
	_Error(DllCall(vt(this._p,15),"ptr",this._p,"ptr*",ppIWICColorContext),"CreateColorContext")
	return ppIWICColorContext
	}

	CreateColorTransformer(){
	_Error(DllCall(vt(this._p,16),"ptr",this._p,"ptr*",ppIWICColorTransform),"CreateColorTransformer")
	return ppIWICColorTransform
	}

	CreateBitmap(uiWidth,uiHeight,pixelFormat,option){
	_Error(DllCall(vt(this._p,17),"ptr",this._p,"uint",uiWidth,"uint",uiHeight,"ptr",pixelFormat,"uint",option,"ptr*",ppIBitmap),"CreateBitmap")
	return ppIBitmap
	}

	CreateBitmapFromSource(pIBitmapSource,option){
	_Error(DllCall(vt(this._p,18),"ptr",this._p,"ptr",pIBitmapSource,"uint",option,"ptr*",ppIBitmap),"CreateBitmapFromSource")
	return ppIBitmap
	}

	CreateBitmapFromSourceRect(pIBitmapSource,x,y,width,height){
	_Error(DllCall(vt(this._p,19),"ptr",this._p,"ptr",pIBitmapSource,"uint",x,"uint",y,"uint",width,"uint",height,"ptr*",ppIBitmap),"CreateBitmapFromSourceRect")
	return ppIBitmap
	}

	CreateBitmapFromMemory(uiWidth,uiHeight,pixelFormat,cbStride,cbBufferSize,pbBuffer,Byref ppIBitmap){
	return _Error(DllCall(vt(this._p,20),"ptr",this._p,"uint",uiWidth,"uint",uiHeight,"ptr",pixelFormat,"uint",cbStride,"uint",cbBufferSize,"ptr",pbBuffer,"ptr*",ppIBitmap),"CreateBitmapFromMemory")
	
	}

	CreateBitmapFromHBITMAP(hBitmap,hPalette,options,Byref ppIBitmap){
	return _Error(DllCall(vt(this._p,21),"ptr",this._p,"uint",hBitmap,"uint",hPalette,"uint",options,"ptr*",ppIBitmap),"CreateBitmapFromHBITMAP")
	
	}

	CreateBitmapFromHICON(hIcon){
	_Error(DllCall(vt(this._p,22),"ptr",this._p,"uint",hIcon,"ptr*",ppIBitmap),"CreateBitmapFromHICON")
	return ppIBitmap
	}

	CreateComponentEnumerator(componentTypes,options){
	_Error(DllCall(vt(this._p,23),"ptr",this._p,"uint",componentTypes,"uint",options,"ptr*",ppIEnumUnknown),"CreateComponentEnumerator")
	return ppIEnumUnknown
	}

	CreateFastMetadataEncoderFromDecoder(pIDecoder){
	_Error(DllCall(vt(this._p,24),"ptr",this._p,"ptr",pIDecoder,"ptr*",ppIFastEncoder),"CreateFastMetadataEncoderFromDecoder")
	return ppIFastEncoder
	}

	CreateFastMetadataEncoderFromFrameDecode(pIFrameDecoder){
	_Error(DllCall(vt(this._p,25),"ptr",this._p,"ptr",pIFrameDecoder,"ptr*",ppIFastEncoder),"CreateFastMetadataEncoderFromFrameDecode")
	return ppIFastEncoder
	}

	CreateQueryWriter(guidMetadataFormat,pguidVendor){
	_Error(DllCall(vt(this._p,26),"ptr",this._p,"ptr",guidMetadataFormat,"ptr",pguidVendor,"ptr*",ppIQueryWriter),"CreateQueryWriter")
	return ppIQueryWriter
	}

	CreateQueryWriterFromReader(pIQueryReader,pguidVendor){
	_Error(DllCall(vt(this._p,27),"ptr",this._p,"ptr",pIQueryReader,"ptr",pguidVendor,"ptr*",ppIQueryWriter),"CreateQueryWriterFromReader")
	return ppIQueryWriter
	}
}
;;;;;;;;;;;;;;;;;;;;;;;;
;;IWICComponentFactory;;
;;;;;;;;;;;;;;;;;;;;;;;;
class IWICComponentFactory extends IWICImagingFactory
{
	
}

;;;;;;;;;;
;;Bitmap;;Represents a writable in-memory representation of an IWICBitmapSource.
;;;;;;;;;;

class IWICBitmapSource
{
	
  GetSize(Byref puiWidth,Byref puiHeight){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"uint*",puiWidth,"uint*",puiHeight),"GetSize")
  }

  GetPixelFormat(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",pPixelFormat),"GetPixelFormat")
	return pPixelFormat
  }

  GetResolution(Byref pDpiX,Byref pDpiY){
	return _Error(DllCall(vt(this._p,5),"ptr",this._p,"double*",pDpiX,"double*",pDpiY),"GetResolution")
  }

  CopyPalette(pIPalette){
	return _Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr",pIPalette),"CopyPalette")
  }

  CopyPixels(prc,cbStride,cbBufferSize){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr",prc,"uint",cbStride,"uint",cbBufferSize,"ptr*",pbBuffer),"CopyPixels")
	return pbBuffer
  }	
}

class IWICBitmap extends IWICBitmapSource
{
	
}

class extends IWICBitmapSource
{
	
}

class extends IWICBitmapSource
{
	
}
;;;;;;;;;;;
;;Decoder;;Used to decode image data from a stream into a format that is useful for image processing.
;;;;;;;;;;;
class IWICBitmapDecoder
{
	
}

;;;;;;;;;;;
;;Encoder;;Writes image data to a stream.
;;;;;;;;;;;
class IWICBitmapEncoder
{
	
}


;;;;;;;;;;
;;Stream;;Used to read and write data from a file, network resource, a block of memory, and so on.
;;;;;;;;;;
class IWICStream
{
	
}


;;;;;;;;;;;;;;;;;;;;
;;Format Converter;;Used to convert from one pixel format to another.
;;;;;;;;;;;;;;;;;;;;
class IWICFormatConverter
{
	
}


;;;;;;;;;;;;;;;;;;;;;;;;;
;;Metadata Query Reader;;Used to read metadata of an image or image frame.
;;;;;;;;;;;;;;;;;;;;;;;;;
class IWICMetadataQueryReader
{
	
}

;;;;;;;;;;;;;;;;;;;;;;;;;
;;Metadata Query Writer;;Used to write metadata to an image or image frame.
;;;;;;;;;;;;;;;;;;;;;;;;;
class IWICMetadataQueryWriter
{
	
}


