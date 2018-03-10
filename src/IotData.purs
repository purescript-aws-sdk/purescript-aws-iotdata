

-- | <fullname>AWS IoT</fullname> <p>AWS IoT-Data enables secure, bi-directional communication between Internet-connected things (such as sensors, actuators, embedded devices, or smart appliances) and the AWS cloud. It implements a broker for applications and things to publish messages over HTTP (Publish) and retrieve, update, and delete thing shadows. A thing shadow is a persistent representation of your things and their state in the AWS cloud.</p>
module AWS.IotData where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "IotData" :: String


-- | <p>Deletes the thing shadow for the specified thing.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html">DeleteThingShadow</a> in the <i>AWS IoT Developer Guide</i>.</p>
deleteThingShadow :: forall eff. DeleteThingShadowRequest -> Aff (exception :: EXCEPTION | eff) DeleteThingShadowResponse
deleteThingShadow = Request.request serviceName "deleteThingShadow" 


-- | <p>Gets the thing shadow for the specified thing.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html">GetThingShadow</a> in the <i>AWS IoT Developer Guide</i>.</p>
getThingShadow :: forall eff. GetThingShadowRequest -> Aff (exception :: EXCEPTION | eff) GetThingShadowResponse
getThingShadow = Request.request serviceName "getThingShadow" 


-- | <p>Publishes state information.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/protocols.html#http">HTTP Protocol</a> in the <i>AWS IoT Developer Guide</i>.</p>
publish :: forall eff. PublishRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
publish = Request.request serviceName "publish" 


-- | <p>Updates the thing shadow for the specified thing.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html">UpdateThingShadow</a> in the <i>AWS IoT Developer Guide</i>.</p>
updateThingShadow :: forall eff. UpdateThingShadowRequest -> Aff (exception :: EXCEPTION | eff) UpdateThingShadowResponse
updateThingShadow = Request.request serviceName "updateThingShadow" 


-- | <p>The specified version does not match the version of the document.</p>
newtype ConflictException = ConflictException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeConflictException :: Newtype ConflictException _
derive instance repGenericConflictException :: Generic ConflictException _
instance showConflictException :: Show ConflictException where
  show = genericShow
instance decodeConflictException :: Decode ConflictException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConflictException :: Encode ConflictException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ConflictException from required parameters
newConflictException :: ConflictException
newConflictException  = ConflictException { "message": (NullOrUndefined Nothing) }

-- | Constructs ConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConflictException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ConflictException
newConflictException'  customize = (ConflictException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The input for the DeleteThingShadow operation.</p>
newtype DeleteThingShadowRequest = DeleteThingShadowRequest 
  { "thingName" :: (ThingName)
  }
derive instance newtypeDeleteThingShadowRequest :: Newtype DeleteThingShadowRequest _
derive instance repGenericDeleteThingShadowRequest :: Generic DeleteThingShadowRequest _
instance showDeleteThingShadowRequest :: Show DeleteThingShadowRequest where
  show = genericShow
instance decodeDeleteThingShadowRequest :: Decode DeleteThingShadowRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteThingShadowRequest :: Encode DeleteThingShadowRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteThingShadowRequest from required parameters
newDeleteThingShadowRequest :: ThingName -> DeleteThingShadowRequest
newDeleteThingShadowRequest _thingName = DeleteThingShadowRequest { "thingName": _thingName }

-- | Constructs DeleteThingShadowRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteThingShadowRequest' :: ThingName -> ( { "thingName" :: (ThingName) } -> {"thingName" :: (ThingName) } ) -> DeleteThingShadowRequest
newDeleteThingShadowRequest' _thingName customize = (DeleteThingShadowRequest <<< customize) { "thingName": _thingName }



-- | <p>The output from the DeleteThingShadow operation.</p>
newtype DeleteThingShadowResponse = DeleteThingShadowResponse 
  { "payload" :: (JsonDocument)
  }
