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
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr",hFile,"ptr",pguidVendor,"uint",metadataOptions,"ptr*",ppIDecoder),"CreateDecoderFromFileHandle")
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
  GetSize(){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"uint*",puiWidth,"uint*",puiHeight),"GetSize")
	return [puiWidth,puiHeight]
  }

  GetPixelFormat(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",pPixelFormat),"GetPixelFormat")
	return pPixelFormat
  }

  GetResolution(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"double*",pDpiX,"double*",pDpiY),"GetResolution")
	return [pDpiX,pDpiY]
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
	__new(){
		this._p:=0
		this._i:={3:"GetSize",4:"GetPixelFormat",5:"GetResolution",6:"CopyPalette",7:"CopyPixels",8:"Lock",9:"SetPalette",10:"SetResolution"}
	}
  Lock(prcLock,flags){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",prcLock,"uint",flags,"ptr*",ppILock),"Lock")
	return ppILock
  }

  SetPalette(pIPalette){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",pIPalette),"SetPalette")
  }

  SetResolution(dpiX,dpiY){
	return _Error(DllCall(vt(this._p,10),"ptr",this._p,"double",dpiX,"double",dpiY),"SetResolution")
  }
  
}

;;;;;;;;;;;
;;Decoder;;Used to decode image data from a stream into a format that is useful for image processing.
;;;;;;;;;;;
class IWICBitmapDecoder
{
	
  QueryCapability(pIStream){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr",pIStream,"uint*",pdwCapability),"QueryCapability")
	return pdwCapability
  }

  Initialize(pIStream,cacheOptions){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr",pIStream,"uint",cacheOptions),"Initialize")
  }

  GetContainerFormat(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr*",pguidContainerFormat),"GetContainerFormat")
	return pguidContainerFormat
  }

  GetDecoderInfo(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr*",ppIDecoderInfo),"GetDecoderInfo")
	return ppIDecoderInfo
  }

  CopyPalette(pIPalette){
	return _Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr",pIPalette),"CopyPalette")
  }

  GetMetadataQueryReader(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr*",ppIMetadataQueryReader),"GetMetadataQueryReader")
	return ppIMetadataQueryReader
  }

  GetPreview(){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr*",ppIBitmapSource),"GetPreview")
	return ppIBitmapSource
  }

  GetColorContexts(cCount,ppIColorContexts){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"uint",cCount,"ptr",ppIColorContexts,"uint*",pcActualCount),"GetColorContexts")
	return pcActualCount
  }

  GetThumbnail(){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"ptr*",ppIThumbnail),"GetThumbnail")
	return ppIThumbnail
  }

  GetFrameCount(){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"uint*",pCount),"GetFrameCount")
	return pCount
  }

  GetFrame(index){
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"uint",index,"ptr*",ppIBitmapFrame),"GetFrame")
	return ppIBitmapFrame
  }
	
}

;;;;;;;;;;;
;;Encoder;;Writes image data to a stream.
;;;;;;;;;;;
class IWICBitmapEncoder
{
	
  Initialize(pIStream,cacheOption){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr",pIStream,"uint",cacheOption),"Initialize")
  }

  GetContainerFormat(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",pguidContainerFormat),"GetContainerFormat")
	return pguidContainerFormat
  }

  GetEncoderInfo(){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr*",ppIEncoderInfo),"GetEncoderInfo")
	return ppIEncoderInfo
  }

  SetColorContexts(cCount,ppIColorContext){
	return _Error(DllCall(vt(this._p,6),"ptr",this._p,"uint",cCount,"ptr",ppIColorContext),"SetColorContexts")
  }

  SetPalette(pIPalette){
	return _Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr",pIPalette),"SetPalette")
  }

  SetThumbnail(pIThumbnail){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",pIThumbnail),"SetThumbnail")
  }

  SetPreview(pIPreview){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",pIPreview),"SetPreview")
  }

  CreateNewFrame(){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"ptr*",ppIFrameEncode,"ptr*",ppIEncoderOptions:=0),"CreateNewFrame")
	return ppIFrameEncode
  }

  Commit(){
	return _Error(DllCall(vt(this._p,11),"ptr",this._p),"Commit")
  }

  GetMetadataQueryWriter(){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"ptr*",ppIMetadataQueryWriter),"GetMetadataQueryWriter")
	return ppIMetadataQueryWriter
  }

}


;;;;;;;;;;
;;Stream;;Used to read and write data from a file, network resource, a block of memory, and so on.
;;;;;;;;;;
class IWICStream extends IStream
{
	
  InitializeFromIStream(pIStream){
	return _Error(DllCall(vt(this._p,14),"ptr",this._p,"ptr",pIStream),"InitializeFromIStream")
  }

  InitializeFromFilename(wzFileName,dwDesiredAccess){
	return _Error(DllCall(vt(this._p,15),"ptr",this._p,"str",wzFileName,"uint",dwDesiredAccess),"InitializeFromFilename")
  }

  InitializeFromMemory(pbBuffer,cbBufferSize){
	return _Error(DllCall(vt(this._p,16),"ptr",this._p,"ptr",pbBuffer,"uint",cbBufferSize),"InitializeFromMemory")
  }

  InitializeFromIStreamRegion(pIStream,ulOffset,ulMaxSize){
	return _Error(DllCall(vt(this._p,17),"ptr",this._p,"ptr",pIStream,"uint64",ulOffset,"uint64",ulMaxSize),"InitializeFromIStreamRegion")
  }

}


;;;;;;;;;;;;;;;;;;;;
;;Format Converter;;Used to convert from one pixel format to another.
;;;;;;;;;;;;;;;;;;;;
class IWICFormatConverter extends IWICBitmapSource
{
	
  Initialize(pISource,dstFormat,dither,pIPalette,alphaThresholdPercent,paletteTranslate){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",pISource,"ptr",dstFormat,"uint",dither,"ptr",pIPalette,"double",alphaThresholdPercent,"uint",paletteTranslate),"Initialize")
  }

  CanConvert(srcPixelFormat,dstPixelFormat){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",srcPixelFormat,"ptr",dstPixelFormat,"int*",pfCanConvert),"CanConvert")
	return pfCanConvert
  }

}


;;;;;;;;;;;;;;;;;;;;;;;;;
;;Metadata Query Reader;;Used to read metadata of an image or image frame.
;;Metadata Query Writer;;Used to write metadata to an image or image frame.
;;;;;;;;;;;;;;;;;;;;;;;;;
class IWICMetadataQuery
{

; IWICMetadataQueryReader
  GetContainerFormat(){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr*",pguidContainerFormat),"GetContainerFormat")
	return pguidContainerFormat
  }

  GetLocation(cchMaxLength,wzNamespace){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"uint",cchMaxLength,"str",wzNamespace,"uint*",pcchActualLength),"GetLocation")
	return pcchActualLength
  }

  GetMetadataByName(wzName){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"str",wzName,"ptr*",pvarValue),"GetMetadataByName")
	return pvarValue
  }

  GetEnumerator(){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr*",ppIEnumString),"GetEnumerator")
	return ppIEnumString
  }
; IWICMetadataQueryWriter
  SetMetadataByName(wzName,pvarValue){
	return _Error(DllCall(vt(this._p,7),"ptr",this._p,"str",wzName,"ptr",pvarValue),"SetMetadataByName")
  }

  RemoveMetadataByName(wzName){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"str",wzName),"RemoveMetadataByName")
  }

}
