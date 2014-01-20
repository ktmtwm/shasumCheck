var fs = require('fs');
var url = "http://registry.npmjs.org/fis";
var nodegrass = require('nodegrass');


// var exports = module.exports = function(){
	var versions_npm = [];
	nodegrass.get(url,function(data,status,headers){

		while( data.search(/"dist":{/) >0 ){
			data = data.slice( data.search(/"dist":{/) );
			var p = data.search(/.tgz"}/);
			var v = data.slice(p-5, p);
			var shasum_str = data.slice( data.search(/"shasum":"/)+10 );
			var shasum = shasum_str.slice( 0,  shasum_str.search(/"/) );

			var d = {};
			d[v] = shasum;
			versions_npm.push(d);

			data = data.slice(p+2);
		}
	},'gbk').on('error', function(e) {
	    console.log("Got error: " + e.message);
	});
	
	var versions = fs.readFileSync(+'/shasum.json','utf8');
	versions = JSON.parse(versions);
	for (var v in versions)
	{
		versions[v].shasum;
	}
// };

// <script>
//     function check(){
//         console.log("--------"+<?php $t?>);
//         // var versions_npm = [];
//         // nodegrass.get(url,function(data,status,headers){

//         //     while( data.search(/"dist":{/) >0 ){
//         //         data = data.slice( data.search(/"dist":{/) );
//         //         var p = data.search(/.tgz"}/);
//         //         var v = data.slice(p-5, p);
//         //         var shasum_str = data.slice( data.search(/"shasum":"/)+10 );
//         //         var shasum = shasum_str.slice( 0,  shasum_str.search(/"/) );

//         //         var d = {};
//         //         d[v] = shasum;
//         //         versions_npm.push(d);

//         //         data = data.slice(p+2);
//         //     }
//         // },'gbk').on('error', function(e) {
//         //     console.log("Got error: " + e.message);
//         // });

//         // return versions_npm;
//     }
//  </script>


 // read ../../../shasum.json to versions
 // total_local = 0;
 // total_npm = 0;
 // for version in versions 
   // if version.shasum!=versions_npm[version.key].shasum
 		// ^^^^-->output version.key?
   // total += version.shasum
 	// total_npm += versions_npm[version.key].shasum
 // if total_local != total_npm