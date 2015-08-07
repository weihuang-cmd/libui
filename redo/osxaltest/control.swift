// 31 july 2015
import Cocoa

// TODO stretchy across both dimensions
// for a vertical box, the horizontal width should be variable
class tAutoLayoutParams {
	var view: NSView
	var attachLeft: Bool
	var attachTop: Bool
	var attachRight: Bool
	var attachBottom: Bool
	var nonStretchyWidthPredicate: String
	var nonStretchyHeightPredicate: String
}

protocol tControl {
	mutating func tSetParent(p: tControl, addToView: NSView)
	mutating func tFillAutoLayout(p: tAutoLayoutParams)
	mutating func tRelayout()
}

func tAutoLayoutKey(n: UIntMax) -> String {
	return NSString(format: "view%d", n)
}
