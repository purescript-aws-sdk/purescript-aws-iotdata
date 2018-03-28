## Module AWS.IotData.Requests

#### `deleteThingShadow`

``` purescript
deleteThingShadow :: forall eff. Service -> DeleteThingShadowRequest -> Aff (exception :: EXCEPTION | eff) DeleteThingShadowResponse
```

<p>Deletes the thing shadow for the specified thing.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html">DeleteThingShadow</a> in the <i>AWS IoT Developer Guide</i>.</p>

#### `getThingShadow`

``` purescript
getThingShadow :: forall eff. Service -> GetThingShadowRequest -> Aff (exception :: EXCEPTION | eff) GetThingShadowResponse
```

<p>Gets the thing shadow for the specified thing.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html">GetThingShadow</a> in the <i>AWS IoT Developer Guide</i>.</p>

#### `publish`

``` purescript
publish :: forall eff. Service -> PublishRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Publishes state information.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/protocols.html#http">HTTP Protocol</a> in the <i>AWS IoT Developer Guide</i>.</p>

#### `updateThingShadow`

``` purescript
updateThingShadow :: forall eff. Service -> UpdateThingShadowRequest -> Aff (exception :: EXCEPTION | eff) UpdateThingShadowResponse
```

<p>Updates the thing shadow for the specified thing.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html">UpdateThingShadow</a> in the <i>AWS IoT Developer Guide</i>.</p>


