//
//  ViewController.swift
//  iOScodingchallenge
//
//  Created by siddharth bhalla on 3/17/18.
//  Copyright © 2018 sb. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class ViewController: UIViewController, LocateOnTheMap,  UISearchBarDelegate, GMSAutocompleteFetcherDelegate {
    
    @IBOutlet weak var mapContainer: UIView!
    
    var mapView: GMSMapView!
    var searchResult: SearchTableVC!
    var resultsArray = [String]()
    var fetcher: GMSAutocompleteFetcher!
    var textField: UITextField?
    var resultText: UITextView?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        searchResult = SearchTableVC()
        searchResult.delegate = self
        fetcher = GMSAutocompleteFetcher()
        fetcher.delegate = self

        self.mapView = GMSMapView(frame: self.mapContainer.frame)
        self.view.addSubview(self.mapView)

    }

    @IBAction func addressSearch(_ sender: Any) {
        let searchController = UISearchController(searchResultsController: searchResult)
        searchController.searchBar.delegate = self
        self.present(searchController, animated:true, completion: nil)
    }

    func locateWithLongitude(_ lon: Double, andLatitude lat: Double, andTitle title: String) {
        DispatchQueue.main.async { () -> Void in

            let position = CLLocationCoordinate2DMake(lat, lon)
            let marker = GMSMarker(position: position)

            let camera = GMSCameraPosition.camera(withLatitude: lat, longitude: lon, zoom: 10)
            self.mapView.camera = camera

            marker.title = "Address : \(title)"
            marker.map = self.mapView

        }
    }

    public func didFailAutocompleteWithError(_ error: Error) {
//            resultText?.text = error.localizedDescription
    }

    public func didAutocomplete(with predictions: [GMSAutocompletePrediction]) {

        for prediction in predictions {

            if let prediction = prediction as GMSAutocompletePrediction!{
                self.resultsArray.append(prediction.attributedFullText.string)
            }
        }
        self.searchResult.reloadDataWithArray(self.resultsArray)
        print(resultsArray)

    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

        self.resultsArray.removeAll()
        fetcher?.sourceTextHasChanged(searchText)

    }
    
    @objc func textFieldDidChange(textField: UITextField) {
        fetcher?.sourceTextHasChanged(textField.text!)
    }

}