derive instance newtypeDeleteThingShadowResponse :: Newtype DeleteThingShadowResponse _
derive instance repGenericDeleteThingShadowResponse :: Generic DeleteThingShadowResponse _
instance showDeleteThingShadowResponse :: Show DeleteThingShadowResponse where
  show = genericShow
instance decodeDeleteThingShadowResponse :: Decode DeleteThingShadowResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteThingShadowResponse :: Encode DeleteThingShadowResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteThingShadowResponse from required parameters
newDeleteThingShadowResponse :: JsonDocument -> DeleteThingShadowResponse
newDeleteThingShadowResponse _payload = DeleteThingShadowResponse { "payload": _payload }

-- | Constructs DeleteThingShadowResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteThingShadowResponse' :: JsonDocument -> ( { "payload" :: (JsonDocument) } -> {"payload" :: (JsonDocument) } ) -> DeleteThingShadowResponse
newDeleteThingShadowResponse' _payload customize = (DeleteThingShadowResponse <<< customize) { "payload": _payload }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The input for the GetThingShadow operation.</p>
newtype GetThingShadowRequest = GetThingShadowRequest 
  { "thingName" :: (ThingName)
  }
derive instance newtypeGetThingShadowRequest :: Newtype GetThingShadowRequest _
derive instance repGenericGetThingShadowRequest :: Generic GetThingShadowRequest _
instance showGetThingShadowRequest :: Show GetThingShadowRequest where
  show = genericShow
instance decodeGetThingShadowRequest :: Decode GetThingShadowRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetThingShadowRequest :: Encode GetThingShadowRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetThingShadowRequest from required parameters
newGetThingShadowRequest :: ThingName -> GetThingShadowRequest
newGetThingShadowRequest _thingName = GetThingShadowRequest { "thingName": _thingName }

-- | Constructs GetThingShadowRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetThingShadowRequest' :: ThingName -> ( { "thingName" :: (ThingName) } -> {"thingName" :: (ThingName) } ) -> GetThingShadowRequest
newGetThingShadowRequest' _thingName customize = (GetThingShadowRequest <<< customize) { "thingName": _thingName }



-- | <p>The output from the GetThingShadow operation.</p>
newtype GetThingShadowResponse = GetThingShadowResponse 
  { "payload" :: NullOrUndefined.NullOrUndefined (JsonDocument)
  }
derive instance newtypeGetThingShadowResponse :: Newtype GetThingShadowResponse _
derive instance repGenericGetThingShadowResponse :: Generic GetThingShadowResponse _
instance showGetThingShadowResponse :: Show GetThingShadowResponse where
  show = genericShow
instance decodeGetThingShadowResponse :: Decode GetThingShadowResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetThingShadowResponse :: Encode GetThingShadowResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetThingShadowResponse from required parameters
newGetThingShadowResponse :: GetThingShadowResponse
newGetThingShadowResponse  = GetThingShadowResponse { "payload": (NullOrUndefined Nothing) }

-- | Constructs GetThingShadowResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetThingShadowResponse' :: ( { "payload" :: NullOrUndefined.NullOrUndefined (JsonDocument) } -> {"payload" :: NullOrUndefined.NullOrUndefined (JsonDocument) } ) -> GetThingShadowResponse
newGetThingShadowResponse'  customize = (GetThingShadowResponse <<< customize) { "payload": (NullOrUndefined Nothing) }



-- | <p>An unexpected error has occurred.</p>
newtype InternalFailureException = InternalFailureException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeInternalFailureException :: Newtype InternalFailureException _
derive instance repGenericInternalFailureException :: Generic InternalFailureException _
instance showInternalFailureException :: Show InternalFailureException where
  show = genericShow
instance decodeInternalFailureException :: Decode InternalFailureException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalFailureException :: Encode InternalFailureException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalFailureException from required parameters
newInternalFailureException :: InternalFailureException
newInternalFailureException  = InternalFailureException { "message": (NullOrUndefined Nothing) }

