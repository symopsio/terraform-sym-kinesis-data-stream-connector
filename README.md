# kinesis-data-stream-connector

The `kinesis-data-stream-connector` module provisions a single Kinesis Data Stream which the Sym Runtime has permission to write log data to.

To provide the Sym Runtime with access to the Kinesis Data Stream created in this `Connector`, use the `aws/kinesis-data-stream` addon in the `runtime-connector` module.
