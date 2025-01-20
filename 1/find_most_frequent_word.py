from collections import Counter
import re

def find_most_frequent_word(filename):
    # Read the file
    with open(filename, 'r') as file:
        text = file.read().lower()  # Convert to lowercase
        
    # Use regex to split into words and remove punctuation
    words = re.findall(r'\w+', text)
    
    # Count word frequencies
    word_counts = Counter(words)
    
    # Find the most common word and its count
    most_common_word = word_counts.most_common(1)[0]
    
    # Print result in the format: count word
    print(f"{most_common_word[1]} {most_common_word[0]}")

if __name__ == "__main__":
    find_most_frequent_word("words.txt")
