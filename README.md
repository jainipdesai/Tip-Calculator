# Tip-Calculator
My first repository on GitHub

# Pre-work - *Tip calculator application for iOS*

Submitted by: **Jainip Desai**

Time spent: **16** hours spent in total

## User Stories

The following **required** functionality is complete:

* [Y] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [Y] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [Y] Added changing Tip color based on Tip Percentage!

## Video Walkthrough 

Here's a walkthrough of implemented user stories:
 
<img src='http://imgur.com/WdHAPAC' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** I just started leaning the iOS development platform. So far, I have enjoyed it and I got amazed with its capability to create complicated tasks with so much ease. In simple terms, I can say Outlet is used to change some property of control. For example, If user wants to change text color or text size of a label.
Where as Action is used when you want to detect a trigger. For example, When user presses a button, or user wants to do some calculation.

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** A strong reference prevents the class instance it points to from being deallocated. A weak reference is a reference that does not keep a strong hold on the instance it refers to, and so does not stop ARC from disposing of the referenced instance.A strong reference cycle can also occur if you assign a closure to a property of a class instance, and the body of that closure captures the instance.
In a simple word, when the instance’s property holds a strong reference to its closure and the closure refers to self within its body that means it holds a strong reference back to the class instance. A strong reference cycle is created for the closure.

## License

    Copyright [2017] [Jainip Desai]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
