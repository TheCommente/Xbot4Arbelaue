import logging
from logging.handlers import RotatingFileHandler
from services.twitter_service import create_driver, login_to_twitter, tweet_with_image
from services.tweet_manager import get_unposted_tweet, mark_as_posted, reset_all_tweets
from config.database import connect_to_db

# Configure rotating log handler
handler = RotatingFileHandler(
    'bot.log', maxBytes=5*1024*1024, backupCount=3
)  # 5 MB per file, keep up to 3 backup files
logging.basicConfig(
    handlers=[handler],
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
)

def main():
    logging.info("Starting the Twitter bot...")

    # Connect to the database
    connection = connect_to_db()
    driver = create_driver()

    try:
        # Log in to Twitter
        login_to_twitter(driver)

        # Keep posting tweets until all have been posted
        while True:
            tweet = get_unposted_tweet(connection)
            if tweet:
                logging.info(f"Posting tweet: {tweet['content']}")
                tweet_with_image(driver, tweet["content"], tweet.get("image_path"))
                mark_as_posted(connection, tweet["id"])
                logging.info(f"Tweet posted successfully: {tweet['content']}")
            else:
                logging.info("No unposted tweets found. Resetting all tweets to unposted.")
                reset_all_tweets(connection)
                continue  # Restart the loop to start posting tweets again
    except Exception as e:
        logging.error(f"An error occurred: {e}")
    finally:
        connection.close()
        driver.quit()
        logging.info("Shutting down the Twitter bot.")

if __name__ == "__main__":
    main()
