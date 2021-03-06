## Module AWS.IotData.Types

#### `options`

``` purescript
options :: Options
```

#### `ConflictException`

``` purescript
newtype ConflictException
  = ConflictException { message :: Maybe (ErrorMessage) }
```

<p>The specified version does not match the version of the document.</p>

##### Instances
``` purescript
Newtype ConflictException _
Generic ConflictException _
Show ConflictException
Decode ConflictException
Encode ConflictException
```

#### `newConflictException`

``` purescript
newConflictException :: ConflictException
```

Constructs ConflictException from required parameters

#### `newConflictException'`

``` purescript
newConflictException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> ConflictException
```

Constructs ConflictException's fields from required parameters

#### `DeleteThingShadowRequest`

``` purescript
newtype DeleteThingShadowRequest
  = DeleteThingShadowRequest { thingName :: ThingName }
```

<p>The input for the DeleteThingShadow operation.</p>

##### Instances
``` purescript
Newtype DeleteThingShadowRequest _
Generic DeleteThingShadowRequest _
Show DeleteThingShadowRequest
Decode DeleteThingShadowRequest
Encode DeleteThingShadowRequest
```

#### `newDeleteThingShadowRequest`

``` purescript
newDeleteThingShadowRequest :: ThingName -> DeleteThingShadowRequest
```

Constructs DeleteThingShadowRequest from required parameters

#### `newDeleteThingShadowRequest'`

``` purescript
newDeleteThingShadowRequest' :: ThingName -> ({ thingName :: ThingName } -> { thingName :: ThingName }) -> DeleteThingShadowRequest
```

Constructs DeleteThingShadowRequest's fields from required parameters

#### `DeleteThingShadowResponse`

``` purescript
newtype DeleteThingShadowResponse
  = DeleteThingShadowResponse { payload :: JsonDocument }
```

<p>The output from the DeleteThingShadow operation.</p>

##### Instances
``` purescript
Newtype DeleteThingShadowResponse _
Generic DeleteThingShadowResponse _
Show DeleteThingShadowResponse
Decode DeleteThingShadowResponse
Encode DeleteThingShadowResponse
```

#### `newDeleteThingShadowResponse`

``` purescript
newDeleteThingShadowResponse :: JsonDocument -> DeleteThingShadowResponse
```

Constructs DeleteThingShadowResponse from required parameters

#### `newDeleteThingShadowResponse'`

``` purescript
newDeleteThingShadowResponse' :: JsonDocument -> ({ payload :: JsonDocument } -> { payload :: JsonDocument }) -> DeleteThingShadowResponse
```

Constructs DeleteThingShadowResponse's fields from required parameters

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `GetThingShadowRequest`

``` purescript
newtype GetThingShadowRequest
  = GetThingShadowRequest { thingName :: ThingName }
```

<p>The input for the GetThingShadow operation.</p>

##### Instances
``` purescript
Newtype GetThingShadowRequest _
Generic GetThingShadowRequest _
Show GetThingShadowRequest
Decode GetThingShadowRequest
Encode GetThingShadowRequest
```

#### `newGetThingShadowRequest`

``` purescript
newGetThingShadowRequest :: ThingName -> GetThingShadowRequest
```

Constructs GetThingShadowRequest from required parameters

#### `newGetThingShadowRequest'`

``` purescript
newGetThingShadowRequest' :: ThingName -> ({ thingName :: ThingName } -> { thingName :: ThingName }) -> GetThingShadowRequest
```

Constructs GetThingShadowRequest's fields from required parameters

#### `GetThingShadowResponse`

``` purescript
newtype GetThingShadowResponse
  = GetThingShadowResponse { payload :: Maybe (JsonDocument) }
```

<p>The output from the GetThingShadow operation.</p>

##### Instances
``` purescript
Newtype GetThingShadowResponse _
Generic GetThingShadowResponse _
Show GetThingShadowResponse
Decode GetThingShadowResponse
Encode GetThingShadowResponse
```

#### `newGetThingShadowResponse`

``` purescript
newGetThingShadowResponse :: GetThingShadowResponse
```

Constructs GetThingShadowResponse from required parameters

#### `newGetThingShadowResponse'`

``` purescript
newGetThingShadowResponse' :: ({ payload :: Maybe (JsonDocument) } -> { payload :: Maybe (JsonDocument) }) -> GetThingShadowResponse
```

Constructs GetThingShadowResponse's fields from required parameters

#### `InternalFailureException`

``` purescript
newtype InternalFailureException
  = InternalFailureException { message :: Maybe (ErrorMessage') }
```

<p>An unexpected error has occurred.</p>

##### Instances
``` purescript
Newtype InternalFailureException _
Generic InternalFailureException _
Show InternalFailureException
Decode InternalFailureException
Encode InternalFailureException
```

#### `newInternalFailureException`

``` purescript
newInternalFailureException :: InternalFailureException
```

Constructs InternalFailureException from required parameters

#### `newInternalFailureException'`

``` purescript
newInternalFailureException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> InternalFailureException
```

