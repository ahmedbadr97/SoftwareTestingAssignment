import 'dart:math';

import 'package:test/test.dart';
import 'My_DS.dart';

void main(List<String> arguments) {


  group('Stack ', () {

    for (int i = 0; i < 10000; i++) {
      var random = Random.secure();
      var mystack = MyStack<int>();
      test('Test No ' + (i+1).toString(), () {
        int noOfValuesToPush = random.nextInt(50)+1;
        int noOfValuesToPop = random.nextInt(noOfValuesToPush);
        List<int> inputValues = List<int>(noOfValuesToPush);

        // Generating List of Inputs and Push it to the Stack
        for (int i = 0; i < noOfValuesToPush; i++) {
          int rValue = random.nextInt(100);
          inputValues[i]=rValue;
          mystack.push(rValue);
        }
        // The Expected Output
        var expectedOutput = List<int>(noOfValuesToPop);
        var output=List<int>(noOfValuesToPop);
        for (int i = 0; i < noOfValuesToPop; i++) {
          output[i]=mystack.pop();
          expectedOutput[i]=(inputValues[(noOfValuesToPush-i-1)]);
        }

        expect(output, expectedOutput);
      });
    }

  });

  group('Queue ', ()
  {
    for (int i = 0; i < 10000; i++) {
      var random = Random.secure();
      var myqueue = MyQueue<int>();
      test('Test No ' + i.toString(), () {
        int noOfValuesToEnqueue = random.nextInt(50) + 1;
        int noOfValuesToDequeue = random.nextInt(noOfValuesToEnqueue);
        List<int> inputValues = List<int>(noOfValuesToEnqueue);

        // Generating List of Inputs and Push it to the Queue
        for (int i = 0; i < noOfValuesToEnqueue; i++) {
          int rValue = random.nextInt(100);
          inputValues[i] = rValue;
          myqueue.enqueue(rValue);
        }
        // The Expected Output
        var expectedOutput = List<int>(noOfValuesToDequeue);
        var output = List<int>(noOfValuesToDequeue);
        for (int i = 0; i < noOfValuesToDequeue; i++) {
          output[i] = myqueue.dequeue();
          expectedOutput[i] = (inputValues[i]);
        }

        expect(output, expectedOutput);
      });
    }
  });
}
