import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UploadFile extends GetxController {
  uploadFileDropBox(path) async {
    /*final msg = jsonEncode({
      "path": "$path",
      "property_groups": [
        {
          "template_id": "ptid:1a5n2i6d3OYEAAAAAAAAAYa",
          "fields": [
            {"name": "Security Policy", "value": "Confidential"}
          ]
        }
      ]
    });*/

    Map<String, String> arguments = {
      'path':'/images/newimages.jpg'
    };
    Map<String, String> headers = {
      "Authorization": "Bearer sl.BAV5j1NsaI6jsDtbAuJzqTzDHfvhxybiGJX0fe2B2qu2psSuuO6qYjm3TCPZ_2ZErEo-JVBtdDOjEEvpqXAL7rGyXVHl_vkeX7nCBiRW6Jq4cK20zjIt09lJg_SXf0aprWmemK07",
      "Content-Type": "application/octet-stream",
      "Dropbox-API-Arg": arguments.toString()
    };

   /* Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer sl.BAV5j1NsaI6jsDtbAuJzqTzDHfvhxybiGJX0fe2B2qu2psSuuO6qYjm3TCPZ_2ZErEo-JVBtdDOjEEvpqXAL7rGyXVHl_vkeX7nCBiRW6Jq4cK20zjIt09lJg_SXf0aprWmemK07'};*/
    // final msg = jsonEncode({
    //   "shared_folder_id": "84528192421",
    //   "members": [
    //     {
    //       "member": {
    //         ".tag": "email",
    //         "email": "justin@example.com"
    //       },
    //       "access_level": "editor"
    //     },
    //     {
    //       "member": {
    //         ".tag": "dropbox_id",
    //         "dropbox_id": "dbid:AAEufNrMPSPe0dMQijRP0N_aZtBJRm26W4Q"
    //       },
    //       "access_level": "viewer"
    //     }
    //   ],
    //   "quiet": false,
    //   "custom_message": "Documentation for launch day"
    // });

    const url = "https://content.dropboxapi.com/2/files/upload";
    final response =
        await http.post(Uri.parse(url), headers: headers, body: '/data/user/0/com.example.syntaxive.flutter_dropbox/cache/file_picker/1642452458063.png');
    
    //final resp = await http.post(Uri.parse(url))

    print(response.statusCode);
    log("response ${response.body}");
  }
}
