//
//  TempFile.swift
//  iOScodingchallenge
//
//  Created by siddharth bhalla on 4/1/18.
//  Copyright © 2018 sb. All rights reserved.
//

import UIKit
import GooglePlaces

//class ViewController: UIViewController {
//
//    var textField: UITextField?
//    var resultText: UITextView?
//    var fetcher: GMSAutocompleteFetcher?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.backgroundColor = .white
//        edgesForExtendedLayout = []
//
//        // Set bounds to inner-west Sydney Australia.
//        let neBoundsCorner = CLLocationCoordinate2D(latitude: -33.843366,
//                                                    longitude: 151.134002)
//        let swBoundsCorner = CLLocationCoordinate2D(latitude: -33.875725,
//                                                    longitude: 151.200349)
//        let bounds = GMSCoordinateBounds(coordinate: neBoundsCorner,
//                                         coordinate: swBoundsCorner)
//
//        // Set up the autocomplete filter.
//        let filter = GMSAutocompleteFilter()
//        filter.type = .establishment
//
//        // Create the fetcher.
//        fetcher = GMSAutocompleteFetcher(bounds: bounds, filter: filter)
//        fetcher?.delegate = self
//
//        textField = UITextField(frame: CGRect(x: 5.0, y: 10.0,
//                                              width: view.bounds.size.width - 5.0,
//                                              height: 44.0))
//        textField?.autoresizingMask = .flexibleWidth
//        textField?.addTarget(self, action: #selector(textFieldDidChange(textField:)),
//                             for: .editingChanged)
//
//        resultText = UITextView(frame: CGRect(x: 0, y: 45.0,
//                                              width: view.bounds.size.width,
//                                              height: view.bounds.size.height - 45.0))
//        resultText?.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
//        resultText?.text = "No Results"
//        resultText?.isEditable = false
//
//        view.addSubview(textField!)
//        view.addSubview(resultText!)
//    }
//
//    func textFieldDidChange(textField: UITextField) {
//        fetcher?.sourceTextHasChanged(textField.text!)
//    }
//
//}
//
//extension ViewController: GMSAutocompleteFetcherDelegate {
//    func didAutocomplete(with predictions: [GMSAutocompletePrediction]) {
//        let resultsStr = NSMutableString()
//        for prediction in predictions {
//            resultsStr.appendFormat("%@\n", prediction.attributedPrimaryText)
//        }
//
//        resultText?.text = resultsStr as String
//    }
//
//    func didFailAutocompleteWithError(_ error: Error) {
//        resultText?.text = error.localizedDescription
//    }
//
//}