-- | Constructs InternalFailureException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalFailureException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> InternalFailureException
newInternalFailureException'  customize = (InternalFailureException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request is not valid.</p>
newtype InvalidRequestException = InvalidRequestException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeInvalidRequestException :: Newtype InvalidRequestException _
derive instance repGenericInvalidRequestException :: Generic InvalidRequestException _
instance showInvalidRequestException :: Show InvalidRequestException where
  show = genericShow
instance decodeInvalidRequestException :: Decode InvalidRequestException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidRequestException :: Encode InvalidRequestException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidRequestException from required parameters
newInvalidRequestException :: InvalidRequestException
newInvalidRequestException  = InvalidRequestException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRequestException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> InvalidRequestException
newInvalidRequestException'  customize = (InvalidRequestException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype JsonDocument = JsonDocument String
derive instance newtypeJsonDocument :: Newtype JsonDocument _
derive instance repGenericJsonDocument :: Generic JsonDocument _
instance showJsonDocument :: Show JsonDocument where
  show = genericShow
instance decodeJsonDocument :: Decode JsonDocument where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJsonDocument :: Encode JsonDocument where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The specified combination of HTTP verb and URI is not supported.</p>
newtype MethodNotAllowedException = MethodNotAllowedException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeMethodNotAllowedException :: Newtype MethodNotAllowedException _
derive instance repGenericMethodNotAllowedException :: Generic MethodNotAllowedException _
instance showMethodNotAllowedException :: Show MethodNotAllowedException where
  show = genericShow
instance decodeMethodNotAllowedException :: Decode MethodNotAllowedException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMethodNotAllowedException :: Encode MethodNotAllowedException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MethodNotAllowedException from required parameters
newMethodNotAllowedException :: MethodNotAllowedException
newMethodNotAllowedException  = MethodNotAllowedException { "message": (NullOrUndefined Nothing) }

-- | Constructs MethodNotAllowedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMethodNotAllowedException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> MethodNotAllowedException
newMethodNotAllowedException'  customize = (MethodNotAllowedException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype Payload = Payload String
derive instance newtypePayload :: Newtype Payload _
derive instance repGenericPayload :: Generic Payload _
instance showPayload :: Show Payload where
  show = genericShow
instance decodePayload :: Decode Payload where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePayload :: Encode Payload where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The input for the Publish operation.</p>
newtype PublishRequest = PublishRequest 
  { "topic" :: (Topic)
  , "qos" :: NullOrUndefined.NullOrUndefined (Qos)
  , "payload" :: NullOrUndefined.NullOrUndefined (Payload)
  }
derive instance newtypePublishRequest :: Newtype PublishRequest _
derive instance repGenericPublishRequest :: Generic PublishRequest _
instance showPublishRequest :: Show PublishRequest where
  show = genericShow
instance decodePublishRequest :: Decode PublishRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePublishRequest :: Encode PublishRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PublishRequest from required parameters
newPublishRequest :: Topic -> PublishRequest
newPublishRequest _topic = PublishRequest { "topic": _topic, "payload": (NullOrUndefined Nothing), "qos": (NullOrUndefined Nothing) }

-- | Constructs PublishRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPublishRequest' :: Topic -> ( { "topic" :: (Topic) , "qos" :: NullOrUndefined.NullOrUndefined (Qos) , "payload" :: NullOrUndefined.NullOrUndefined (Payload) } -> {"topic" :: (Topic) , "qos" :: NullOrUndefined.NullOrUndefined (Qos) , "payload" :: NullOrUndefined.NullOrUndefined (Payload) } ) -> PublishRequest
newPublishRequest' _topic customize = (PublishRequest <<< customize) { "topic": _topic, "payload": (NullOrUndefined Nothing), "qos": (NullOrUndefined Nothing) }



newtype Qos = Qos Int
derive instance newtypeQos :: Newtype Qos _
derive instance repGenericQos :: Generic Qos _
instance showQos :: Show Qos where
  show = genericShow
