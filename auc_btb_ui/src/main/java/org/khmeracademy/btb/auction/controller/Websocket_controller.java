package org.khmeracademy.btb.auction.controller;



import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class Websocket_controller {
    @MessageMapping("/bidding")
    @SendTo("/topic/auction")
    public String StartBidding() throws Exception {
        return "";
    }
}
