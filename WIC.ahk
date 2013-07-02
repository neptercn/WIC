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

;;;;;;;;;;;;;;;;;;;
;;Bitmap Resource;;IWICBitmapSource.
;;;;;;;;;;;;;;;;;;;

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
		this._i:={Bitmap:{3:"GetSize",4:"GetPixelFormat",5:"GetResolution",6:"CopyPalette",7:"CopyPixels",8:"Lock",9:"SetPalette",10:"SetResolution"}}
	}
	__get(aName){
		
	}
	__call(aName,aParam*){
		
	}
  Bitmap_Lock(prcLock,flags){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",prcLock,"uint",flags,"ptr*",ppILock),"Lock")
	return ppILock
  }

  Bitmap_SetPalette(pIPalette){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",pIPalette),"SetPalette")
  }

  Bitmap_SetResolution(dpiX,dpiY){
	return _Error(DllCall(vt(this._p,10),"ptr",this._p,"double",dpiX,"double",dpiY),"SetResolution")
  }
; IWICBitmapScaler
  Scaler_Initialize(pISource,uiWidth,uiHeight,mode){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",pISource,"uint",uiWidth,"uint",uiHeight,"uint",mode),"Initialize")
  }
; IWICBitmapClipper
  Clipper_Initialize(pISource,prc){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",pISource,"ptr",prc),"Initialize")
  }
; IWICBitmapFlipRotator
  FlipRotator_Initialize(pISource,options){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",pISource,"uint",options),"Initialize")
  }
; IWICColorTransform
  ColorTransform_Initialize(pIBitmapSource,pIContextSource,pIContextDest,pixelFmtDest){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",pIBitmapSource,"ptr",pIContextSource,"ptr",pIContextDest,"ptr",pixelFmtDest),"Initialize")
  } 
  
}

class IWICBitmapFrameDecode extends IWICBitmapSource
{

  GetMetadataQueryReader(){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr*",ppIMetadataQueryReader),"GetMetadataQueryReader")
	return ppIMetadataQueryReader
  }

  GetColorContexts(cCount,ppIColorContexts,pcActualCount){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p,"uint",cCount,"ptr",ppIColorContexts,"uint",pcActualCount),"GetColorContexts")
  }

  GetThumbnail(){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"ptr*",ppIThumbnail),"GetThumbnail")
	return ppIThumbnail
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

