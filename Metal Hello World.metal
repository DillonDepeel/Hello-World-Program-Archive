let device = MTLCreateSystemDefaultDevice()!
let commandQueue = device.newCommandQueue()
let defaultLibrary = device.newDefaultLibrary()!
let commandBuffer = commandQueue.commandBuffer()
let computeCommandEncoder = commandBuffer.computeCommandEncoder()

let program = defaultLibrary.newFunctionWithName("Hello World")

do
{
    let computePipelineFilter = try device.newComputePipelineStateWithFunction(program!)
    computeCommandEncoder.setComputePipelineState(computePipelineFilter)
    var resultdata = [Int](count: 1, repeatedValue: 0)
    let outVectorBuffer = device.newBufferWithBytes(&resultdata, length: sizeofValue(1), options: MTLResourceOptions.CPUCacheModeDefaultCache)
    computeCommandEncoder.setBuffer(outVectorBuffer, offset: 0, atIndex: 0)


    let threadsPerGroup = MTLSize(width:1,height:1,depth:1)
    let numThreadgroups = MTLSize(width:1, height:1, depth:1)
    computeCommandEncoder.dispatchThreadgroups(numThreadgroups, threadsPerThreadgroup: threadsPerGroup)


    computeCommandEncoder.endEncoding()

    commandBuffer.addCompletedHandler {commandBuffer in
        let data = NSData(bytes: outVectorBuffer.contents(), length: sizeof(NSInteger))
        var out: NSInteger = 0
        data.getBytes(&out, length: sizeof(NSInteger))
        print("data: \(out)")
    }

    commandBuffer.commit()

}
catch
{
    fatalError("newComputePipelineStateWithFunction failed ")
}