instance decodeQos :: Decode Qos where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQos :: Encode Qos where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The payload exceeds the maximum size allowed.</p>
newtype RequestEntityTooLargeException = RequestEntityTooLargeException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeRequestEntityTooLargeException :: Newtype RequestEntityTooLargeException _
derive instance repGenericRequestEntityTooLargeException :: Generic RequestEntityTooLargeException _
instance showRequestEntityTooLargeException :: Show RequestEntityTooLargeException where
  show = genericShow
instance decodeRequestEntityTooLargeException :: Decode RequestEntityTooLargeException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRequestEntityTooLargeException :: Encode RequestEntityTooLargeException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RequestEntityTooLargeException from required parameters
newRequestEntityTooLargeException :: RequestEntityTooLargeException
newRequestEntityTooLargeException  = RequestEntityTooLargeException { "message": (NullOrUndefined Nothing) }

-- | Constructs RequestEntityTooLargeException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestEntityTooLargeException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> RequestEntityTooLargeException
newRequestEntityTooLargeException'  customize = (RequestEntityTooLargeException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The specified resource does not exist.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where
  show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The service is temporarily unavailable.</p>
newtype ServiceUnavailableException = ServiceUnavailableException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeServiceUnavailableException :: Newtype ServiceUnavailableException _
derive instance repGenericServiceUnavailableException :: Generic ServiceUnavailableException _
instance showServiceUnavailableException :: Show ServiceUnavailableException where
  show = genericShow
instance decodeServiceUnavailableException :: Decode ServiceUnavailableException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceUnavailableException :: Encode ServiceUnavailableException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceUnavailableException from required parameters
newServiceUnavailableException :: ServiceUnavailableException
newServiceUnavailableException  = ServiceUnavailableException { "message": (NullOrUndefined Nothing) }

-- | Constructs ServiceUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceUnavailableException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> ServiceUnavailableException
newServiceUnavailableException'  customize = (ServiceUnavailableException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ThingName = ThingName String
derive instance newtypeThingName :: Newtype ThingName _
derive instance repGenericThingName :: Generic ThingName _
instance showThingName :: Show ThingName where
  show = genericShow
instance decodeThingName :: Decode ThingName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeThingName :: Encode ThingName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The rate exceeds the limit.</p>
newtype ThrottlingException = ThrottlingException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeThrottlingException :: Newtype ThrottlingException _
derive instance repGenericThrottlingException :: Generic ThrottlingException _
instance showThrottlingException :: Show ThrottlingException where
  show = genericShow
instance decodeThrottlingException :: Decode ThrottlingException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeThrottlingException :: Encode ThrottlingException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ThrottlingException from required parameters
newThrottlingException :: ThrottlingException
newThrottlingException  = ThrottlingException { "message": (NullOrUndefined Nothing) }

-- | Constructs ThrottlingException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThrottlingException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> ThrottlingException
newThrottlingException'  customize = (ThrottlingException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype Topic = Topic String
derive instance newtypeTopic :: Newtype Topic _
derive instance repGenericTopic :: Generic Topic _
instance showTopic :: Show Topic where
  show = genericShow
instance decodeTopic :: Decode Topic where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTopic :: Encode Topic where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>You are not authorized to perform this operation.</p>
newtype UnauthorizedException = UnauthorizedException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeUnauthorizedException :: Newtype UnauthorizedException _
derive instance repGenericUnauthorizedException :: Generic UnauthorizedException _
instance showUnauthorizedException :: Show UnauthorizedException where
  show = genericShow
instance decodeUnauthorizedException :: Decode UnauthorizedException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnauthorizedException :: Encode UnauthorizedException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnauthorizedException from required parameters
newUnauthorizedException :: UnauthorizedException
newUnauthorizedException  = UnauthorizedException { "message": (NullOrUndefined Nothing) }

-- | Constructs UnauthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnauthorizedException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> UnauthorizedException
newUnauthorizedException'  customize = (UnauthorizedException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The document encoding is not supported.</p>
newtype UnsupportedDocumentEncodingException = UnsupportedDocumentEncodingException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeUnsupportedDocumentEncodingException :: Newtype UnsupportedDocumentEncodingException _
derive instance repGenericUnsupportedDocumentEncodingException :: Generic UnsupportedDocumentEncodingException _
instance showUnsupportedDocumentEncodingException :: Show UnsupportedDocumentEncodingException where
  show = genericShow