/*
DEFINE_GUID(CLSID_WICImagingFactory, 0xcacaf262, 0x9370, 0x4615, 0xa1, 0x3b, 0x9f, 0x55, 0x39, 0xda, 0x4c, 0xa);
DEFINE_GUID(GUID_VendorMicrosoft, 0xf0e749ca, 0xedef, 0x4589, 0xa7, 0x3a, 0xee, 0xe, 0x62, 0x6a, 0x2a, 0x2b);
DEFINE_GUID(GUID_VendorMicrosoftBuiltIn, 0x257a30fd, 0x6b6, 0x462b, 0xae, 0xa4, 0x63, 0xf7, 0xb, 0x86, 0xe5, 0x33);
DEFINE_GUID(CLSID_WICBmpDecoder,  0x6b462062, 0x7cbf, 0x400d, 0x9f, 0xdb, 0x81, 0x3d, 0xd1, 0x0f, 0x27, 0x78);
DEFINE_GUID(CLSID_WICPngDecoder,  0x389ea17b, 0x5078, 0x4cde, 0xb6, 0xef, 0x25, 0xc1, 0x51, 0x75, 0xc7, 0x51);
DEFINE_GUID(CLSID_WICIcoDecoder,  0xc61bfcdf, 0x2e0f, 0x4aad, 0xa8, 0xd7, 0xe0, 0x6b, 0xaf, 0xeb, 0xcd, 0xfe);
DEFINE_GUID(CLSID_WICJpegDecoder, 0x9456a480, 0xe88b, 0x43ea, 0x9e, 0x73, 0x0b, 0x2d, 0x9b, 0x71, 0xb1, 0xca);
DEFINE_GUID(CLSID_WICGifDecoder,  0x381dda3c, 0x9ce9, 0x4834, 0xa2, 0x3e, 0x1f, 0x98, 0xf8, 0xfc, 0x52, 0xbe);
DEFINE_GUID(CLSID_WICTiffDecoder, 0xb54e85d9, 0xfe23, 0x499f, 0x8b, 0x88, 0x6a, 0xce, 0xa7, 0x13, 0x75, 0x2b);
DEFINE_GUID(CLSID_WICWmpDecoder,  0xa26cec36, 0x234c, 0x4950, 0xae, 0x16, 0xe3, 0x4a, 0xac, 0xe7, 0x1d, 0x0d);
DEFINE_GUID(CLSID_WICBmpEncoder,  0x69be8bb4, 0xd66d, 0x47c8, 0x86, 0x5a, 0xed, 0x15, 0x89, 0x43, 0x37, 0x82);
DEFINE_GUID(CLSID_WICPngEncoder,  0x27949969, 0x876a, 0x41d7, 0x94, 0x47, 0x56, 0x8f, 0x6a, 0x35, 0xa4, 0xdc);
DEFINE_GUID(CLSID_WICJpegEncoder, 0x1a34f5c1, 0x4a5a, 0x46dc, 0xb6, 0x44, 0x1f, 0x45, 0x67, 0xe7, 0xa6, 0x76);
DEFINE_GUID(CLSID_WICGifEncoder,  0x114f5598, 0x0b22, 0x40a0, 0x86, 0xa1, 0xc8, 0x3e, 0xa4, 0x95, 0xad, 0xbd);
DEFINE_GUID(CLSID_WICTiffEncoder, 0x0131be10, 0x2001, 0x4c5f, 0xa9, 0xb0, 0xcc, 0x88, 0xfa, 0xb6, 0x4c, 0xe8);
DEFINE_GUID(CLSID_WICWmpEncoder,  0xac4ce3cb, 0xe1c1, 0x44cd, 0x82, 0x15, 0x5a, 0x16, 0x65, 0x50, 0x9e, 0xc2);
DEFINE_GUID(GUID_ContainerFormatBmp,  0x0af1d87e, 0xfcfe, 0x4188, 0xbd, 0xeb, 0xa7, 0x90, 0x64, 0x71, 0xcb, 0xe3);
DEFINE_GUID(GUID_ContainerFormatPng,  0x1b7cfaf4, 0x713f, 0x473c, 0xbb, 0xcd, 0x61, 0x37, 0x42, 0x5f, 0xae, 0xaf);
DEFINE_GUID(GUID_ContainerFormatIco,  0xa3a860c4, 0x338f, 0x4c17, 0x91, 0x9a, 0xfb, 0xa4, 0xb5, 0x62, 0x8f, 0x21);
DEFINE_GUID(GUID_ContainerFormatJpeg, 0x19e4a5aa, 0x5662, 0x4fc5, 0xa0, 0xc0, 0x17, 0x58, 0x02, 0x8e, 0x10, 0x57);
DEFINE_GUID(GUID_ContainerFormatTiff, 0x163bcc30, 0xe2e9, 0x4f0b, 0x96, 0x1d, 0xa3, 0xe9, 0xfd, 0xb7, 0x88, 0xa3);
DEFINE_GUID(GUID_ContainerFormatGif,  0x1f8a5601, 0x7d4d, 0x4cbd, 0x9c, 0x82, 0x1b, 0xc8, 0xd4, 0xee, 0xb9, 0xa5);
DEFINE_GUID(GUID_ContainerFormatWmp,  0x57a37caa, 0x367a, 0x4540, 0x91, 0x6b, 0xf1, 0x83, 0xc5, 0x09, 0x3a, 0x4b);
DEFINE_GUID(CLSID_WICImagingCategories, 0xfae3d380, 0xfea4, 0x4623, 0x8c, 0x75, 0xc6, 0xb6, 0x11, 0x10, 0xb6, 0x81);
DEFINE_GUID(CATID_WICBitmapDecoders,    0x7ed96837, 0x96f0, 0x4812, 0xb2, 0x11, 0xf1, 0x3c, 0x24, 0x11, 0x7e, 0xd3);
DEFINE_GUID(CATID_WICBitmapEncoders,    0xac757296, 0x3522, 0x4e11, 0x98, 0x62, 0xc1, 0x7b, 0xe5, 0xa1, 0x76, 0x7e);
DEFINE_GUID(CATID_WICPixelFormats,      0x2b46e70f, 0xcda7, 0x473e, 0x89, 0xf6, 0xdc, 0x96, 0x30, 0xa2, 0x39, 0x0b);
DEFINE_GUID(CATID_WICFormatConverters,  0x7835eae8, 0xbf14, 0x49d1, 0x93, 0xce, 0x53, 0x3a, 0x40, 0x7b, 0x22, 0x48);
DEFINE_GUID(CATID_WICMetadataReader,    0x05af94d8, 0x7174, 0x4cd2, 0xbe, 0x4a, 0x41, 0x24, 0xb8, 0x0e, 0xe4, 0xb8);
DEFINE_GUID(CATID_WICMetadataWriter,    0xabe3b9a4, 0x257d, 0x4b97, 0xbd, 0x1a, 0x29, 0x4a, 0xf4, 0x96, 0x22, 0x2e);
DEFINE_GUID(CLSID_WICDefaultFormatConverter, 0x1a3f11dc, 0xb514, 0x4b17, 0x8c, 0x5f, 0x21, 0x54, 0x51, 0x38, 0x52, 0xf1);
DEFINE_GUID(CLSID_WICFormatConverterHighColor, 0xac75d454, 0x9f37, 0x48f8, 0xb9, 0x72, 0x4e, 0x19, 0xbc, 0x85, 0x60, 0x11);
DEFINE_GUID(CLSID_WICFormatConverterNChannel, 0xc17cabb2, 0xd4a3, 0x47d7, 0xa5, 0x57, 0x33, 0x9b, 0x2e, 0xfb, 0xd4, 0xf1);
DEFINE_GUID(CLSID_WICFormatConverterWMPhoto, 0x9cb5172b, 0xd600, 0x46ba, 0xab, 0x77, 0x77, 0xbb, 0x7e, 0x3a, 0x00, 0xd9);
*/
;;;;;;;;;;;
;;Decoder;;Used to decode image data from a stream into a format that is useful for image processing.
;;;;;;;;;;;
class IWICBitmapDecoder
{
	__new(){
		this._d:={}
	}
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