Constructs InternalFailureException's fields from required parameters

#### `InvalidRequestException`

``` purescript
newtype InvalidRequestException
  = InvalidRequestException { message :: Maybe (ErrorMessage') }
```

<p>The request is not valid.</p>

##### Instances
``` purescript
Newtype InvalidRequestException _
Generic InvalidRequestException _
Show InvalidRequestException
Decode InvalidRequestException
Encode InvalidRequestException
```

#### `newInvalidRequestException`

``` purescript
newInvalidRequestException :: InvalidRequestException
```

Constructs InvalidRequestException from required parameters

#### `newInvalidRequestException'`

``` purescript
newInvalidRequestException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> InvalidRequestException
```

Constructs InvalidRequestException's fields from required parameters

#### `JsonDocument`

``` purescript
newtype JsonDocument
  = JsonDocument String
```

##### Instances
``` purescript
Newtype JsonDocument _
Generic JsonDocument _
Show JsonDocument
Decode JsonDocument
Encode JsonDocument
```

#### `MethodNotAllowedException`

``` purescript
newtype MethodNotAllowedException
  = MethodNotAllowedException { message :: Maybe (ErrorMessage) }
```

<p>The specified combination of HTTP verb and URI is not supported.</p>

##### Instances
``` purescript
Newtype MethodNotAllowedException _
Generic MethodNotAllowedException _
Show MethodNotAllowedException
Decode MethodNotAllowedException
Encode MethodNotAllowedException
```

#### `newMethodNotAllowedException`

``` purescript
newMethodNotAllowedException :: MethodNotAllowedException
```

Constructs MethodNotAllowedException from required parameters

#### `newMethodNotAllowedException'`

``` purescript
newMethodNotAllowedException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> MethodNotAllowedException
```

Constructs MethodNotAllowedException's fields from required parameters

#### `Payload`

``` purescript
newtype Payload
  = Payload String
```

##### Instances
``` purescript
Newtype Payload _
Generic Payload _
Show Payload
Decode Payload
Encode Payload
```

#### `PublishRequest`

``` purescript
newtype PublishRequest
  = PublishRequest { topic :: Topic, qos :: Maybe (Qos), payload :: Maybe (Payload) }
```

<p>The input for the Publish operation.</p>

##### Instances
``` purescript
Newtype PublishRequest _
Generic PublishRequest _
Show PublishRequest
Decode PublishRequest
Encode PublishRequest
```

#### `newPublishRequest`

``` purescript
newPublishRequest :: Topic -> PublishRequest
```

Constructs PublishRequest from required parameters

#### `newPublishRequest'`

``` purescript
newPublishRequest' :: Topic -> ({ topic :: Topic, qos :: Maybe (Qos), payload :: Maybe (Payload) } -> { topic :: Topic, qos :: Maybe (Qos), payload :: Maybe (Payload) }) -> PublishRequest
```

Constructs PublishRequest's fields from required parameters

#### `Qos`

``` purescript
newtype Qos
  = Qos Int
```

##### Instances
``` purescript
Newtype Qos _
Generic Qos _
Show Qos
Decode Qos
Encode Qos
```

#### `RequestEntityTooLargeException`

``` purescript
newtype RequestEntityTooLargeException
  = RequestEntityTooLargeException { message :: Maybe (ErrorMessage) }
```

<p>The payload exceeds the maximum size allowed.</p>

##### Instances
``` purescript
Newtype RequestEntityTooLargeException _
Generic RequestEntityTooLargeException _
Show RequestEntityTooLargeException
Decode RequestEntityTooLargeException
Encode RequestEntityTooLargeException
```

#### `newRequestEntityTooLargeException`

``` purescript
newRequestEntityTooLargeException :: RequestEntityTooLargeException
```

Constructs RequestEntityTooLargeException from required parameters

#### `newRequestEntityTooLargeException'`

``` purescript
newRequestEntityTooLargeException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> RequestEntityTooLargeException
```

