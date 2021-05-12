package com.github.javarushcommunity.jrtb.service;

import java.util.List;

/**
 * Service for sending messages via telegram-bot.
 */
public interface SendBotMessageService {

    /**
     * Send message via telegram bot.
     *
     * @param chatId provided chatId in which messages would be sent.
     * @param messages provided list of messages to be sent.
     */
    void sendMessage(String chatId, List<String> messages);
    void sendMessage(String chatId, String message);
}
