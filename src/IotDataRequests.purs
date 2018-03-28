
module AWS.IotData.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.IotData as IotData
import AWS.IotData.Types as IotDataTypes


-- | <p>Deletes the thing shadow for the specified thing.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html">DeleteThingShadow</a> in the <i>AWS IoT Developer Guide</i>.</p>
deleteThingShadow :: forall eff. IotData.Service -> IotDataTypes.DeleteThingShadowRequest -> Aff (exception :: EXCEPTION | eff) IotDataTypes.DeleteThingShadowResponse
deleteThingShadow (IotData.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteThingShadow"


-- | <p>Gets the thing shadow for the specified thing.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html">GetThingShadow</a> in the <i>AWS IoT Developer Guide</i>.</p>
getThingShadow :: forall eff. IotData.Service -> IotDataTypes.GetThingShadowRequest -> Aff (exception :: EXCEPTION | eff) IotDataTypes.GetThingShadowResponse
getThingShadow (IotData.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getThingShadow"


-- | <p>Publishes state information.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/protocols.html#http">HTTP Protocol</a> in the <i>AWS IoT Developer Guide</i>.</p>
publish :: forall eff. IotData.Service -> IotDataTypes.PublishRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
publish (IotData.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "publish"


-- | <p>Updates the thing shadow for the specified thing.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html">UpdateThingShadow</a> in the <i>AWS IoT Developer Guide</i>.</p>
updateThingShadow :: forall eff. IotData.Service -> IotDataTypes.UpdateThingShadowRequest -> Aff (exception :: EXCEPTION | eff) IotDataTypes.UpdateThingShadowResponse
updateThingShadow (IotData.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateThingShadow"