Constructs RequestEntityTooLargeException's fields from required parameters

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: Maybe (ErrorMessage') }
```

<p>The specified resource does not exist.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `ServiceUnavailableException`

``` purescript
newtype ServiceUnavailableException
  = ServiceUnavailableException { message :: Maybe (ErrorMessage') }
```

<p>The service is temporarily unavailable.</p>

##### Instances
``` purescript
Newtype ServiceUnavailableException _
Generic ServiceUnavailableException _
Show ServiceUnavailableException
Decode ServiceUnavailableException
Encode ServiceUnavailableException
```

#### `newServiceUnavailableException`

``` purescript
newServiceUnavailableException :: ServiceUnavailableException
```

Constructs ServiceUnavailableException from required parameters

#### `newServiceUnavailableException'`

``` purescript
newServiceUnavailableException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> ServiceUnavailableException
```

Constructs ServiceUnavailableException's fields from required parameters

#### `ThingName`

``` purescript
newtype ThingName
  = ThingName String
```

##### Instances
``` purescript
Newtype ThingName _
Generic ThingName _
Show ThingName
Decode ThingName
Encode ThingName
```

#### `ThrottlingException`

``` purescript
newtype ThrottlingException
  = ThrottlingException { message :: Maybe (ErrorMessage') }
```

<p>The rate exceeds the limit.</p>

##### Instances
``` purescript
Newtype ThrottlingException _
Generic ThrottlingException _
Show ThrottlingException
Decode ThrottlingException
Encode ThrottlingException
```

#### `newThrottlingException`

``` purescript
newThrottlingException :: ThrottlingException
```

Constructs ThrottlingException from required parameters

#### `newThrottlingException'`

``` purescript
newThrottlingException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> ThrottlingException
```

Constructs ThrottlingException's fields from required parameters

#### `Topic`

``` purescript
newtype Topic
  = Topic String
```

##### Instances
``` purescript
Newtype Topic _
Generic Topic _
Show Topic
Decode Topic
Encode Topic
```

#### `UnauthorizedException`

``` purescript
newtype UnauthorizedException
  = UnauthorizedException { message :: Maybe (ErrorMessage') }
```

<p>You are not authorized to perform this operation.</p>

##### Instances
``` purescript
Newtype UnauthorizedException _
Generic UnauthorizedException _
Show UnauthorizedException
Decode UnauthorizedException
Encode UnauthorizedException
```

#### `newUnauthorizedException`

``` purescript
newUnauthorizedException :: UnauthorizedException
```

Constructs UnauthorizedException from required parameters

#### `newUnauthorizedException'`

``` purescript
newUnauthorizedException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> UnauthorizedException
```

Constructs UnauthorizedException's fields from required parameters

#### `UnsupportedDocumentEncodingException`

``` purescript
newtype UnsupportedDocumentEncodingException
  = UnsupportedDocumentEncodingException { message :: Maybe (ErrorMessage') }
```

<p>The document encoding is not supported.</p>

##### Instances
``` purescript
Newtype UnsupportedDocumentEncodingException _
Generic UnsupportedDocumentEncodingException _
Show UnsupportedDocumentEncodingException
Decode UnsupportedDocumentEncodingException
Encode UnsupportedDocumentEncodingException
```

#### `newUnsupportedDocumentEncodingException`

``` purescript
newUnsupportedDocumentEncodingException :: UnsupportedDocumentEncodingException
```

Constructs UnsupportedDocumentEncodingException from required parameters

#### `newUnsupportedDocumentEncodingException'`

``` purescript
newUnsupportedDocumentEncodingException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> UnsupportedDocumentEncodingException
```

Constructs UnsupportedDocumentEncodingException's fields from required parameters

#### `UpdateThingShadowRequest`

``` purescript
newtype UpdateThingShadowRequest
  = UpdateThingShadowRequest { thingName :: ThingName, payload :: JsonDocument }
```

<p>The input for the UpdateThingShadow operation.</p>

##### Instances
``` purescript
Newtype UpdateThingShadowRequest _
Generic UpdateThingShadowRequest _
Show UpdateThingShadowRequest
Decode UpdateThingShadowRequest
Encode UpdateThingShadowRequest
```

#### `newUpdateThingShadowRequest`

``` purescript
newUpdateThingShadowRequest :: JsonDocument -> ThingName -> UpdateThingShadowRequest
```

Constructs UpdateThingShadowRequest from required parameters

#### `newUpdateThingShadowRequest'`

``` purescript
newUpdateThingShadowRequest' :: JsonDocument -> ThingName -> ({ thingName :: ThingName, payload :: JsonDocument } -> { thingName :: ThingName, payload :: JsonDocument }) -> UpdateThingShadowRequest
```

Constructs UpdateThingShadowRequest's fields from required parameters

#### `UpdateThingShadowResponse`

``` purescript
newtype UpdateThingShadowResponse
  = UpdateThingShadowResponse { payload :: Maybe (JsonDocument) }
```

<p>The output from the UpdateThingShadow operation.</p>

##### Instances
``` purescript
Newtype UpdateThingShadowResponse _
Generic UpdateThingShadowResponse _
Show UpdateThingShadowResponse
Decode UpdateThingShadowResponse
Encode UpdateThingShadowResponse
```

#### `newUpdateThingShadowResponse`

``` purescript
newUpdateThingShadowResponse :: UpdateThingShadowResponse
```

Constructs UpdateThingShadowResponse from required parameters

#### `newUpdateThingShadowResponse'`

``` purescript
newUpdateThingShadowResponse' :: ({ payload :: Maybe (JsonDocument) } -> { payload :: Maybe (JsonDocument) }) -> UpdateThingShadowResponse
```

Constructs UpdateThingShadowResponse's fields from required parameters

#### `ErrorMessage'`

``` purescript
newtype ErrorMessage'
  = ErrorMessage' String
```

##### Instances
``` purescript
Newtype ErrorMessage' _
Generic ErrorMessage' _
Show ErrorMessage'
Decode ErrorMessage'
Encode ErrorMessage'
```


