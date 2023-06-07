# Extensions

SPM with a collection of extension for general use.


## Usage

import MyExtensionPackage



## Extensions

### String
- trim()
- condenseWhitespace()

### UIApplication
- getPresentedViewController()

### UIColor
- init?(hex: String)

### UIView
- anchor(   
    top: NSLayoutYAxisAnchor? = nil, 
    left: NSLayoutXAxisAnchor? = nil, 
    bottom: NSLayoutYAxisAnchor? = nil, 
    right: NSLayoutXAxisAnchor? = nil,
    paddingTop: CGFloat? = 0, 
    paddingLeft: CGFloat? = 0, 
    paddingBottom: CGFloat? = 0, 
    paddingRight: CGFloat? = 0,
    width: CGFloat? = nil, 
    height: CGFloat? = nil 
)

- applyGradient(isVertical: Bool, colorArray: [UIColor])
- showBorder(UIColor)

### UIViewController
- showSpinner()
- removeSpinner()