instance decodeUnsupportedDocumentEncodingException :: Decode UnsupportedDocumentEncodingException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnsupportedDocumentEncodingException :: Encode UnsupportedDocumentEncodingException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnsupportedDocumentEncodingException from required parameters
newUnsupportedDocumentEncodingException :: UnsupportedDocumentEncodingException
newUnsupportedDocumentEncodingException  = UnsupportedDocumentEncodingException { "message": (NullOrUndefined Nothing) }

-- | Constructs UnsupportedDocumentEncodingException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedDocumentEncodingException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> UnsupportedDocumentEncodingException
newUnsupportedDocumentEncodingException'  customize = (UnsupportedDocumentEncodingException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The input for the UpdateThingShadow operation.</p>
newtype UpdateThingShadowRequest = UpdateThingShadowRequest 
  { "thingName" :: (ThingName)
  , "payload" :: (JsonDocument)
  }
derive instance newtypeUpdateThingShadowRequest :: Newtype UpdateThingShadowRequest _
derive instance repGenericUpdateThingShadowRequest :: Generic UpdateThingShadowRequest _
instance showUpdateThingShadowRequest :: Show UpdateThingShadowRequest where
  show = genericShow
instance decodeUpdateThingShadowRequest :: Decode UpdateThingShadowRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateThingShadowRequest :: Encode UpdateThingShadowRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateThingShadowRequest from required parameters
newUpdateThingShadowRequest :: JsonDocument -> ThingName -> UpdateThingShadowRequest
newUpdateThingShadowRequest _payload _thingName = UpdateThingShadowRequest { "payload": _payload, "thingName": _thingName }

-- | Constructs UpdateThingShadowRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateThingShadowRequest' :: JsonDocument -> ThingName -> ( { "thingName" :: (ThingName) , "payload" :: (JsonDocument) } -> {"thingName" :: (ThingName) , "payload" :: (JsonDocument) } ) -> UpdateThingShadowRequest
newUpdateThingShadowRequest' _payload _thingName customize = (UpdateThingShadowRequest <<< customize) { "payload": _payload, "thingName": _thingName }



-- | <p>The output from the UpdateThingShadow operation.</p>
newtype UpdateThingShadowResponse = UpdateThingShadowResponse 
  { "payload" :: NullOrUndefined.NullOrUndefined (JsonDocument)
  }
derive instance newtypeUpdateThingShadowResponse :: Newtype UpdateThingShadowResponse _
derive instance repGenericUpdateThingShadowResponse :: Generic UpdateThingShadowResponse _
instance showUpdateThingShadowResponse :: Show UpdateThingShadowResponse where
  show = genericShow
instance decodeUpdateThingShadowResponse :: Decode UpdateThingShadowResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateThingShadowResponse :: Encode UpdateThingShadowResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateThingShadowResponse from required parameters
newUpdateThingShadowResponse :: UpdateThingShadowResponse
newUpdateThingShadowResponse  = UpdateThingShadowResponse { "payload": (NullOrUndefined Nothing) }

-- | Constructs UpdateThingShadowResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateThingShadowResponse' :: ( { "payload" :: NullOrUndefined.NullOrUndefined (JsonDocument) } -> {"payload" :: NullOrUndefined.NullOrUndefined (JsonDocument) } ) -> UpdateThingShadowResponse
newUpdateThingShadowResponse'  customize = (UpdateThingShadowResponse <<< customize) { "payload": (NullOrUndefined Nothing) }



newtype ErrorMessage' = ErrorMessage' String
derive instance newtypeErrorMessage' :: Newtype ErrorMessage' _
derive instance repGenericErrorMessage' :: Generic ErrorMessage' _
instance showErrorMessage' :: Show ErrorMessage' where
  show = genericShow
instance decodeErrorMessage' :: Decode ErrorMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage' :: Encode ErrorMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

