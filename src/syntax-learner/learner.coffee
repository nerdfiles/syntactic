# treeset
console = require('ui/console')
corpus = require('corpus')

class Learner

  # If a distance between two clusters is below this, use their union
  IDENTITY_EPSILON # double
  # The algorithm halts when this portion has been clustered
  HALTING_RATIO = '0.9f' # float
  # a word is "rare" if it appears less than this many times in the corpus
  RARE_WORD_THRESHOLD # int
  NUMBER_OF_CLUSTERS # int

  constructor: () ->
    # Should be private
    @learnerID = 0
    @corpus
    @Map clusters
    @Cluster ground_cluster
    @Set short updated_clusters
    @num_of_rare_words # int
    @parents # protected
    @iteration_counter = 0
    @Recorder rec
    @Set cluster_context cluster_contexts
    Iterator int backup_iterator
    return

  learner: (clusters = null, threshold = null, epsilon = null) ->
    IDENTITY_EPSILON = epsilon <= 0 ? 0.001 : epsilon
    NUMBER_OF_CLUSTERS = clusters <= 1 ? 50 : clusters
    RARE_WORD_THRESHOLD = threshold <= 1 ? 50 : threshold
    return

  set_corpus: (corpus = null) ->
    @corpus = corpus
    clusters = new HashMap { c: cluster }
    ground_cluster = new Cluster corpus.getVocabulary(), @, true
    updated_clusters = new HashSet()
    clusters.push (-1), ground_cluster
    cluster_contexts = new TreeSet(cluster_context)
    return

module.exports = Learner
