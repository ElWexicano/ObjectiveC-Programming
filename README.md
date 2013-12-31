ObjectiveC-Programming
======================

This repository contains examples that I completed when reading the _Objective-C Programming The Big Nerd Ranch Guide_.

The folder __AGoodStart__ represents the Part 1 of the book.

The folder __Turkey__ represents _Chapter 3 Variables and Types_ in the book.

The folder __TwoFloats__ contains the challenge for _Chapter 3 Variables and Types_ in the book.

The folder __ClassCertificates__ represents _Chapter 5 Functions_ in the book.

The folder __BeerSong__ represents _Chapter 5 Functions_ in the book.

The folder __Degrees__ represents _Chapter 5 Functions_ in the book.

The folder __Triangle__ contains the challenge _Chapter 5 Functions_ in the book.

I will update the README to match the correct chapters as soon as I get the time. I'm very lazy about this.

The folder __Callbacks__ represents _Chapter 24 Callbacks_ in the book.

Some notes about that chapter include the following:

For Objective-C programmers there are three forms of callbacks;

_Target-Action_ . Objects that do just one thing use target-action. Objects do not own their targets so if you should zero the target pointer in its dealloc method:

```
- (void)dealloc
{
	[buttonThatKeepsSendingMeMessages setTarget:nil];
}
```
_Helper-Objects_ . Objects that have more complicated lives use helper objects and the most common type of helper is the delegate.

```
- (void)dealloc
{
	[windowThatBossesMeAround setDelegate:nil];
	[tableViewThatBegsForData setDataSource:nil];
}
```

_Notifications_ . Objects that might need to trigger callbacks in several other object use notifications.

```
- (void)dealloc
{
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}
```

